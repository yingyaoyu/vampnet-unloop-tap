from __future__ import annotations

import argparse
import csv
import json
import pickle
from pathlib import Path
from typing import Any

import numpy as np


FEATURE_KEYS = ("arm_height", "motion_energy", "arm_spread")
AUDIO_EXTS = (".wav", ".mp3", ".flac", ".aif", ".aiff", ".m4a")

# COCO-17 joint indices used by AIST++ keypoint annotations.
LEFT_SHOULDER = 5
RIGHT_SHOULDER = 6
LEFT_WRIST = 9
RIGHT_WRIST = 10
LEFT_HIP = 11
RIGHT_HIP = 12


def robust_scale(values: np.ndarray, eps: float = 1e-6) -> np.ndarray:
    values = np.asarray(values, dtype=np.float32)
    lo, hi = np.nanpercentile(values, [5, 95])
    if hi - lo < eps:
        return np.zeros_like(values, dtype=np.float32)
    return np.clip((values - lo) / (hi - lo), 0.0, 1.0).astype(np.float32)


def smooth(values: np.ndarray, window: int) -> np.ndarray:
    if window <= 1:
        return values.astype(np.float32)
    kernel = np.ones(window, dtype=np.float32) / float(window)
    if values.ndim == 1:
        return np.convolve(values, kernel, mode="same").astype(np.float32)
    return np.stack([np.convolve(row, kernel, mode="same") for row in values], axis=0).astype(np.float32)


def load_motion_file(path: Path) -> dict[str, Any]:
    if path.suffix == ".npz":
        archive = np.load(path, allow_pickle=True)
        return {key: archive[key] for key in archive.files}
    if path.suffix in {".pkl", ".pickle"}:
        with path.open("rb") as f:
            data = pickle.load(f)
        if not isinstance(data, dict):
            raise ValueError(f"{path} did not contain a dict")
        return data
    if path.suffix == ".json":
        return json.loads(path.read_text())
    raise ValueError(f"unsupported motion file type: {path.suffix}")


def pick_keypoints(data: dict[str, Any]) -> np.ndarray | None:
    for key in ("keypoints3d_optim", "keypoints3d", "joints3d", "joints"):
        if key in data:
            joints = np.asarray(data[key], dtype=np.float32)
            if joints.ndim == 3 and joints.shape[1] >= 17 and joints.shape[2] >= 3:
                return joints[..., :3]
    return None


def pick_translation(data: dict[str, Any]) -> np.ndarray | None:
    for key in ("smpl_trans", "root_trans", "trans", "translation"):
        if key in data:
            trans = np.asarray(data[key], dtype=np.float32)
            if trans.ndim == 2 and trans.shape[1] >= 3:
                return trans[:, :3]
    return None


def features_from_keypoints(joints: np.ndarray) -> tuple[np.ndarray, np.ndarray]:
    joints = np.asarray(joints, dtype=np.float32)
    n_frames = joints.shape[0]

    left_shoulder = joints[:, LEFT_SHOULDER]
    right_shoulder = joints[:, RIGHT_SHOULDER]
    left_wrist = joints[:, LEFT_WRIST]
    right_wrist = joints[:, RIGHT_WRIST]
    left_hip = joints[:, LEFT_HIP]
    right_hip = joints[:, RIGHT_HIP]

    shoulders = 0.5 * (left_shoulder + right_shoulder)
    hips = 0.5 * (left_hip + right_hip)
    wrists = 0.5 * (left_wrist + right_wrist)
    shoulder_width = np.linalg.norm(left_shoulder - right_shoulder, axis=-1)
    body_scale = np.nanmedian(shoulder_width[shoulder_width > 1e-6])
    if not np.isfinite(body_scale) or body_scale <= 1e-6:
        body_scale = 1.0

    # AIST++ world axes can vary by processing path. Using relative vertical
    # extent keeps this feature useful even if y/z differ across exporters.
    vertical_axis = int(np.argmax(np.nanstd(joints.reshape(n_frames, -1, 3), axis=(0, 1))))
    wrist_height = wrists[:, vertical_axis] - shoulders[:, vertical_axis]
    arm_height = robust_scale(wrist_height / body_scale)

    arm_span = np.linalg.norm(left_wrist - right_wrist, axis=-1)
    arm_spread = robust_scale(arm_span / body_scale)

    root = hips
    root_vel = np.vstack([np.zeros((1, 3), dtype=np.float32), np.diff(root, axis=0)])
    joint_vel = np.vstack([np.zeros((1, joints.shape[1], 3), dtype=np.float32), np.diff(joints, axis=0)])
    energy = np.linalg.norm(root_vel, axis=-1) + np.nanmean(np.linalg.norm(joint_vel, axis=-1), axis=-1)
    motion_energy = robust_scale(energy)

    mask = np.isfinite(joints).all(axis=(1, 2)).astype(np.float32)
    motion = np.stack([arm_height, motion_energy, arm_spread], axis=0)
    return motion.astype(np.float32), mask


