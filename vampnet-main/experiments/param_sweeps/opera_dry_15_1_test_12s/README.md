# VampNet Opera Parameter Sweep

Model: `opera`

Input: `input/Dry#15_1_test_12s.wav`

This is a one-parameter-at-a-time sweep. Every row keeps the base parameter
vector fixed and changes only the named sweep parameter. Each run contains two
generated WAV files, a mask image, and `params.json`.

## Lookup

`runs.csv` is the compact analysis table and intentionally excludes file paths,
timing, hashes, run directories, and the seed.

Use these files when programmatic output lookup is needed:

- `runs_state.json`: full record for every run, including output paths.
- `runs.jsonl`: the same canonical records in JSON Lines format.
- `index_by_params_hash.json`: groups runs by their complete parameter vector.
- Each run directory contains `params.json`, `output_1.wav`, `output_2.wav`,
  and `mask.png`.

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

The random seed is fixed at `20260617` for comparison with the other model
sweeps.
