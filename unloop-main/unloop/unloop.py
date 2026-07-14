import argbind
import shutil
import time
import wave
from gradio_client import Client, handle_file
from pathlib import Path

import numpy as np


def _status_label(value) -> str:
    label = str(value).strip().split(".")[-1]
    label = "".join(ch if ch.isalnum() else "_" for ch in label).strip("_")
    return label.upper() or "UNKNOWN"


def _emit_status(value) -> None:
    print(f"STATUS STATUS.{_status_label(value)}", flush=True)


def _validate_n_mask_codebooks(value: int) -> int:
    value = int(value)
    if not 0 <= value <= 14:
        raise ValueError(
            "compression / n_mask_codebooks must be between 0 and 14."
        )
    return value


def _apply_output_gain(path: Path, gain_db: float) -> None:
    gain_db = float(gain_db)
    if abs(gain_db) < 1e-9:
        return

    gain = 10.0 ** (gain_db / 20.0)
    with wave.open(str(path), "rb") as wav:
        params = wav.getparams()
        frames = wav.readframes(params.nframes)

    if params.sampwidth != 2:
        raise ValueError(
            f"output_gain_db currently supports 16-bit PCM WAV files, got {params.sampwidth * 8}-bit audio."
        )

    samples = np.frombuffer(frames, dtype="<i2").astype(np.float32)
    boosted = np.clip(np.rint(samples * gain), -32768, 32767).astype("<i2")
    clipped = int(np.count_nonzero(np.abs(samples * gain) > 32767))

    with wave.open(str(path), "wb") as wav:
        wav.setparams(params)
        wav.writeframes(boosted.tobytes())

    print(
        f"OUTPUT_GAIN applied {gain_db:.2f} dB to {path}"
        + (f" ({clipped} clipped samples)" if clipped else ""),
        flush=True,
    )


def vamp(
    servername: str = "http://127.0.0.1:7860/", 
    audio_path: str = "vampnet-input.wav", 
    output_path: str = "vampnet-output.wav", 
    temp: float = 1.0,
    periodic_hint_freq: int = 32,
    onset_mask_width: int = 0,
    beat_mask_ms: int = 0, 
    downbeats_only: int = 1,
    typical_filter: int = 0, 
    num_steps: int = 32,
    checkpoint_name: str = "default", 
    dropout: float = 0.0,
    n_mask_codebooks: int = 3,
    top_p: float = 0.0,
    pitch_shift_amt: int = 0,
    sample_cutoff: float = 1.0,
    typical_mass: float = 0.15,
    typical_min_tokens: int = 64,
    stretch_factor: float = 1.0,
    num_feedback_steps: int = 1,
    output_gain_db: float = 0.0,
    seed: int = 0,
):
    _emit_status("STARTING")
    try:
        n_mask_codebooks = _validate_n_mask_codebooks(n_mask_codebooks)
        # print(dir(Client))
        audio_file = Path(audio_path).expanduser()
        output_file = Path(output_path).expanduser()
        audio_file.parent.mkdir(exist_ok=True, parents=True)
        output_file.parent.mkdir(exist_ok=True, parents=True)
        if not audio_file.exists():
            raise FileNotFoundError(
                f"Input audio file was not created: {audio_file}. "
                "In Max, record/stop first, then click Unloop, and check the Max console "
                "for writewave or audio-device errors."
            )
        if audio_file.stat().st_size == 0:
            raise ValueError(f"Input audio file is empty: {audio_file}")

        _emit_status("CONNECTING")
        client = Client(
            servername,
            verbose=False,
            httpx_kwargs={"trust_env": False},
        )

        def save_output(output_audio):
            shutil.copy(output_audio, output_file)
            _apply_output_gain(output_file, output_gain_db)
            return output_file

        _emit_status("SUBMITTING")
        job = client.submit(
            input_audio=handle_file(str(audio_file)),
            sampletemp=temp,
            top_p=top_p,
            periodic_p=periodic_hint_freq,
            dropout=dropout,
            stretch_factor=stretch_factor,
            onset_mask_width=onset_mask_width,
            typical_filtering=bool(typical_filter),
            typical_mass=typical_mass,
            typical_min_tokens=typical_min_tokens,
            seed=seed,
            model_choice=checkpoint_name,
            n_mask_codebooks=n_mask_codebooks,
            pitch_shift_amt=pitch_shift_amt,
            sample_cutoff=sample_cutoff,
            sampling_steps=num_steps,
            beat_mask_ms=beat_mask_ms,
            num_feedback_steps=num_feedback_steps,
            api_name="/vamp_1",
        )

        last_status = None
        while not job.done():
            status = _status_label(job.status().code)
            if status != last_status:
                _emit_status(status)
                last_status = status
            time.sleep(0.1)

        result = job.result()
        saved_output = save_output(result[0])
        _emit_status("DONE")
        print(f"{saved_output}", flush=True)
    except Exception as exc:
        _emit_status("ERROR")
        print(f"ERROR {type(exc).__name__}: {exc}", flush=True)
        raise

Vamp = argbind.bind(without_prefix=True)(vamp)
if __name__ == "__main__":
    args = argbind.parse_args()

    with argbind.scope(args):
        Vamp()
