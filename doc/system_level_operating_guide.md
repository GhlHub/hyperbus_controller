<!-- SPDX-FileCopyrightText: 2026 Glen Lowe -->
<!-- SPDX-License-Identifier: Apache-2.0 -->
# HyperBus System-Level Operating Guide

Last updated: 2026-04-17

## Scope

This note describes how to bring up, tune, and debug the checked-in project as a
system.

- recommended software bring-up order
- how to tune CK and RWDS delays
- which debug signals and counters are most useful when the interface misbehaves
- checked-in project integration details that are useful during lab debug

The theory of operation is maintained in:

- `doc/theory_of_operation.md`

This note intentionally does not repeat the full controller narrative. It assumes
the architecture, transaction flow, and clocking model described there.

This note is complementary to:

- `doc/hyperbus_phy_design_notes.md` for primitive-level PHY rules
- `doc/implemented_ff_by_clock_domain.md` for implemented resource counts
- the timing notes under `doc/*.md` for extracted pin-level timing windows

## Checked-In Project Variants

The repo now carries two checked-in project variants for system bring-up:

- `vivado_projects/hyperbus_test_proj`
  - delay-based project using `PHY_IO_STYLE=IO_DELAY`
- `vivado_projects/hyperbus_hdio`
  - phased-clock project using `PHY_IO_STYLE=EXT_CLK_PHASE_SHIFT`

Important status note:

- the currently passing phased-clock implementation is the `hyperbus_hdio`
  project routed on HPIO
- that is not yet a true HDIO-routed lab validation
- the project name is kept because the architecture is intended to support that
  direction once hardware becomes available for it
- a direct HDIO-routed verification may be possible in the coming year

Current speed expectation note:

- 1.8 V operation remains the 200 MHz target
- for 3.0 V / 3.3 V HyperRAM on this part, treat 166 MHz as the expected
  top-end operating point
- the phased-clock solution is expected to translate well to that lower rate,
  because 166 MHz should be easier to close than the present 200 MHz case

## Checked-In Project Clock Sources

In the checked-in block design, `hyperbus_controller_0` uses five `clk_wiz_0`
outputs:

| Clock wizard output | Controller input / use | Notes |
| --- | --- | --- |
| `clk_out1` | `i_hb_clk_200` | Main 200 MHz HyperBus fabric clock |
| `clk_out2` | `i_hb_clk_200_samp_90` | 200 MHz sample clock shifted by 90 degrees for `IDDRE1` capture |
| `clk_out3` | `i_axi_aclk` | 50 MHz AXI / software / ILA clock |
| `clk_out4` | `i_ref_clk_300` | 300 MHz `IDELAYCTRL` reference |
| `clk_out5` | `i_hb_clk_200_gated` | Gated 200 MHz clock used only for HyperBus CK forwarding |

Checked-in project wiring notes:

- `i_hb_clk_200_gated` is not a LUT-gated derivative of `i_hb_clk_200`.
- In the checked-in Vivado design, it is a separate `clk_wiz_0` output.
- `hyperbus_controller_0/o_hb_clk_ce` drives `clk_wiz_0/clk_out5_ce`.

The AXI-Lite local register `HB_CLK_CE_FORCE` (`0x008C`, bit0) is ORed with the
engine-generated enable. Software can use this to force the gated CK path on during
bring-up, delay calibration, or debug.

## Recommended Bring-Up Sequence

For the delay-based checked-in project and software flow, use this order:

1. Ensure `clk_wiz_0` is locked and controller resets are released.
2. Bring up delay control blocks before depending on read capture:
   - call `hb_dly_init(base, timeout_polls)`, or
   - perform the equivalent AXI-Lite sequence manually:
     - assert delay resets
     - wait for `IDELAYCTRL_STATUS[0]`
     - release ODELAY / RWDS IDELAY resets
3. Read controller `VERSION` and HyperRAM `ID0` / `ID1` through AXI-Lite to confirm
   basic command and read-path operation.
4. If `ID0` is unstable or incorrect, tune CK ODELAY first.
5. If CK timing looks reasonable but read capture still fails, tune RWDS IDELAY.
6. Run a wider memory test only after register-space reads are stable.

Practical note:

- The software helpers already force `HB_CLK_CE_FORCE` when needed during delay
  reset and ODELAY stepping, because the gated CK path must be running for that
  logic to behave predictably.

For the phased-clock project (`hyperbus_hdio`), the high-level order changes:

1. Ensure the clock wizard and phase-control block are reachable and locked.
2. Wait the full HyperRAM power-on guard interval before the first access.
3. Sweep one full MMCM phase cycle while repeatedly reading HyperRAM `ID0`.
4. Choose the midpoint of the widest passing phase window.
5. Run the image load / verify flow only after phase calibration is stable.

## Delay-Control Workflow

### CK ODELAY

Relevant registers:

- `0x0100` `CK_P_ODELAY_CTRL`
- `0x0104` `CK_P_ODELAY_TIME`
- `0x0108` `CK_P_ODELAY_STATUS`

Useful helper APIs:

- `hb_odly_get()`
- `hb_odly_set()`
- `hb_odly_inc()`
- `hb_odly_dec()`
- `hb_odly_sweep()`

Recommended workflow:

1. Initialize delay blocks with `hb_dly_init()`.
2. Sweep CK delay while repeatedly reading HyperRAM `ID0`.
3. Record regions where `ID0 == 0x00000C81` and `ERR_STATUS` stays clear.
4. Choose a stable interior point, not an edge of the passing window.

