import argbind
import shutil
import time
from gradio_client import Client, handle_file
from pathlib import Path


def _status_label(value) -> str:
    label = str(value).strip().split(".")[-1]
    label = "".join(ch if ch.isalnum() else "_" for ch in label).strip("_")
    return label.upper() or "UNKNOWN"


def _emit_status(value) -> None:
    print(f"STATUS STATUS.{_status_label(value)}", flush=True)


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
    seed: int = 0,
):
    _emit_status("STARTING")
    try:
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
            print(f"{output_file}", flush=True)

        _emit_status("SUBMITTING")
        job = client.submit(
            input_audio=handle_file(str(audio_file)),
            sampletemp=temp,
            top_p=0.0,
            periodic_p=periodic_hint_freq,
            dropout=dropout,
            stretch_factor=1.0,
            onset_mask_width=onset_mask_width,
            typical_filtering=bool(typical_filter),
            typical_mass=0.15,
            typical_min_tokens=64,
            seed=seed,
            model_choice=checkpoint_name,
            n_mask_codebooks=3,
            pitch_shift_amt=0,
            sample_cutoff=1.0,
            sampling_steps=num_steps,
            beat_mask_ms=beat_mask_ms,
            num_feedback_steps=1,
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
        save_output(result[0])
        _emit_status("DONE")
    except Exception as exc:
        _emit_status("ERROR")
        print(f"ERROR {type(exc).__name__}: {exc}", flush=True)
        raise

Vamp = argbind.bind(without_prefix=True)(vamp)
if __name__ == "__main__":
    args = argbind.parse_args()

    with argbind.scope(args):
        Vamp()
