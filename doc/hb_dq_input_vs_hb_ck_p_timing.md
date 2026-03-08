# HB_DQ Input Timing vs o_hb_ck_p_0 (Implemented Design)

Source reports (implemented design):
- `/raid/work/hyperbus_ai3/hyperbus_test_proj/timing_extract_impl/hb_dq_input_min.rpt`
- `/raid/work/hyperbus_ai3/hyperbus_test_proj/timing_extract_impl/hb_dq_input_max.rpt`

Extracted implemented input delay to IDDRE1.D:
- `t_in_min = 0.256 ns`
- `t_in_max = 0.783 ns`

Clocking assumption requested:
- External input data is launched relative to `o_hb_ck_p_0`.
- `IDDRE1` sample clock is `90°` shifted from HyperBus CK.
- HyperBus clock period `T = 5.000 ns` (200 MHz), so sample edge offset is:
  - `t_sample = T/4 = 1.250 ns` after `o_hb_ck_p_0` edge.

Relative timing at IDDRE1 input (from a CK-referenced external data transition):
- Earliest DQ arrival at IDDRE1.D: `0.256 ns`
- Latest DQ arrival at IDDRE1.D: `0.783 ns`
- IDDRE1 sample edge: `1.250 ns`

Best/worst input timing to sampling edge:
- Best-case setup margin: `1.250 - 0.256 = 0.994 ns`
- Worst-case setup margin: `1.250 - 0.783 = 0.467 ns`

## Timing Diagram (Input Path)

```
Time (ns) ---> 0.000        0.256          0.783                 1.250
              |-------------|--------------|----------------------|

o_hb_ck_p_0   ^ launch edge / timing reference

HB_DQ @IDDRE1.D           [ earliest arrival ]----[ latest arrival ]
                          ^ 0.256 ns               ^ 0.783 ns

IDDRE1 sample edge                                           ^ 1.250 ns (+90°)

Margins to sample edge:
- Best (earliest data): +0.994 ns
- Worst (latest data):  +0.467 ns
```