def features_from_translation(trans: np.ndarray) -> tuple[np.ndarray, np.ndarray]:
    trans = np.asarray(trans, dtype=np.float32)
    vel = np.vstack([np.zeros((1, 3), dtype=np.float32), np.diff(trans, axis=0)])
    motion_energy = robust_scale(np.linalg.norm(vel, axis=-1))
    zeros = np.zeros_like(motion_energy, dtype=np.float32)
    mask = np.isfinite(trans).all(axis=1).astype(np.float32)
    return np.stack([zeros, motion_energy, zeros], axis=0), mask


def extract_features(data: dict[str, Any]) -> tuple[np.ndarray, np.ndarray, str]:
    joints = pick_keypoints(data)
    if joints is not None:
        motion, mask = features_from_keypoints(joints)
        return motion, mask, "keypoints3d"

    trans = pick_translation(data)
    if trans is not None:
        motion, mask = features_from_translation(trans)
        return motion, mask, "translation_only"

    raise ValueError("no supported keypoints3d/joints or SMPL translation keys found")


def knob_hints(motion: np.ndarray) -> dict[str, Any]:
    arm_height, motion_energy, arm_spread = motion
    energy = float(np.nanmean(motion_energy))
    spread = float(np.nanmean(arm_spread))

    if energy >= 0.65:
        periodic_p = 13
        dropout = 0.2
        sampling_steps = 36
    elif energy <= 0.35:
        periodic_p = 5
        dropout = 0.0
        sampling_steps = 16
    else:
        periodic_p = 7
        dropout = 0.1
        sampling_steps = 24

    n_mask_codebooks = 4 if spread >= 0.5 else 3
    return {
        "periodic_p": periodic_p,
        "dropout": dropout,
        "sampling_steps": sampling_steps,
        "n_mask_codebooks": n_mask_codebooks,
        "motion_energy_mean": round(energy, 4),
        "arm_height_mean": round(float(np.nanmean(arm_height)), 4),
        "arm_spread_mean": round(spread, 4),
    }


def iter_motion_files(input_path: Path) -> list[Path]:
    if input_path.is_file():
        return [input_path]
    suffixes = {".pkl", ".pickle", ".npz", ".json"}
    return sorted(path for path in input_path.rglob("*") if path.suffix in suffixes)


def audio_stems(audio_dir: Path | None) -> set[str]:
    if audio_dir is None:
        return set()
    return {
        path.stem
        for path in audio_dir.rglob("*")
        if path.is_file() and path.suffix.lower() in AUDIO_EXTS
    }


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Convert AIST++/pose motion files into VampNet .motion.npz sidecars."
    )
    parser.add_argument("--input", required=True, type=Path, help="Motion file or directory.")
    parser.add_argument("--output-dir", required=True, type=Path)
    parser.add_argument("--audio-dir", type=Path, default=None, help="Optional paired audio directory.")
    parser.add_argument("--only-matched-audio", action="store_true")
    parser.add_argument("--fps", type=float, default=60.0)
    parser.add_argument("--smooth-frames", type=int, default=5)
    parser.add_argument("--suffix", default=".motion.npz")
    args = parser.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)
    matched_audio = audio_stems(args.audio_dir)
    rows: list[dict[str, Any]] = []

    for path in iter_motion_files(args.input):
        if args.only_matched_audio and matched_audio and path.stem not in matched_audio:
            continue

        row: dict[str, Any] = {"source_path": str(path), "stem": path.stem}
        try:
            data = load_motion_file(path)
            motion, mask, source_kind = extract_features(data)
            motion = smooth(motion, args.smooth_frames)
            timestamps = np.arange(motion.shape[-1], dtype=np.float32) / float(args.fps)

            out_path = args.output_dir / f"{path.stem}{args.suffix}"
            np.savez(
                out_path,
                motion=motion.astype(np.float32),
                motion_mask=mask.astype(np.float32),
                timestamps=timestamps,
                feature_keys=np.asarray(FEATURE_KEYS),
                source_path=str(path),
                source_kind=source_kind,
                fps=float(args.fps),
            )
            row.update(
                {
                    "status": "ok",
                    "sidecar_path": str(out_path),
                    "source_kind": source_kind,
                    "frames": motion.shape[-1],
                    "duration_s": round(float(timestamps[-1]) if len(timestamps) else 0.0, 4),
                }
            )
            row.update(knob_hints(motion))
        except Exception as exc:
            row.update({"status": "error", "error": f"{type(exc).__name__}: {exc}"})
        rows.append(row)

    summary_path = args.output_dir / "motion_sidecars_summary.csv"
    fieldnames = sorted({key for row in rows for key in row})
    with summary_path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    print(f"wrote {len([row for row in rows if row['status'] == 'ok'])}/{len(rows)} sidecars")
    print(summary_path)


if __name__ == "__main__":
    main()
