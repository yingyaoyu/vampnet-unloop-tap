# MediaPipe Gesture → Unloop → VampNet

This repository contains a live gesture-controlled music-generation pipeline:

```text
Webcam
  → MediaPipe pose tracking
  → gesture features sent over OSC
  → Unloop in Max/MSP
  → VampNet generation
  → generated audio returned to Max
```

The controller extracts three gesture features:

- **Arm height** controls VampNet temperature and input gain.
- **Motion energy** controls dropout and onset masking; the input-FX filter,
  Q, and drive controls are currently disabled so only input gain changes in
  that Max control strip.
- **Arm spread** selects periodic values `3`, `7`, or `13`.

The current version starts with `n64`, but the model can be changed in Max.

## Requirements

The pipeline was tested with:

- Python 3.11
- Max 9
- PyTorch 2.4.1
- MediaPipe 0.10.35
- OpenCV 4.10.0.84
- python-osc 1.10.2
- Gradio 5.28.0

An Apple Silicon Mac or an NVIDIA GPU is strongly recommended. VampNet can run
on CPU, but generation will be much slower. Allow at least 10 GB of free disk
space for the Python environment and model weights.

## 1. Install the system applications

Install [Max 9](https://cycling74.com/downloads).

The Max patch also requires these third-party externals:

- [`karma~`](https://github.com/rconstanzo/karma)
- [`shell`](https://github.com/jeremybernstein/shell)

### Install `karma~`

1. Open Max.
2. Select **File → Show Package Manager**.
3. Search for `karma` and click **Install**.
4. Restart Max after installation.

### Install `shell`

`shell` is not currently listed in Max's Package Manager.

1. Download
   [`shell.zip` from the shell 1.0b3 release](https://github.com/jeremybernstein/shell/releases/download/1.0b3/shell.zip).
2. Unzip the download. It contains a folder named `shell`.
3. Move the entire `shell` folder into:

   ```text
   ~/Documents/Max 9/Packages/
   ```

4. Quit and reopen Max.

When the patch opens, the `karma~` and `shell` objects should not appear orange
or report that they are missing.

## 2. Clone the repository

```bash
git clone https://github.com/yingyaoyu/vampnet-unloop-tap.git
```

## 3. Create the Python environment

Run the included setup script:

```bash
./setup.sh
```

The script creates the `gesture-vampnet` Conda environment, installs the tested
dependencies, creates the runtime folders, and verifies the installation.
When it finishes, activate the environment:

```bash
conda activate gesture-vampnet
```

The script also prints the Python path that must be pasted into the Max patch.

## 4. Download the VampNet weights

VampNet downloads its public weights from:

- [hugggof/vampnet on Hugging Face](https://huggingface.co/hugggof/vampnet)

The first launch of `app.py` downloads the base VampNet checkpoints. The first
time a fine-tuned model is selected, VampNet downloads that model's checkpoints
automatically.

The resulting local files follow this structure:

```text
vampnet-main/models/vampnet/
├── coarse.pth
├── c2f.pth
├── codec.pth
├── wavebeat.pth
└── loras/
    └── <model-name>/
        ├── coarse.pth
        └── c2f.pth
```

These model files are several gigabytes and are intentionally excluded from
Git.

## 5. Choose a VampNet model

The current default version uses `n64`.

To change the model used for generation:

1. Start the VampNet server.
2. Open `unloop-main/unloop.maxpat`.
3. In the **Technical** panel, use the **model** menu below the Python-path
   field.
4. Select another model, such as `default`, `percussion`, `machines`, or
   another available fine-tuned model.
5. Run Unloop normally. The model downloads automatically the first time it is
   used.

The model selected in Max is sent to VampNet with every generation request.
Automatic download applies to model names listed by this project and requires
working access to Hugging Face. If the download fails, generation stops and the
error appears in the VampNet terminal.

Optionally, change which model the VampNet server loads at startup by editing:

```text
vampnet-main/DEFAULT_MODEL
```

Replace `n64` with the desired model name, save the file, and restart
`vampnet-main/app.py`. This startup setting does not prevent selecting a
different model later in Max.

Public model names are listed in:

```text
vampnet-main/conf/available_finetuned.json
```

## 6. Configure Max

Activate the environment and copy its Python path:

```bash
conda activate gesture-vampnet
which python
```

Open this patch in Max:

```text
unloop-main/unloop.maxpat
```

In the Unloop interface:

1. Paste the result of `which python` into the Python-path field.
2. Do not leave the original `/Users/...` Python path in the field.
3. Set the VampNet server/API field to:

   ```text
   http://127.0.0.1:7860/
   ```

4. Choose the desired model from the **model** menu at the bottom of the
   Technical panel. The current version defaults to `n64`.
5. Select the correct audio input and output devices.
6. Turn Max DSP on.

The relevant pipeline files are:

- `unloop-main/motion_to_unloop.py`: MediaPipe webcam controller
- `unloop-main/models/pose_landmarker_lite.task`: pose-tracking model
- `unloop-main/unloop.maxpat`: main Max patch and motion-controlled input FX
- `unloop-main/vamper.maxpat`: Unloop engine and OSC receiver
- `unloop-main/vamp.py`: client that sends recorded audio to VampNet
- `vampnet-main/app.py`: local VampNet Gradio server

The gesture controller sends controls to Max on OSC port `9100`. Max sends
recording and Unloop events back to the controller on port `9101`.

## 7. Start the pipeline

Start the components in this order.

### Terminal 1: VampNet server

```bash
conda activate gesture-vampnet
cd /path/to/vampnet-unloop-tap/vampnet-main
python app.py
```

The first run may take a while because the weights must download and load.
Wait for:

```text
Running on local URL: http://127.0.0.1:7860
```

Open [http://127.0.0.1:7860](http://127.0.0.1:7860) in a browser to confirm
that the server is running.

To run the VampNet server on a GPU machine and control it from another
computer, start the app and choose `public` when prompted:

```bash
python app.py
```

Copy the printed `https://...gradio.live/` URL into the Max server URL field.

### Max: Unloop

Open:

```text
unloop-main/unloop.maxpat
```

Confirm the Python path and server URL, select the audio devices, and turn DSP
on.

### Terminal 2: MediaPipe gesture controller

```bash
conda activate gesture-vampnet
cd /path/to/vampnet-unloop-tap/unloop-main
python motion_to_unloop.py
```

Remember to allow camera access for the terminal application in system settings. Also allow microphone access for Max.The webcam window should display the detected skeleton and mapped gesture
values.

### Adjust arm-height input gain

Arm height controls a binary input-gain boost before the audio is sent into
Unloop/VampNet. The default is:

```text
arms below 0.78 arm_height: 0 dB
arms at or above 0.78 arm_height: +60 dB
```

To change the boost for one run, start the gesture controller with
`--loudness-boost-db`:

```bash
python motion_to_unloop.py --loudness-boost-db 34
```

Use `60` or `80` carefully and keep the speaker/headphone volume low first.
The Max patch allows up to `+80 dB`, but those values clip easily.

To make a new value the default, edit this line in
`unloop-main/motion_to_unloop.py`:

```python
LOUDNESS_BOOST_GAIN_DB = 60.0
```

## 8. Use the pipeline

The normal workflow is:

1. Click "Record" to start recording in Max.
2. Move while recording.
3. Max tells the gesture script to collect motion values over port `9101`.
4. Click "Stop" to stop recording.(Max: 9s)
5. The gesture script summarizes the movement and sends the controls to Max
   over port `9100`.
6. Click **Unloop**.
7. Max saves the loop to a temporary WAV file and runs
   `unloop-main/vamp.py`.
8. VampNet generates new audio and Max loads the result into the looper.
9. The generated file is also automatically saved in `unloop-main/audio`.

Webcam keyboard shortcuts:

- `r`: start or stop the motion-summary window manually
- `u`: apply the latest motion summary and trigger Unloop
- `q`: quit the gesture controller

## 9. Test MediaPipe separately

To test the webcam controller without Max:

```bash
cd unloop-main
python motion_to_unloop.py --print-only
```

Move in front of the camera and confirm that `arm_height`, `energy`, and
`spread` change. Press `q` to quit.

For the complete test, confirm that:

- gesture values change controls in Max;
- recording creates an input WAV file under `unloop-main/audio/`;
- clicking Unloop displays VampNet generation status;
- an output WAV appears under `unloop-main/audio/`;
- Max loads and plays the generated result.
- Change the dry/wet knob to adjust the volumn of the input and generated audio.

## Troubleshooting

### A Python module is missing

Confirm that the environment is active:

```bash
conda activate gesture-vampnet
which python
```

Then repeat the installation commands from section 3.

For a missing `pyharp` import:

```bash
python -m pip install -r vampnet-main/requirements.txt
```

### A port is already in use

The pipeline uses:

- `7860`: VampNet Gradio server
- `9100`: gesture controls received by Max
- `9101`: Max events received by the gesture script

Stop older copies of `app.py` or `motion_to_unloop.py`, then restart the
pipeline.

### Hugging Face downloads fail

If automatic downloading still fails, download the weights manually:

1. Open the [VampNet weight repository](https://huggingface.co/hugggof/vampnet/tree/main).
2. Download these four base files:

   ```text
   coarse.pth
   c2f.pth
   codec.pth
   wavebeat.pth
   ```

3. Save them here:

   ```text
   vampnet-main/models/vampnet/
   ```

4. For a fine-tuned model, open the
   [`loras` folder](https://huggingface.co/hugggof/vampnet/tree/main/loras),
   choose the model, and download its `coarse.pth` and `c2f.pth`.
5. Save those two files under a folder with the same model name:

   ```text
   vampnet-main/models/vampnet/loras/<model-name>/
   ```

If the network requires a local HTTP proxy:

```bash
export VAMPNET_PROXY=http://127.0.0.1:<PROXY_PORT>
python app.py
```

## Licenses and attribution

The original projects retain their licenses and copyright notices:

- VampNet: `vampnet-main/LICENSE`
- Unloop: `unloop-main/LICENSE`
- WaveBeat: `wavebeat-main/LICENSE`

The Vampnet pretrained weights use a separate
[CC BY-NC-SA 4.0 license](https://creativecommons.org/licenses/by-nc-sa/4.0/).
