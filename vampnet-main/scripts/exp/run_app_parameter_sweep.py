from __future__ import annotations

import argparse
import csv
import hashlib
import json
import math
import shutil
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any

import audiotools as at
import matplotlib
import numpy as np
import torch
from torch_pitch_shift import pitch_shift

REPO_ROOT = Path(__file__).resolve().parents[2]
if str(REPO_ROOT) not in sys.path:
    sys.path.insert(0, str(REPO_ROOT))

matplotlib.use("Agg")
import matplotlib.pyplot as plt  # noqa: E402

from vampnet import mask as pmask  # noqa: E402
from vampnet.interface import Interface  # noqa: E402


BASE_PARAMS: dict[str, Any] = {
    "seed": 20260617,
    "model_choice": "default",
    "periodic_p": 7,
    "onset_mask_width": 0,
    "beat_mask_ms": 0,
    "n_mask_codebooks": 3,
    "dropout": 0.0,
    "num_feedback_steps": 1,
    "pitch_shift_amt": 0,
    "stretch_factor": 1,
    "sampletemp": 1.0,
    "top_p": 0.0,
    "typical_filtering": True,
    "typical_mass": 0.15,
    "typical_min_tokens": 64,
    "sample_cutoff": 1.0,
    "sampling_steps": 36,
    "batch_size": 2,
}


PARAM_SPECS: list[dict[str, Any]] = [
    {"name": "periodic_prompt", "key": "periodic_p", "minimum": 0, "maximum": 13, "step": 1, "kind": "int"},
    {"name": "onset_mask_width", "key": "onset_mask_width", "minimum": 0, "maximum": 100, "step": 1, "kind": "int"},
    {"name": "beat_mask_width", "key": "beat_mask_ms", "minimum": 1, "maximum": 200, "step": 1, "kind": "int"},
    {"name": "compression_prompt", "key": "n_mask_codebooks", "minimum": 1, "maximum": 14, "step": 1, "kind": "int"},
    {"name": "mask_dropout", "key": "dropout", "minimum": 0.0, "maximum": 1.0, "step": 0.01, "kind": "float"},
    {"name": "feedback_steps", "key": "num_feedback_steps", "minimum": 1, "maximum": 8, "step": 1, "kind": "int"},
    {"name": "preset", "key": "preset", "kind": "preset"},
    {"name": "pitch_shift_amount", "key": "pitch_shift_amt", "minimum": -12, "maximum": 12, "step": 1, "kind": "int"},
    {"name": "time_stretch_factor", "key": "stretch_factor", "minimum": 0, "maximum": 8, "step": 1, "kind": "int"},
    {"name": "sampling_temperature", "key": "sampletemp", "minimum": 0.1, "maximum": 10.0, "step": 0.001, "kind": "float"},
    {"name": "top_p", "key": "top_p", "minimum": 0.0, "maximum": 1.0, "step": 0.01, "kind": "float"},
    {"name": "typical_filtering", "key": "typical_filtering", "kind": "bool"},
    {"name": "typical_mass", "key": "typical_mass", "minimum": 0.01, "maximum": 0.99, "step": 0.01, "kind": "float"},
    {"name": "typical_min_tokens", "key": "typical_min_tokens", "minimum": 1, "maximum": 256, "step": 1, "kind": "int"},
    {"name": "sample_cutoff", "key": "sample_cutoff", "minimum": 0.0, "maximum": 0.9, "step": 0.01, "kind": "float"},
    {"name": "sampling_steps", "key": "sampling_steps", "minimum": 1, "maximum": 128, "step": 1, "kind": "int"},
]


PRESETS: dict[str, dict[str, Any]] = {
    "small_variation": {
        "periodic_p": 5,
        "n_mask_codebooks": 4,
        "onset_mask_width": 0,
        "dropout": 0.0,
        "beat_mask_ms": 0,
    },
    "medium_variation": {
        "periodic_p": 7,
        "n_mask_codebooks": 4,
        "onset_mask_width": 0,
        "dropout": 0.0,
        "beat_mask_ms": 0,
    },
    "large_variation": {
        "periodic_p": 13,
        "n_mask_codebooks": 4,
        "onset_mask_width": 0,
        "dropout": 0.2,
        "beat_mask_ms": 0,
    },
}

CSV_EXCLUDED_FIELDS = {
    "copied_input_path",
    "elapsed_s",
    "input_path",
    "mask_path",
    "output_1_path",
    "output_2_path",
    "output_paths",
    "params_hash",
    "run_dir",
    "seed",
}


