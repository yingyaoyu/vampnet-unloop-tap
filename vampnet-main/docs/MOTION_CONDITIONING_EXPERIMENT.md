# Motion Conditioning Experiment

This branch adds an opt-in path for conditioning VampNet on synchronized motion
features. It does not change the default config.

## Motion Format

The experimental controller accepts either direct batch tensors:

```python
batch["motion"]       # shape: (batch, 3, frames)
batch["motion_mask"]  # optional shape: (batch, frames)
```

or sidecar paths:

```python
batch["motion_path"]  # list[str] or str
```

Sidecar files can be `.npz`:

```text
motion:      shape (3, frames) or (frames, 3)
motion_mask: optional shape (frames,)
timestamps: optional shape (frames,)
```

or `.jsonl`, one row per captured motion frame:

```json
{"timestamp": 0.000, "arm_height": 0.1, "motion_energy": 0.0, "arm_spread": 0.4}
{"timestamp": 0.033, "arm_height": 0.2, "motion_energy": 0.3, "arm_spread": 0.5}
```

The three default features match the webcam prototype:

- `arm_height`
- `motion_energy`
- `arm_spread`

## AIST++ / SMPL Mapping

AIST++ can be used as a first paired-motion sandbox even though it is dance
rather than tap. The motion stream should be converted into sidecars before
training:

```bash
python scripts/utils/aist_motion_to_sidecars.py \
  --input /path/to/aist/keypoints3d-or-motions \
  --audio-dir /path/to/aist/audio \
  --output-dir data/aist_motion_sidecars \
  --fps 60
```

The converter writes one `.motion.npz` per sequence plus
`motion_sidecars_summary.csv`. For keypoint files it derives the current
3-channel control stream from COCO-style 3D joints:

- `arm_height`: average wrist height relative to the shoulders
- `motion_energy`: root and joint velocity magnitude
- `arm_spread`: distance between wrists relative to shoulder width

For SMPL motion files that only expose root translation, it can still write
`motion_energy`, but `arm_height` and `arm_spread` are zero placeholders unless
you first run SMPL forward kinematics to joints. Prefer `keypoints3d_optim` or
`keypoints3d` sidecars when they are available.

The summary CSV also includes heuristic knob hints. Those hints are useful for
app-level experiments, but they are not a replacement for the learned control
stream:

- high `motion_energy` -> larger variation hints (`periodic_p: 13`, more
  dropout, more sampling steps)
- low `motion_energy` -> smaller variation hints (`periodic_p: 5`, fewer
  sampling steps)
- high `arm_spread` -> mask one more codebook in the app-level sweep hint

## Training Config

Use:

```bash
python scripts/exp/train.py --args.load conf/motion.yml
```

`conf/motion.yml` enables:

```yaml
motion.enabled: true
VampNet.ctrl_dims:
  motion: 3
```

The config currently uses `motion.missing_policy: zeros`, so the code path can
smoke-test even before a dataset wrapper provides motion. Once paired motion is
being loaded, switch it to `raise` to catch missing sidecars early.

To attach sidecars automatically, set:

```yaml
motion.sidecar_dir: /path/to/motion-sidecars
motion.sidecar_suffix: .motion.npz
```

The wrapper looks for common audio path keys such as `audio_path`, `path`,
`filename`, or a path-like attribute on the batch signal. If the underlying
`audiotools` item does not expose a filename, use a custom dataset that adds
`batch["motion"]` or `batch["motion_path"]` directly.

## What Changed

- `VampNet.forward()` can consume motion controls through the existing
  `ControlEncoder`.
- `VampNet.generate()` now passes controls into every denoising step.
- Training, validation, and one-step sample logging pass controls through when a
  controller is enabled.
- `vampnet.motion.MotionFeatureController` loads direct tensors or sidecar
  files and resamples them to the codec token length.
- `vampnet.motion.MotionSidecarDataset` can wrap the current audio dataset and
  attach `motion_path` values when audio filenames are available.

## Next Experiment

Record a few short paired takes, export `.motion.npz` sidecars with the same
basename as each audio file, set `motion.sidecar_dir`, and run a tiny LoRA
fine-tune to confirm that changing motion features changes the sampled output.