`hb_odly_sweep()` is a useful first-pass tool because it prints:

- `CNTVALUEOUT`
- `ID0`
- `ERR_STATUS`
- `AXIF_RWDS_CNTR`
- `AXIL_RWDS_CNTR`

### RWDS IDELAY

Relevant registers:

- `0x01C0` `RWDS_IDELAY_CTRL`
- `0x01C4` `RWDS_IDELAY_TIME`
- `0x01C8` `RWDS_IDELAY_STATUS`
- `0x0300 + n*0x10` `DQn_IDELAY_CTRL` for `n=0..7`
- `0x0304 + n*0x10` `DQn_IDELAY_TIME` for `n=0..7`
- `0x0308 + n*0x10` `DQn_IDELAY_STATUS` for `n=0..7`

Useful helper APIs:

- `hb_rwds_idly_inc_until()`
- `hb_rwds_idly_dec_below_16()`

Recommended workflow:

1. First establish a stable CK ODELAY setting.
2. Then move RWDS IDELAY to center the read-valid window.
3. Re-check `ID0`, AXI-Lite register reads, and AXI-full data reads after each
   meaningful change.

## Phased-Clock Calibration Workflow

The phased-clock bootloader in `vitis_ws4/bootloader_hdio` replaces CK ODELAY
stepping with software control of an MMCM/clock-wizard phase-shift block.

Relevant software helper:

- `software/clk_wiz_phase_ctrl.c`
- `software/clk_wiz_phase_ctrl.h`

Practical workflow:

1. Wait the full HyperRAM startup guard interval before the first bus access.
2. Sweep all `336` phase steps in the current full-cycle configuration.
3. Read HyperRAM `ID0` at each step and mark pass/fail.
4. Find the widest contiguous passing region.
5. Step to the midpoint of that region and continue the boot flow.

This is the calibration path used by the currently passing `hyperbus_hdio`
implemented design.

## Debug Signals and Counters

Most useful top-level debug outputs:

- `o_dbg_dq_q1_dly`
- `o_dbg_dq_q2_dly`
- `o_dbg_rwds_q1_dly`
- `o_dbg_rwds_q2_dly`
- `o_dbg_hb_cs_n_q`
- `o_dbg_dq_o_d1`
- `o_dbg_dq_o_d2`
- `o_dbg_rwds_o_d1`
- `o_dbg_rwds_o_d2`
- `o_dbg_i_dq_t`
- `o_dbg_i_rwds_t`

Most useful status registers:

- `ERR_STATUS` (`0x0080`)
- `AXIF_RWDS_CNTR` (`0x0084`)
- `AXIL_RWDS_CNTR` (`0x0088`)
- `IDELAYCTRL_STATUS` (`0x0204`)
- `CK_P_ODELAY_STATUS` (`0x0108`)
- `RWDS_IDELAY_STATUS` (`0x01C8`)

## Symptom-Oriented Debug Guide

### No HyperBus CK at the pin

Check:

- `o_hb_clk_ce`
- `HB_CLK_CE_FORCE`
- block-design connection from `o_hb_clk_ce` to `clk_wiz_0/clk_out5_ce`
- `o_hb_cs_n`
- `o_dbg_hb_cs_n_q`

Interpretation:

- If `o_hb_clk_ce` never asserts, the HB engine is not trying to run a transfer.
- If `o_hb_clk_ce` asserts but CK is still missing, inspect the `clk_out5` path,
  CK ODDRE1 forwarding path, and CK output delay/reset state.

### CS# toggles but ID reads fail

Check:

- `ERR_STATUS`
- `AXIL_RWDS_CNTR`
- CK ODELAY status/value
- RWDS IDELAY status/value

Interpretation:

- If RWDS counters stay at zero, the memory is likely not responding or the sample
  point is too far off.
- If RWDS counters increment but returned data is wrong, capture alignment or DQ
  timing is more likely than total transaction failure.

### RWDS activity is present but read data is wrong

Check:

- `o_dbg_rwds_q1_dly`
- `o_dbg_rwds_q2_dly`
- `o_dbg_dq_q1_dly`
- `o_dbg_dq_q2_dly`

Interpretation:

- This usually points to capture-window placement, CK/RWDS delay tuning, or
  read-path phase alignment rather than command sequencing.

### Writes appear to work but later reads fail

Check:

- CK ODELAY sweep result
- RWDS IDELAY setting
- `o_dbg_i_dq_t` / `o_dbg_i_rwds_t`
- `o_dbg_dq_o_d1/d2` and `o_dbg_rwds_o_d1/d2`

Interpretation:

- Successful writes do not prove the read sample point is centered.
- A marginal interface often shows up first as read instability while write traffic
  still appears functional.

## Integration Notes

- The reusable controller interface still expects these clocks as explicit inputs.
- In the checked-in project, `i_hb_clk_200_gated` is sourced internally from
  `clk_wiz_0/clk_out5`; another integrating project must provide an equivalent
  gated 200 MHz clock path.
- If the controller top-level interface changes, regenerate the packaged IP and
  the consuming block-design / `.xci` artifacts together.
- The controller/PHY docs assume single-ended HyperBus CK operation:
  `o_hb_ck_p` is the real forwarded clock and `o_hb_ck_n` is held low.

## Related Notes

- `doc/theory_of_operation.md`
- `doc/hyperbus_phy_design_notes.md`
- `doc/implemented_ff_by_clock_domain.md`
- `doc/hb_dq_input_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_output_relative_timing.md`
- `doc/odelaye3_SUP.md`
