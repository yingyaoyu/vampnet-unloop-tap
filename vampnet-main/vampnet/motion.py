from __future__ import annotations

import json
from pathlib import Path
from typing import Iterable, Optional

import numpy as np
import torch
from torch import Tensor, nn
from torch.utils.data import Dataset, default_collate


DEFAULT_MOTION_FEATURES = ("arm_height", "motion_energy", "arm_spread")


def _interp_features(
    features: np.ndarray,
    timestamps: Optional[np.ndarray],
    n_frames: int,
    duration_s: Optional[float] = None,
) -> np.ndarray:
    """Resample feature rows onto VampNet codec-token frames."""
    features = np.asarray(features, dtype=np.float32)
    if features.ndim != 2:
        raise ValueError(f"motion features must be 2D, got shape {features.shape}")

    if timestamps is None:
        old_x = np.linspace(0.0, 1.0, features.shape[-1], dtype=np.float32)
        new_x = np.linspace(0.0, 1.0, n_frames, dtype=np.float32)
    else:
        timestamps = np.asarray(timestamps, dtype=np.float32)
        if timestamps.ndim != 1:
            raise ValueError("motion timestamps must be 1D")
        if timestamps.shape[0] != features.shape[-1]:
            raise ValueError(
                "motion timestamps and features disagree along time: "
                f"{timestamps.shape[0]} vs {features.shape[-1]}"
            )
        end_time = float(duration_s) if duration_s is not None else float(timestamps[-1])
        old_x = timestamps
        new_x = np.linspace(0.0, end_time, n_frames, endpoint=False, dtype=np.float32)

    out = np.stack(
        [np.interp(new_x, old_x, channel).astype(np.float32) for channel in features],
        axis=0,
    )
    return out


def _features_from_jsonl(
    path: Path,
    feature_keys: Iterable[str],
) -> tuple[np.ndarray, np.ndarray]:
    timestamps = []
    rows = []
    keys = tuple(feature_keys)

    with path.open("r") as f:
        for line in f:
            if not line.strip():
                continue
            item = json.loads(line)
            timestamp = item.get("timestamp", item.get("time", item.get("t")))
            if timestamp is None:
                raise ValueError(f"{path} row is missing timestamp/time/t")
            timestamps.append(float(timestamp))
            rows.append([float(item[key]) for key in keys])

    if not rows:
        raise ValueError(f"{path} contains no motion rows")

    return np.asarray(rows, dtype=np.float32).T, np.asarray(timestamps, dtype=np.float32)


def load_motion_features(
    path: str | Path,
    n_frames: int,
    feature_dim: int = 3,
    feature_keys: Iterable[str] = DEFAULT_MOTION_FEATURES,
    duration_s: Optional[float] = None,
    device: Optional[torch.device] = None,
) -> tuple[Tensor, Tensor]:
    """Load a motion sidecar as (features, mask).

    Supported formats:
    - .npz with `motion` shaped (d, n) or (n, d), plus optional `motion_mask`
    - .npz with `features` and `timestamps`
    - .jsonl rows with timestamp/time/t and named feature columns
    """
    path = Path(path)
    if path.suffix == ".npz":
        archive = np.load(path)
        if "motion" in archive:
            motion = np.asarray(archive["motion"], dtype=np.float32)
            timestamps = archive["timestamps"] if "timestamps" in archive else None
        elif "features" in archive:
            motion = np.asarray(archive["features"], dtype=np.float32)
            timestamps = archive["timestamps"] if "timestamps" in archive else None
        else:
            raise ValueError(f"{path} must contain `motion` or `features`")

        if motion.ndim != 2:
            raise ValueError(f"{path} motion must be 2D, got shape {motion.shape}")
        if motion.shape[0] != feature_dim and motion.shape[1] == feature_dim:
            motion = motion.T
        if motion.shape[0] != feature_dim:
            raise ValueError(
                f"{path} has feature dim {motion.shape[0]}, expected {feature_dim}"
            )
    elif path.suffix == ".jsonl":
        motion, timestamps = _features_from_jsonl(path, feature_keys)
    else:
        raise ValueError(f"unsupported motion sidecar format: {path.suffix}")

    if motion.shape[-1] != n_frames:
        motion = _interp_features(motion, timestamps, n_frames, duration_s)

    mask_key = None
    if path.suffix == ".npz":
        if "motion_mask" in archive:
            mask_key = "motion_mask"
        elif "mask" in archive:
            mask_key = "mask"
    if mask_key is not None:
        mask = np.asarray(archive[mask_key], dtype=np.float32)
        if mask.shape[-1] != n_frames:
            mask = _interp_features(mask[None, :], timestamps, n_frames, duration_s)[0]
        mask = np.clip(mask, 0.0, 1.0)
    else:
        mask = np.ones(n_frames, dtype=np.float32)

    return (
        torch.as_tensor(motion, dtype=torch.float32, device=device),
        torch.as_tensor(mask, dtype=torch.float32, device=device),
    )


