import argbind
import shutil
import time
from gradio_client import Client, handle_file
from pathlib import Path


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
    # print(dir(Client))
    Path(audio_path).parent.mkdir(exist_ok=True, parents=True)
    client = Client(
        servername,
        verbose=False,
        httpx_kwargs={"trust_env": False},
    )


    def save_output(output_audio):
        shutil.copy(output_audio, output_path)
        print(f"{output_path}")

    job = client.submit(
        input_audio=handle_file(audio_path),
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
    
    while not job.done():
        print(f"STATUS {job.status().code}")
        time.sleep(0.1)

    result = job.result()
    save_output(result[0])

Vamp = argbind.bind(without_prefix=True)(vamp)
if __name__ == "__main__":
    args = argbind.parse_args()

    with argbind.scope(args):
        Vamp()
