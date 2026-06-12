# Motion-to-Unloop Prototype

This prototype turns a webcam pose stream into a tiny motion embedding and sends it to Unloop over OSC.
It is meant for quick experimentation before retraining or changing VampNet internals.

## Concept

The current version uses three simple MediaPipe pose features:

1. `arm_height`: how high the wrists are relative to the torso.
   - Higher arms increase Unloop temperature.
   - This should make the generation a little more varied.

2. `motion_energy`: how much the body moved since the previous frame.
   - More movement increases dropout.
   - More movement also increases onset mask.
   - This gives faster or more active motion a stronger influence on regeneration.

3. `arm_spread`: how far apart the wrists are, normalized by shoulder width.
   - Compact arms set periodic to `3`.
   - Medium spread sets periodic to `7`.
   - Wide spread sets periodic to `13`.

The mapping is intentionally basic.
the dancer's pose does not yet enter the neural model directly, but it controls VampNet/Unloop generation behavior in real time.

## Files Changed

- `/Users/yingyao/Downloads/VampNet/unloop-main/motion_to_unloop.py`
  - Captures webcam pose with MediaPipe.
  - Computes the three motion features.
  - Sends OSC controls to Max.

- `/Users/yingyao/Downloads/VampNet/unloop-main/models/pose_landmarker_lite.task`
  - Lightweight MediaPipe Tasks pose model used by newer MediaPipe versions.
  - Auto-downloaded by `motion_to_unloop.py` if missing.

- `/Users/yingyao/Downloads/VampNet/unloop-main/vamper.maxpat`
  - Receives OSC on port `9100`.
  - Routes motion controls into Unloop knobs.
  - Accepts a trigger message that presses the Unloop button.

## Start VampNet

Open a terminal:

```bash
cd /Users/yingyao/Downloads/VampNet/vampnet-main
/Users/yingyao/anaconda3/envs/vampnet_env/bin/python app.py
```

```text
Running on local URL: http://127.0.0.1:7860
```

In Max, the API field should be:

```text
http://127.0.0.1:7860/
```

## Open Unloop

Open:unloop.maxpat

If Max asks whether to save an older already-open copy, choose not to save that older copy, then reopen this file.
The OSC receiver only appears after Max loads the updated patch from disk.

## Run Motion Control

Open another terminal:

```bash
cd /Users/yingyao/Downloads/VampNet/unloop-main
/Users/yingyao/anaconda3/envs/vampnet_env/bin/python motion_to_unloop.py
```

When recording is active, the script also stores a motion summary:

- continuous controls use the average value: temperature, dropout, onset mask
- periodic uses the most common value during the recording

When recording stops, that summary is sent to the Max knobs.
When Unloop is clicked, Max waits briefly so Python can re-apply the summary before generation starts.

Press `r` while the webcam window is active to manually start/stop the averaging window.
Press `u` while the webcam window is active to apply the summary and trigger the Unloop button in Max.
Press `q` to quit the webcam script.

## OSC Messages

The script sends these OSC addresses to Max:

```text
/motion/features     arm_height motion_energy arm_spread
/motion/temperature  value
/motion/dropout      value
/motion/onsetmask    value
/motion/periodic     value
/motion/unloop       1
```

The default target is:

```text
host: 127.0.0.1
port: 9100
```

## Limitations

- MediaPipe webcam tracking is 2D and coarse.
- It will not capture detailed tap foot articulation well.
- The current prototype controls generation parameters; it does not retrain VampNet.

## Next Research Step

1. Record synchronized motion and audio.
2. Extract motion features per audio chunk.
3. Add a learned motion encoder.
4. Condition VampNet on that motion embedding during training or sampling.

This prototype only tests which movement features feel musically useful before building the larger model.
