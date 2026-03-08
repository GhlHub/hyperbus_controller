# HB_DQ vs HB_CK_P Relative Output Timing (Implemented Design)

Note: `hyperram_test_proj` is not present in this workspace; implemented timing was taken from:
- `/raid/work/hyperbus_ai3/hyperbus_test_proj/timing_extract_impl/`

Source reports:
- `hb_ck_p_output_min.rpt`
- `hb_ck_p_output_max.rpt`
- `hb_dq_output_min.rpt`
- `hb_dq_output_max.rpt`

## Extracted Implemented Delays (ns)

- `hb_ck_p` output delay:
  - `min = 0.494`
  - `max = 1.162`

- `hb_dq[7:0]` output delay (per-bit min):
  - `[0]=0.722 [1]=0.703 [2]=0.737 [3]=0.721 [4]=0.715 [5]=0.701 [6]=0.703 [7]=0.714`
  - Aggregate `dq_min_all = 0.701`

- `hb_dq[7:0]` output delay (per-bit max):
  - `[0]=1.638 [1]=1.608 [2]=1.679 [3]=1.635 [4]=1.646 [5]=1.595 [6]=1.618 [7]=1.628`
  - Aggregate `dq_max_all = 1.679`

## Relative Timing (Treat HB_CK_P as Data)

Define:
- `Δ = t(hb_dq at pin) - t(hb_ck_p at pin)`
- `Δ < 0`: DQ leads CK
- `Δ > 0`: DQ lags CK

Best/worst across all `hb_dq[7:0]`:
- `Δ_min = dq_min_all - ck_max = 0.701 - 1.162 = -0.461 ns`
- `Δ_max = dq_max_all - ck_min = 1.679 - 0.494 = +1.185 ns`

So the full relative window is:
- `DQ leads CK by up to 0.461 ns`
- `DQ lags CK by up to 1.185 ns`

## Diagram

```
Time (ns) ---> 0.0      0.494        0.701              1.162              1.679
              |----------|------------|-------------------|-------------------|

hb_ck_p       [ earliest CK edge ]----------------------[ latest CK edge ]
              ^ 0.494 ns                                      ^ 1.162 ns

hb_dq[7:0]                 [ earliest DQ ]-------------------------------[ latest DQ ]
                           ^ 0.701 ns                                      ^ 1.679 ns

Relative Δ = DQ - CK:
  Δ_min = -0.461 ns  (DQ leads CK)
  Δ_max = +1.185 ns  (DQ lags CK)
```