class MotionFeatureController(nn.Module):
    """Controller for precomputed motion features shaped (batch, dim, frames)."""

    def __init__(
        self,
        feature_dim: int = 3,
        key: str = "motion",
        feature_keys: Optional[list[str]] = None,
        missing_policy: str = "zeros",
        path_key: str = "motion_path",
    ):
        super().__init__()
        if missing_policy not in {"zeros", "raise"}:
            raise ValueError("missing_policy must be 'zeros' or 'raise'")
        self.feature_dim = feature_dim
        self.key = key
        self.feature_keys = feature_keys or list(DEFAULT_MOTION_FEATURES)
        self.missing_policy = missing_policy
        self.path_key = path_key

    @property
    def ctrl_dims(self) -> dict[str, int]:
        return {self.key: self.feature_dim}

    def _empty(self, batch_size: int, n_frames: int, device) -> tuple[dict[str, Tensor], dict[str, Tensor]]:
        ctrls = {
            self.key: torch.zeros(
                batch_size,
                self.feature_dim,
                n_frames,
                dtype=torch.float32,
                device=device,
            )
        }
        masks = {self.key: torch.zeros(batch_size, n_frames, dtype=torch.float32, device=device)}
        return ctrls, masks

    def extract(
        self,
        sig,
        batch: Optional[dict] = None,
        n_tokens: Optional[int] = None,
        device: Optional[torch.device] = None,
    ) -> tuple[dict[str, Tensor], dict[str, Tensor]]:
        device = device or sig.samples.device
        batch_size = sig.samples.shape[0]
        n_frames = int(n_tokens or sig.samples.shape[-1])

        if batch is not None and self.key not in batch and self.path_key in batch:
            paths = batch[self.path_key]
            if isinstance(paths, (str, Path)):
                paths = [paths]
            loaded = [
                load_motion_features(
                    path,
                    n_frames=n_frames,
                    feature_dim=self.feature_dim,
                    feature_keys=self.feature_keys,
                    device=device,
                )
                for path in paths
            ]
            motion = torch.stack([item[0] for item in loaded], dim=0)
            mask = torch.stack([item[1] for item in loaded], dim=0)
            return {self.key: motion}, {self.key: mask}

        if batch is None or self.key not in batch:
            if self.missing_policy == "raise":
                raise KeyError(
                    f"batch is missing `{self.key}` motion features. "
                    "Provide precomputed features shaped (batch, dim, frames) "
                    f"or sidecar paths under `{self.path_key}`."
                )
            return self._empty(batch_size, n_frames, device)

        motion = torch.as_tensor(batch[self.key], dtype=torch.float32, device=device)
        if motion.ndim == 2:
            motion = motion[None]
        if motion.ndim != 3:
            raise ValueError(f"`{self.key}` must have shape (b, d, n), got {motion.shape}")
        if motion.shape[1] != self.feature_dim and motion.shape[2] == self.feature_dim:
            motion = motion.transpose(1, 2)
        if motion.shape[1] != self.feature_dim:
            raise ValueError(
                f"`{self.key}` has feature dim {motion.shape[1]}, expected {self.feature_dim}"
            )
        if motion.shape[-1] != n_frames:
            motion = torch.nn.functional.interpolate(
                motion,
                size=n_frames,
                mode="linear",
                align_corners=False,
            )

        mask_key = f"{self.key}_mask"
        if batch is not None and mask_key in batch:
            mask = torch.as_tensor(batch[mask_key], dtype=torch.float32, device=device)
            if mask.ndim == 1:
                mask = mask[None]
            if mask.shape[-1] != n_frames:
                mask = torch.nn.functional.interpolate(
                    mask[:, None, :],
                    size=n_frames,
                    mode="linear",
                    align_corners=False,
                )[:, 0]
            mask = mask.clamp(0.0, 1.0)
        else:
            mask = torch.ones(motion.shape[0], n_frames, dtype=torch.float32, device=device)

        return {self.key: motion}, {self.key: mask}

    def random_mask(self, ctrls: dict[str, Tensor], r: Tensor | float) -> dict[str, Tensor]:
        ctrl = ctrls[self.key]
        batch_size, _, n_frames = ctrl.shape
        if not torch.is_tensor(r):
            r = torch.full((batch_size,), float(r), device=ctrl.device)
        r = r.to(ctrl.device).flatten()
        keep_prob = (1.0 - r).clamp(0.0, 1.0)[:, None].expand(batch_size, n_frames)
        return {self.key: (torch.rand(batch_size, n_frames, device=ctrl.device) < keep_prob).float()}

    def empty_mask(self, ctrls: dict[str, Tensor]) -> dict[str, Tensor]:
        ctrl = ctrls[self.key]
        return {self.key: torch.zeros(ctrl.shape[0], ctrl.shape[-1], device=ctrl.device)}