def slugify(value: Any) -> str:
    text = str(value).strip().lower()
    text = text.replace("-", "neg")
    out = []
    for char in text:
        if char.isalnum():
            out.append(char)
        elif char == ".":
            out.append("p")
        else:
            out.append("_")
    slug = "".join(out).strip("_")
    while "__" in slug:
        slug = slug.replace("__", "_")
    return slug or "value"


def choose_device(requested: str) -> str:
    if requested != "auto":
        return requested
    if torch.cuda.is_available():
        return "cuda"
    if torch.backends.mps.is_available():
        return "mps"
    return "cpu"


def snap_value(value: float, minimum: float, maximum: float, step: float, kind: str) -> int | float:
    snapped = minimum + round((value - minimum) / step) * step
    snapped = min(maximum, max(minimum, snapped))
    if kind == "int":
        return int(round(snapped))
    digits = max(0, int(round(-math.log10(step)))) if step < 1 else 0
    return round(float(snapped), digits)


def low_mid_high(spec: dict[str, Any]) -> list[tuple[str, Any]]:
    minimum = float(spec["minimum"])
    maximum = float(spec["maximum"])
    step = float(spec["step"])
    kind = spec["kind"]
    span = maximum - minimum
    points = [("low20", 0.2), ("mid50", 0.5), ("high80", 0.8)]
    return [
        (label, snap_value(minimum + span * fraction, minimum, maximum, step, kind))
        for label, fraction in points
    ]


def build_sweep(excluded_params: set[str] | None = None) -> list[dict[str, Any]]:
    excluded_params = excluded_params or set()
    runs: list[dict[str, Any]] = [
        {
            "sweep_param": "baseline",
            "sweep_label": "default",
            "sweep_value": "default",
            "overrides": {},
        }
    ]
    for spec in PARAM_SPECS:
        if spec["name"] in excluded_params or spec["key"] in excluded_params:
            continue
        kind = spec["kind"]
        if kind == "preset":
            for label, overrides in PRESETS.items():
                runs.append(
                    {
                        "sweep_param": spec["name"],
                        "sweep_label": label,
                        "sweep_value": label,
                        "overrides": {"preset": label, **overrides},
                    }
                )
        elif kind == "bool":
            for value in (False, True):
                runs.append(
                    {
                        "sweep_param": spec["name"],
                        "sweep_label": slugify(value),
                        "sweep_value": value,
                        "overrides": {spec["key"]: value},
                    }
                )
        else:
            for label, value in low_mid_high(spec):
                runs.append(
                    {
                        "sweep_param": spec["name"],
                        "sweep_label": label,
                        "sweep_value": value,
                        "overrides": {spec["key"]: value},
                    }
                )
    return runs


def params_hash(params: dict[str, Any]) -> str:
    encoded = json.dumps(params, sort_keys=True, separators=(",", ":")).encode("utf-8")
    return hashlib.sha1(encoded).hexdigest()[:12]


def write_audio_pair(sig: at.AudioSignal, run_dir: Path) -> list[str]:
    paths = []
    for idx in range(sig.batch_size):
        out_path = run_dir / f"output_{idx + 1}.wav"
        sig[idx].write(out_path)
        paths.append(str(out_path))
    return paths


def save_mask_image(interface: Interface, mask: torch.Tensor, path: Path) -> None:
    plt.clf()
    interface.visualize_codes(mask.detach().cpu())
    plt.title("actual mask")
    plt.savefig(path)
    plt.close("all")


def align_mask_like(mask: torch.Tensor, target: torch.Tensor) -> torch.Tensor:
    if mask.shape[1] != target.shape[1]:
        if mask.shape[1] == 1:
            mask = mask.repeat(1, target.shape[1], 1)
        else:
            mask = mask[:, : target.shape[1], :]
    if mask.shape[-1] < target.shape[-1]:
        mask = torch.nn.functional.pad(mask, (0, target.shape[-1] - mask.shape[-1]), value=1)
    elif mask.shape[-1] > target.shape[-1]:
        mask = mask[:, :, : target.shape[-1]]
    return mask.to(device=target.device, dtype=target.dtype)


def shift_signal_pitch(signal: at.AudioSignal, interval: int) -> at.AudioSignal:
    signal.samples = pitch_shift(
        signal.samples,
        shift=interval,
        sample_rate=signal.sample_rate,
    )
    return signal


