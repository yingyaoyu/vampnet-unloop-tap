# VampNet Choir Parameter Sweep

Model: `choir`

Input: `input/Dry#15_1_test_12s.wav`

This is a one-parameter-at-a-time sweep. Every row keeps the base parameter
vector fixed and changes only the named sweep parameter. Each run contains two
generated WAV files, a mask image, and `params.json`.

## Lookup

Use `runs.csv` as the source of truth:

- Filter by the selected parameter columns.
- Read `output_1_path` and `output_2_path`.
- `run_dir` points to the folder containing the WAVs, mask, and parameter JSON.
- `params_hash` is a compact key for the complete parameter vector.

`index_by_params_hash.json` provides direct hash-to-output lookup. `runs.jsonl`
contains the same 48 canonical run records in append-friendly JSON format.

## Layout

```text
input/
runs/
  periodic_prompt/
    002_periodic_prompt_low20_3_<hash>/
      params.json
      output_1.wav
      output_2.wav
      mask.png
runs.csv
runs.jsonl
index_by_params_hash.json
sweep_config.json
```

## Tested Values

| Parameter | Values |
| --- | --- |
| periodic prompt | 3, 6, 10 |
| onset mask width | 20, 50, 80 |
| beat mask width (ms) | 41, 101, 160 |
| compression prompt | 4, 7, 11 |
| mask dropout | 0.2, 0.5, 0.8 |
| feedback steps | 2, 5, 7 |
| preset | small variation, medium variation, large variation |
| pitch shift (semitones) | -7, 0, 7 |
| time stretch factor | 2, 4, 6 |
| sampling temperature | 2.08, 5.05, 8.02 |
| top p | 0.2, 0.5, 0.8 |
| typical filtering | false, true |
| typical mass | 0.21, 0.5, 0.79 |
| typical min tokens | 52, 129, 205 |
| sample cutoff | 0.18, 0.45, 0.72 |
| sampling steps | 26, 65, 103 |

The folder also contains one baseline run using the base parameter vector. The
random seed is fixed at `20260617` for comparison with the base and N64 sweeps.
