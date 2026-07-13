from __future__ import annotations

import argparse
import csv
import json
import shutil
import time
from datetime import datetime
from pathlib import Path
from typing import Any

from run_app_parameter_sweep import (
    BASE_PARAMS,
    Interface,
    choose_device,
    dump_json,
    generate_pair,
    params_hash,
    save_mask_image,
    slugify,
    write_audio_pair,
)


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


def parse_int_list(value: str) -> list[int]:
    return [int(item.strip()) for item in value.split(",") if item.strip()]


def targeted_runs(stretch_factors: list[int], beat_mask_ms: int) -> list[dict[str, Any]]:
    runs: list[dict[str, Any]] = [
        {
            "sweep_param": "compression_compare",
            "sweep_label": "comp0_stretch1",
            "sweep_value": "n_mask_codebooks=0;stretch_factor=1",
            "overrides": {"n_mask_codebooks": 0, "stretch_factor": 1},
        },
        {
            "sweep_param": "compression_compare",
            "sweep_label": "comp14_stretch1",
            "sweep_value": "n_mask_codebooks=14;stretch_factor=1",
            "overrides": {"n_mask_codebooks": 14, "stretch_factor": 1},
        },
    ]

    for factor in stretch_factors:
        if factor <= 1:
            continue
        runs.append(
            {
                "sweep_param": "compression0_timestretch",
                "sweep_label": f"comp0_stretch{factor}",
                "sweep_value": f"n_mask_codebooks=0;stretch_factor={factor}",
                "overrides": {"n_mask_codebooks": 0, "stretch_factor": factor},
            }
        )

    runs.append(
        {
            "sweep_param": "beat_only_mask",
            "sweep_label": f"beatonly_{beat_mask_ms}ms",
            "sweep_value": (
                "periodic_prompt=0;n_mask_codebooks=14;"
                f"beat_mask_ms={beat_mask_ms};stretch_factor=1"
            ),
            "overrides": {
                "periodic_p": 0,
                "n_mask_codebooks": 14,
                "beat_mask_ms": beat_mask_ms,
                "stretch_factor": 1,
            },
        }
    )
    return runs


def write_named_outputs(paths: list[str], run_id: str, named_dir: Path) -> list[str]:
    named_dir.mkdir(parents=True, exist_ok=True)
    named_paths = []
    for idx, source in enumerate(paths, start=1):
        target = named_dir / f"{run_id}_output{idx}.wav"
        shutil.copy2(source, target)
        named_paths.append(str(target))
    return named_paths


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
        writer.writerows(csv_rows)


def read_state(path: Path) -> list[dict[str, Any]]:
    if not path.exists():
        return []
    return json.loads(path.read_text())


def make_output_root(base_root: Path, input_path: Path, model_choice: str) -> Path:
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    return base_root / f"{stamp}_{slugify(model_choice)}_{slugify(input_path.stem)}_targeted"