def pad_code_chunk(
    codes: torch.Tensor,
    mask: torch.Tensor,
    target_length: int,
) -> tuple[torch.Tensor, torch.Tensor]:
    pad_length = target_length - codes.shape[-1]
    if pad_length <= 0:
        return codes[..., :target_length], mask[..., :target_length]

    code_padding = codes[..., -1:].expand(*codes.shape[:-1], pad_length)
    mask_padding = torch.zeros(
        *mask.shape[:-1],
        pad_length,
        dtype=mask.dtype,
        device=mask.device,
    )
    return (
        torch.cat([codes, code_padding], dim=-1),
        torch.cat([mask, mask_padding], dim=-1),
    )


def equal_power_crossfade(
    chunks: list[torch.Tensor],
    starts: list[int],
    valid_lengths: list[int],
    total_length: int,
) -> torch.Tensor:
    if not chunks:
        raise ValueError("At least one generated chunk is required.")

    first_length = min(valid_lengths[0], chunks[0].shape[-1])
    result = chunks[0][..., :first_length].clone()

    for chunk, start, valid_length in zip(chunks[1:], starts[1:], valid_lengths[1:]):
        segment = chunk[..., : min(valid_length, chunk.shape[-1])]
        if start > result.shape[-1]:
            result = torch.nn.functional.pad(result, (0, start - result.shape[-1]))

        overlap = min(max(result.shape[-1] - start, 0), segment.shape[-1])
        if overlap:
            theta = torch.linspace(
                0.0,
                math.pi / 2.0,
                overlap,
                dtype=result.dtype,
                device=result.device,
            )
            fade_out = torch.cos(theta).view(1, 1, -1)
            fade_in = torch.sin(theta).view(1, 1, -1)
            blended = (
                result[..., start : start + overlap] * fade_out
                + segment[..., :overlap] * fade_in
            )
            result = torch.cat(
                [result[..., :start], blended, segment[..., overlap:]],
                dim=-1,
            )
        else:
            result = torch.cat([result, segment], dim=-1)

    if result.shape[-1] < total_length:
        result = torch.nn.functional.pad(result, (0, total_length - result.shape[-1]))
    return result[..., :total_length]


@torch.inference_mode()
def vamp_codes(
    interface: Interface,
    codes: torch.Tensor,
    mask: torch.Tensor,
    params: dict[str, Any],
    seed: int,
) -> at.AudioSignal:
    at.util.seed(seed)
    top_p = float(params["top_p"])
    if top_p <= 0:
        top_p = None

    generated_codes = interface.vamp(
        codes,
        mask,
        batch_size=int(params.get("batch_size", 2)),
        feedback_steps=int(params["num_feedback_steps"]),
        _sampling_steps=int(params["sampling_steps"]),
        time_stretch_factor=int(params["stretch_factor"]),
        return_mask=False,
        temperature=float(params["sampletemp"]),
        typical_filtering=bool(params["typical_filtering"]),
        typical_mass=float(params["typical_mass"]),
        typical_min_tokens=int(params["typical_min_tokens"]),
        top_p=top_p,
        seed=seed,
        sample_cutoff=float(params["sample_cutoff"]),
    )
    return interface.decode(generated_codes).cpu()