class MotionSidecarDataset(Dataset):
    """Attach motion sidecar paths to examples from an existing audio dataset."""

    def __init__(
        self,
        dataset: Dataset,
        sidecar_dir: Optional[str | Path] = None,
        sidecar_suffix: str = ".motion.npz",
        audio_path_key: Optional[str] = None,
        motion_path_key: str = "motion_path",
    ):
        self.dataset = dataset
        self.sidecar_dir = Path(sidecar_dir) if sidecar_dir else None
        self.sidecar_suffix = sidecar_suffix
        self.audio_path_key = audio_path_key
        self.motion_path_key = motion_path_key

    def __len__(self):
        return len(self.dataset)

    def __getattr__(self, name):
        return getattr(self.dataset, name)

    def _audio_path_from_item(self, item) -> Optional[Path]:
        if not isinstance(item, dict):
            return None

        keys = [self.audio_path_key] if self.audio_path_key else []
        keys += ["audio_path", "path", "filename", "file"]
        for key in keys:
            if key and key in item and item[key] is not None:
                return Path(item[key])

        signal = item.get("signal")
        for attr in ("path_to_file", "path", "file", "filename"):
            if signal is not None and hasattr(signal, attr):
                value = getattr(signal, attr)
                if value is not None:
                    return Path(value)

        return None

    def _motion_path_for_audio(self, audio_path: Path) -> Path:
        sidecar_name = audio_path.with_suffix(self.sidecar_suffix).name
        if self.sidecar_dir is not None:
            return self.sidecar_dir / sidecar_name
        return audio_path.with_suffix(self.sidecar_suffix)

    def __getitem__(self, idx):
        item = self.dataset[idx]
        audio_path = self._audio_path_from_item(item)
        if audio_path is None:
            return item

        item = dict(item)
        item[self.motion_path_key] = str(self._motion_path_for_audio(audio_path))
        return item

    def collate(self, items):
        motion_paths = [
            item.get(self.motion_path_key) if isinstance(item, dict) else None
            for item in items
        ]
        collate_items = []
        for item in items:
            if isinstance(item, dict) and self.motion_path_key in item:
                item = dict(item)
                item.pop(self.motion_path_key)
            collate_items.append(item)

        if hasattr(self.dataset, "collate"):
            batch = self.dataset.collate(collate_items)
        else:
            batch = default_collate(collate_items)

        if isinstance(batch, dict) and all(path is not None for path in motion_paths):
            batch[self.motion_path_key] = motion_paths
        return batch