def main() -> None:
    parser = argparse.ArgumentParser(description="Run targeted VampNet experiments for comparison listening.")
    parser.add_argument("--input", required=True, type=Path)
    parser.add_argument("--output-base", default=Path("experiments/targeted_sweeps"), type=Path)
    parser.add_argument("--output-root", default=None, type=Path)
    parser.add_argument("--model-choice", default="n64")
    parser.add_argument("--device", default="auto", choices=["auto", "cpu", "cuda", "mps"])
    parser.add_argument("--resume", action="store_true")
    parser.add_argument("--overwrite", action="store_true")
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--batch-size", type=int, default=2)
    parser.add_argument("--sampling-steps", type=int, default=36)
    parser.add_argument(
        "--stretch-factors",
        default="1,2,4,6",
        help="Comma-separated time stretch factors for the compression=0 comparison.",
    )
    parser.add_argument("--beat-mask-ms", type=int, default=100)
    args = parser.parse_args()

    input_path = args.input.expanduser().resolve()
    if not input_path.exists():
        raise FileNotFoundError(input_path)

    output_root = args.output_root or make_output_root(args.output_base, input_path, args.model_choice)
    output_root.mkdir(parents=True, exist_ok=args.overwrite or args.resume or args.output_root is not None)

    input_dir = output_root / "input"
    input_dir.mkdir(exist_ok=True)
    copied_input = input_dir / input_path.name
    if not copied_input.exists():
        shutil.copy2(input_path, copied_input)

    base_params = dict(BASE_PARAMS)
    base_params.update(
        {
            "model_choice": args.model_choice,
            "batch_size": args.batch_size,
            "sampling_steps": args.sampling_steps,
        }
    )

    stretch_factors = parse_int_list(args.stretch_factors)
    runs = targeted_runs(stretch_factors, args.beat_mask_ms)
    if args.limit is not None:
        runs = runs[: args.limit]

    device = choose_device(args.device)
    dump_json(
        output_root / "sweep_config.json",
        {
            "input_path": str(input_path),
            "copied_input_path": str(copied_input),
            "output_root": str(output_root),
            "device": device,
            "base_params": base_params,
            "targeted_runs": runs,
            "sweep_mode": "targeted_compression_timestretch_beat_only",
        },
    )

    interface = Interface.default()
    if args.model_choice != "default":
        interface.load_finetuned(args.model_choice)
    interface.to(device)

    state_path = output_root / "runs_state.json"
    rows = read_state(state_path) if args.resume else []
    rows_by_run_id = {row["run_id"]: row for row in rows if "run_id" in row}
    index_path = output_root / "index_by_params_hash.json"
    index = json.loads(index_path.read_text()) if args.resume and index_path.exists() else {}
    jsonl_path = output_root / "runs.jsonl"
    named_dir = output_root / "named_outputs"

    with jsonl_path.open("a" if args.resume else "w") as jsonl:
        for run_number, run in enumerate(runs, start=1):
            params = dict(base_params)
            params.update(run["overrides"])
            run_hash = params_hash(params)
            run_id = f"{run_number:03d}_{slugify(run['sweep_param'])}_{slugify(run['sweep_label'])}_{run_hash}"
            run_dir = output_root / "runs" / slugify(run["sweep_param"]) / run_id
            run_dir.mkdir(parents=True, exist_ok=True)

            existing = rows_by_run_id.get(run_id)
            if (
                args.resume
                and existing is not None
                and existing.get("status") == "ok"
                and existing.get("named_output_1_file")
                and (named_dir / existing["named_output_1_file"]).exists()
            ):
                print(f"[{run_number}/{len(runs)}] skip existing {run_id}", flush=True)
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

            print(f"[{run_number}/{len(runs)}] {run_id}", flush=True)
            started = time.time()
            try:
                out_sig, mask, chunk_info = generate_pair(
                    interface,
                    input_path,
                    params,
                    device,
                )
                out_sig = out_sig.ensure_max_of_audio(0.99)
                output_paths = write_audio_pair(out_sig, run_dir)
                named_paths = write_named_outputs(output_paths, run_id, named_dir)
                mask_path = run_dir / "mask.png"
                save_mask_image(interface, mask, mask_path)
                dump_json(run_dir / "chunks.json", chunk_info)

                output_path_fields = {
                    f"output_{idx + 1}_path": output_path
                    for idx, output_path in enumerate(output_paths)
                }
                named_file_fields = {
                    f"named_output_{idx + 1}_file": Path(output_path).name
                    for idx, output_path in enumerate(named_paths)
                }
                row.update(
                    {
                        "status": "ok",
                        "elapsed_s": round(time.time() - started, 3),
                        "num_outputs": len(output_paths),
                        "chunk_count": chunk_info["chunk_count"],
                        "join_method": chunk_info["join_method"],
                        "peak_limit": 0.99,
                        "output_paths": output_paths,
                        "mask_path": str(mask_path),
                        **output_path_fields,
                        **named_file_fields,
                    }
                )
            except KeyboardInterrupt:
                raise
            except Exception as exc:
                row.update(
                    {
                        "status": "error",
                        "elapsed_s": round(time.time() - started, 3),
                        "error": f"{type(exc).__name__}: {exc}",
                    }
                )
                print(f"  ERROR: {row['error']}", flush=True)

            rows_by_run_id[run_id] = row
            rows = sorted(rows_by_run_id.values(), key=lambda item: int(item["run_number"]))
            index[run_hash] = {
                "run_id": run_id,
                "run_dir": str(run_dir),
                "params": params,
                "status": row["status"],
                "output_1_path": row.get("output_1_path"),
                "output_2_path": row.get("output_2_path"),
                "named_output_1_file": row.get("named_output_1_file"),
                "named_output_2_file": row.get("named_output_2_file"),
            }
            jsonl.write(json.dumps(row, sort_keys=True) + "\n")
            jsonl.flush()
            dump_json(index_path, index)
            dump_json(state_path, rows)
            write_csv(output_root / "runs.csv", rows)

    print(f"wrote {output_root}", flush=True)


if __name__ == "__main__":
    main()