@torch.inference_mode()
def generate_pair(
    interface: Interface,
    input_path: Path,
    params: dict[str, Any],
    device: str,
    chunk_seconds: float | None = None,
    crossfade_seconds: float = 0.0,
) -> tuple[at.AudioSignal, torch.Tensor, dict[str, Any]]:
    interface.to(device)
    seed = int(params["seed"])
    at.util.seed(seed)

    sig = at.AudioSignal(str(input_path)).to_mono()
    loudness = sig.loudness()
    sig = interface._preprocess(sig)

    pitch_shift_amt = int(params["pitch_shift_amt"])
    if pitch_shift_amt != 0:
        sig = shift_signal_pitch(sig, pitch_shift_amt)

    codes = interface.encode(sig)
    mask = interface.build_mask(
        codes,
        sig=sig,
        periodic_prompt=int(params["periodic_p"]),
        onset_mask_width=int(params["onset_mask_width"]),
        _dropout=float(params["dropout"]),
        upper_codebook_mask=int(params["n_mask_codebooks"]),
    )

    beat_mask_ms = int(params["beat_mask_ms"])
    if beat_mask_ms > 0:
        beat_mask = interface.make_beat_mask(
            sig,
            after_beat_s=beat_mask_ms / 1000.0,
        )
        beat_mask = align_mask_like(beat_mask, mask)
        mask = pmask.mask_and(
            mask,
            beat_mask,
        )
        mask = pmask.codebook_mask(mask, int(params["n_mask_codebooks"]))

    interface.set_chunk_size(10.0)
    if chunk_seconds is None:
        out = vamp_codes(interface, codes, mask, params, seed)
        chunk_info = {
            "enabled": False,
            "chunk_count": 1,
            "join_method": "direct",
        }
    else:
        if chunk_seconds <= 0:
            raise ValueError("chunk_seconds must be positive.")
        if crossfade_seconds <= 0 or crossfade_seconds >= chunk_seconds:
            raise ValueError("crossfade_seconds must be greater than 0 and smaller than chunk_seconds.")

        chunk_tokens = interface.s2t(chunk_seconds)
        crossfade_tokens = interface.s2t(crossfade_seconds)
        stride_tokens = chunk_tokens - crossfade_tokens
        total_tokens = codes.shape[-1]
        token_starts = list(range(0, total_tokens, stride_tokens))
        stretch_factor = int(params["stretch_factor"])

        generated_chunks: list[torch.Tensor] = []
        output_starts: list[int] = []
        output_valid_lengths: list[int] = []
        chunk_records: list[dict[str, Any]] = []
        samples_per_input_token: float | None = None

        for chunk_index, token_start in enumerate(token_starts):
            token_end = min(token_start + chunk_tokens, total_tokens)
            valid_tokens = token_end - token_start
            code_chunk, mask_chunk = pad_code_chunk(
                codes[..., token_start:token_end],
                mask[..., token_start:token_end],
                chunk_tokens,
            )
            chunk_seed = seed + chunk_index
            generated = vamp_codes(
                interface,
                code_chunk,
                mask_chunk,
                params,
                chunk_seed,
            )
            chunk_audio = generated.audio_data
            if samples_per_input_token is None:
                samples_per_input_token = chunk_audio.shape[-1] / chunk_tokens

            output_start = round(token_start * samples_per_input_token)
            output_valid_length = round(valid_tokens * samples_per_input_token)
            generated_chunks.append(chunk_audio)
            output_starts.append(output_start)
            output_valid_lengths.append(output_valid_length)
            chunk_records.append(
                {
                    "chunk_index": chunk_index,
                    "seed": chunk_seed,
                    "input_start_token": token_start,
                    "input_end_token": token_end,
                    "valid_input_tokens": valid_tokens,
                    "padded_input_tokens": chunk_tokens - valid_tokens,
                    "output_start_sample": output_start,
                    "valid_output_samples": output_valid_length,
                }
            )

        if samples_per_input_token is None:
            raise ValueError("Input produced no codec tokens.")
        total_output_length = round(total_tokens * samples_per_input_token)
        stitched = equal_power_crossfade(
            generated_chunks,
            output_starts,
            output_valid_lengths,
            total_output_length,
        )
        out = at.AudioSignal(stitched, sample_rate=generated.sample_rate)
        chunk_info = {
            "enabled": True,
            "chunk_seconds": chunk_seconds,
            "crossfade_seconds": crossfade_seconds,
            "chunk_tokens": chunk_tokens,
            "crossfade_tokens": crossfade_tokens,
            "stride_tokens": stride_tokens,
            "chunk_count": len(chunk_records),
            "stretch_factor": stretch_factor,
            "join_method": "equal_power",
            "total_input_tokens": total_tokens,
            "total_output_samples": total_output_length,
            "sample_rate": out.sample_rate,
            "chunks": chunk_records,
        }

    out = out.normalize(loudness)
    if chunk_seconds is not None:
        out = out.ensure_max_of_audio(0.99)
        chunk_info["peak_limit"] = 0.99
    return out, mask, chunk_info


def dump_json(path: Path, data: Any) -> None:
    path.write_text(json.dumps(data, indent=2, sort_keys=True) + "\n")


def write_csv(path: Path, rows: list[dict[str, Any]]) -> None:
    if not rows:
        return
    csv_rows = [
        {key: value for key, value in row.items() if key not in CSV_EXCLUDED_FIELDS}
        for row in rows
    ]
    fieldnames = sorted({key for row in csv_rows for key in row})
    with path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for row in csv_rows:
            writer.writerow(row)


def read_csv_rows(path: Path) -> list[dict[str, Any]]:
    if not path.exists():
        return []
    with path.open() as f:
        return list(csv.DictReader(f))


