# HB_DQ vs HB_CK_P Timing (Implemented Design)

Source checkpoint:
- `/raid/work/hyperbus_ai3/hyperbus_test_proj/hyperbus_test_proj.runs/impl_1/design_1_wrapper_routed.dcp`

Extracted pin delays (ns):
- `hb_ck_p` output: `min=0.494`, `max=1.162`
- `hb_dq` output across bits `[7:0]`: `min=0.701`, `max=1.679`

Relative timing definition:
- `Δ = t(hb_dq_at_pin) - t(hb_ck_p_at_pin)`
- `Δ > 0`: DQ lags CK
- `Δ < 0`: DQ leads CK

Computed relative window (best/worst case):
- Earliest DQ vs latest CK: `Δ_min = 0.701 - 1.162 = -0.461 ns` (DQ leads CK by 461 ps)
- Latest DQ vs earliest CK: `Δ_max = 1.679 - 0.494 = +1.185 ns` (DQ lags CK by 1.185 ns)

## Timing Diagram

```
Time (ns) ---> 0.0      0.494        0.701              1.162              1.679
              |----------|------------|-------------------|-------------------|

hb_ck_p pin   [ earliest CK edge ]----------------------[ latest CK edge ]
              ^ 0.494 ns                                      ^ 1.162 ns

hb_dq pin                    [ earliest DQ valid ]--------------------------[ latest DQ valid ]
                             ^ 0.701 ns                                          ^ 1.679 ns

Relative Δ = DQ - CK:
  Best/most-negative:  -0.461 ns  (DQ leads CK)
  Worst/most-positive: +1.185 ns  (DQ lags CK)
```

## Per-Bit DQ Output Max (ns)

- `io_hb_dq_0[0] = 1.638`
- `io_hb_dq_0[1] = 1.608`
- `io_hb_dq_0[2] = 1.679`
- `io_hb_dq_0[3] = 1.635`
- `io_hb_dq_0[4] = 1.646`
- `io_hb_dq_0[5] = 1.595`
- `io_hb_dq_0[6] = 1.618`
- `io_hb_dq_0[7] = 1.628`