def read_state_rows(path: Path, csv_fallback: Path) -> list[dict[str, Any]]:
    if path.exists():
        return json.loads(path.read_text())
    return read_csv_rows(csv_fallback)


def make_output_root(base_root: Path, input_path: Path, model_choice: str) -> Path:
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    return base_root / f"{stamp}_{slugify(model_choice)}_{slugify(input_path.stem)}"


def main() -> None:
    parser = argparse.ArgumentParser(description="Run one-at-a-time VampNet app parameter sweeps.")
    parser.add_argument("--input", required=True, type=Path)
    parser.add_argument("--output-base", default=Path("experiments/param_sweeps"), type=Path)
    parser.add_argument("--output-root", default=None, type=Path, help="Resume/write into an exact sweep folder.")
    parser.add_argument("--model-choice", default="default")
    parser.add_argument("--device", default="auto", choices=["auto", "cpu", "cuda", "mps"])
    parser.add_argument("--limit", type=int, default=None, help="Run only the first N cases for smoke tests.")
    parser.add_argument("--resume", action="store_true", help="Skip completed ok rows in an existing output root.")
    parser.add_argument("--overwrite", action="store_true")
    parser.add_argument("--batch-size", type=int, default=None, help="Override generated outputs per run.")
    parser.add_argument("--sampling-steps", type=int, default=None, help="Override baseline sampling steps.")
    parser.add_argument(
        "--exclude-param",
        action="append",
        default=[],
        help="Skip a sweep parameter by name or key. Can be passed multiple times.",
    )
    parser.add_argument(
        "--chunk-seconds",
        type=float,
        default=None,
        help="Generate fixed-size overlapping chunks instead of passing the whole file through at once.",
    )
    parser.add_argument(
        "--crossfade-seconds",
        type=float,
        default=1.0,
        help="Equal-power overlap used with --chunk-seconds.",
    )
    args = parser.parse_args()

    input_path = args.input.expanduser().resolve()
    if not input_path.exists():
        raise FileNotFoundError(input_path)

    device = choose_device(args.device)
    output_root = args.output_root or make_output_root(args.output_base, input_path, args.model_choice)
    output_root.mkdir(parents=True, exist_ok=args.overwrite or args.resume or args.output_root is not None)

    input_dir = output_root / "input"
    input_dir.mkdir(exist_ok=True)
    copied_input = input_dir / input_path.name
    if not copied_input.exists():
        shutil.copy2(input_path, copied_input)

    base_params = dict(BASE_PARAMS)
    base_params["model_choice"] = args.model_choice
    if args.batch_size is not None:
        base_params["batch_size"] = args.batch_size
    if args.sampling_steps is not None:
        base_params["sampling_steps"] = args.sampling_steps
    if args.chunk_seconds is not None:
        base_params["chunk_seconds"] = args.chunk_seconds
        base_params["crossfade_seconds"] = args.crossfade_seconds
    excluded_params = set(args.exclude_param)

    dump_json(
        output_root / "sweep_config.json",
        {
            "input_path": str(input_path),
            "copied_input_path": str(copied_input),
            "output_root": str(output_root),
            "device": device,
            "base_params": base_params,
            "param_specs": [
                spec for spec in PARAM_SPECS
                if spec["name"] not in excluded_params and spec["key"] not in excluded_params
            ],
            "excluded_params": sorted(excluded_params),
            "presets": PRESETS,
            "sweep_mode": "one_parameter_at_a_time",
            "chunking": {
                "enabled": args.chunk_seconds is not None,
                "chunk_seconds": args.chunk_seconds,
                "crossfade_seconds": args.crossfade_seconds if args.chunk_seconds is not None else None,
                "join_method": "equal_power" if args.chunk_seconds is not None else "direct",
                "save_intermediate_chunks": False,
            },
        },
    )

    interface = Interface.default()
    if args.model_choice != "default":
        interface.load_finetuned(args.model_choice)
    interface.to(device)

    sweep_runs = build_sweep(excluded_params)
    if args.limit is not None:
        sweep_runs = sweep_runs[: args.limit]

    state_path = output_root / "runs_state.json"
    rows: list[dict[str, Any]] = (
        read_state_rows(state_path, output_root / "runs.csv") if args.resume else []
    )
    rows_by_run_id = {row["run_id"]: row for row in rows if "run_id" in row}
    rows_by_resume_key = {
        (int(row["run_number"]), row["sweep_param"], row["sweep_label"]): row
        for row in rows
        if row.get("run_number") and row.get("sweep_param") and row.get("sweep_label")
    }
    index: dict[str, Any] = {}
    index_path = output_root / "index_by_params_hash.json"
    if args.resume and index_path.exists():
        index = json.loads(index_path.read_text())
    jsonl_path = output_root / "runs.jsonl"

    with jsonl_path.open("a" if args.resume else "w") as jsonl:
        for run_number, run in enumerate(sweep_runs, start=1):
            params = dict(base_params)
            params.update(run["overrides"])
            run_hash = params_hash(params)
            value_slug = slugify(run["sweep_value"])
            run_id = f"{run_number:03d}_{slugify(run['sweep_param'])}_{slugify(run['sweep_label'])}_{value_slug}_{run_hash}"
            run_dir = output_root / "runs" / slugify(run["sweep_param"]) / run_id
            run_dir.mkdir(parents=True, exist_ok=True)

            resume_key = (run_number, run["sweep_param"], run["sweep_label"])
            existing = rows_by_resume_key.get(resume_key) or rows_by_run_id.get(run_id)
            if (
                args.resume
                and existing is not None
                and existing.get("status") == "ok"
                and any(
                    key.startswith("output_") and key.endswith("_path") and value
                    for key, value in existing.items()
                )
                and all(
                    Path(value).exists()
                    for key, value in existing.items()
                    if key.startswith("output_") and key.endswith("_path") and value
                )
            ):
                print(f"[{run_number}/{len(sweep_runs)}] skip existing {run_id}", flush=True)
                continue

            row: dict[str, Any] = {
                "run_number": run_number,
                "run_id": run_id,
                "params_hash": run_hash,
                "sweep_param": run["sweep_param"],
                "sweep_label": run["sweep_label"],
                "sweep_value": run["sweep_value"],
                "input_path": str(input_path),
                "copied_input_path": str(copied_input),
                "run_dir": str(run_dir),
                "status": "started",
            }
            row.update(params)
            dump_json(run_dir / "params.json", params)

            print(f"[{run_number}/{len(sweep_runs)}] {run_id}", flush=True)
            started = time.time()
            try:
                out_sig, mask, chunk_info = generate_pair(
                    interface,
                    input_path,
                    params,
                    device,
                    chunk_seconds=args.chunk_seconds,
                    crossfade_seconds=args.crossfade_seconds,
                )
                output_paths = write_audio_pair(out_sig, run_dir)
                mask_path = run_dir / "mask.png"
                save_mask_image(interface, mask, mask_path)
                dump_json(run_dir / "chunks.json", chunk_info)
                output_path_fields = {
                    f"output_{idx + 1}_path": output_path
                    for idx, output_path in enumerate(output_paths)
                }
                row.update(
                    {
                        "status": "ok",
                        "elapsed_s": round(time.time() - started, 3),
                        "num_outputs": len(output_paths),
                        "chunk_count": chunk_info["chunk_count"],
                        "chunk_seconds": chunk_info.get("chunk_seconds"),
                        "crossfade_seconds": chunk_info.get("crossfade_seconds"),
                        "join_method": chunk_info["join_method"],
                        "output_paths": output_paths,
                        "mask_path": str(mask_path),
                        **output_path_fields,
                    }
                )
            except KeyboardInterrupt:
                raise
            except Exception as exc:  # keep long sweeps moving.
                row.update(
                    {
                        "status": "error",
                        "elapsed_s": round(time.time() - started, 3),
                        "error": f"{type(exc).__name__}: {exc}",
                    }
                )
                print(f"  ERROR: {row['error']}", flush=True)

            rows.append(row)
            rows_by_run_id[run_id] = row
            rows_by_resume_key[resume_key] = row
            rows = sorted(rows_by_resume_key.values(), key=lambda item: int(item["run_number"]))
            index[run_hash] = {
                "run_id": run_id,
                "run_dir": str(run_dir),
                "params": params,
                "status": row["status"],
                "output_1_path": row.get("output_1_path"),
                "output_2_path": row.get("output_2_path"),
                "output_paths": row.get("output_paths"),
            }
            jsonl.write(json.dumps(row, sort_keys=True) + "\n")
            jsonl.flush()
            dump_json(output_root / "index_by_params_hash.json", index)
            dump_json(state_path, rows)
            write_csv(output_root / "runs.csv", rows)

    print(f"wrote {output_root}", flush=True)


if __name__ == "__main__":
    main()
