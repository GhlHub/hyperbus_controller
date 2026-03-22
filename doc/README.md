<!-- SPDX-FileCopyrightText: 2026 Glen Lowe -->
<!-- SPDX-License-Identifier: Apache-2.0 -->
# HyperBus Controller Documentation

Last updated: 2026-03-20

## Start Here

This file is the documentation index. The definitive controller narrative is:

- `doc/theory_of_operation.md`

Use the companion documents for narrower topics:

- `doc/system_level_operating_guide.md`
  - checked-in project bring-up, delay tuning, debug workflow, integration notes
- `doc/hyperbus_phy_design_notes.md`
  - PHY implementation constraints and change checklist
- `doc/implemented_ff_by_clock_domain.md`
  - implemented resource counts
- `doc/hb_dq_input_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_output_relative_timing.md`
  - extracted timing windows

## Overview

This project implements a HyperBus / HyperRAM controller with:

- AXI4-Full slave data path
- AXI4-Lite slave control and register path
- HyperBus physical interface using Xilinx primitives

Reference assumptions:

- AXI clock: 50 MHz
- HyperBus clock: 200 MHz
- External 90-degree HyperBus sample clock: `i_hb_clk_200_samp_90`

Main RTL:

- `rtl/hyperbus_controller.sv`
- `rtl/hyperbus_axi_full_frontend.sv`
- `rtl/hyperbus_axi_lite_frontend.sv`
- `rtl/hyperbus_hb_engine.sv`
- `rtl/hyperbus_phy_xilinx.sv`
- `rtl/hyperbus_fifo_bank_xilinx.sv`

For block responsibilities, internal data flow, clocking semantics, transaction
sequencing, and read-path alignment, refer to `doc/theory_of_operation.md`.

## Testbench

Primary testbench:

- `tb/hyperbus_controller_tb.sv`
- `tb/hyperbus_tb_axi_tasks.svh`
- `tb/hyperbus_tb_checks.svh`
- `tb/hyperbus_tb_sequences.svh`

Testbench partitioning:

- `hyperbus_controller_tb.sv`
  - DUT/model hookup, clock/reset generation, shared state, test run order
- `hyperbus_tb_axi_tasks.svh`
  - AXI-full/AXI-lite transaction driver tasks
- `hyperbus_tb_checks.svh`
  - Common check/helper tasks and functions
- `hyperbus_tb_sequences.svh`
  - Higher-level scenario tasks composed from drivers/checks

Contains self-checking cases for:

- AXI-lite ID/CR defaults and CR0 write/readback
- AXI-lite held-valid stress (`AWVALID`/`ARVALID` held extra cycles) with
  command-push counting checks (`exactly one command per request`)
- AXI-full single-beat write/read
- AXI-full WSTRB masked write/read
- AXI-full malformed `WLAST` checks (early and missing-final) expecting `SLVERR`
- AXI-full same-cycle read+write request arbitration/data-integrity check
- AXI-full burst sweep from 2 to 32 beats (write/read, self-checking)

Simulation compile note:

- `sim_m/xsim/vlog.prj` includes `-i "../../tb"` so xvlog can resolve TB `include` files.

## Vivado IP Packaging

Use the batch Tcl flow to package the RTL as a local Vivado IP:

```bash
vivado -mode batch -source scripts/package_hyperbus_ip.tcl
```

Output location:

- `ip_repo/hyperbus_controller/component.xml`

Notes:

- Target part is `xcsu35p-2sbvb625e`.
- The packager imports RTL from `rtl/` only (no testbench files).
- Top-level ODELAY debug outputs (`o_ck_p_odly_*`) were removed from the controller interface;
  ODELAY control is now software-driven through AXI-Lite registers.
- If the controller top-level interface changes, also regenerate the consuming block-design/IP-instance artifacts
  (for example `design_1.bd` and `design_1_hyperbus_controller_0_0.xci`) so the new ports appear in the project.

Clock constraint note:

- The reusable controller source package does not include a dedicated standalone
  controller `.xdc`.
- The checked-in Vivado project does contain project-level constraints, including
  [`hyperbus_test_proj/hyperbus_test_proj.srcs/constrs_1/new/constraints.xdc`](/raid/work/hyperbus_ai3/hyperbus_test_proj/hyperbus_test_proj.srcs/constrs_1/new/constraints.xdc).
- In an integrating project, apply single-ended clock constraints to HyperBus `CK`
  on `o_hb_ck_p` and do not model `o_hb_ck_n` as a differential complement output.

### OOC Synthesis Troubleshooting (`hyperbus_controller_0`)

If block design OOC synthesis fails with:

- `module 'xpm_fifo_async' not found`

follow these Vivado Tcl steps:

```tcl
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]
update_ip_catalog
generate_target all [get_files *.bd]
reset_run design_1_hyperbus_controller_0_0_synth_1
launch_runs design_1_hyperbus_controller_0_0_synth_1
```

This ensures the FIFO XPM library is available during the `hyperbus_controller_0` out-of-context synthesis run.

## Flow Diagrams

Multi-beat AXI flow diagrams are available at:

- `doc/jpg/multibeat_axi_write_flow.jpg`
- `doc/jpg/multibeat_axi_read_flow.jpg`
- `doc/jpg/hb_tx_datapath_fabric_to_pins.jpg`

Diagram generator scripts:

- `doc/py/multibeat_axi_write_flow.py`
- `doc/py/multibeat_axi_read_flow.py`
- `doc/dot/hb_tx_datapath_fabric_to_pins.jpg.dot`

Reference PDFs are stored under:

- `doc/pdf/hyperbus_spec.pdf`
- `doc/pdf/infineon-s27kl0642-s27ks0642-3.0-v-1.8-v-64-mb-8-mb-hyperram-self-refresh-dram-datasheet-en.pdf`

## Additional Notes

Theory of operation:

- `doc/theory_of_operation.md`

System-level operating guidance:

- `doc/system_level_operating_guide.md`

PHY / primitive implementation notes:

- `doc/hyperbus_phy_design_notes.md`
- `doc/odelaye3_SUP.md`

Implemented timing notes:

- `doc/hb_dq_input_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_output_relative_timing.md`

Implemented resource notes:

- `doc/implemented_ff_by_clock_domain.md`

## AXI-Lite Register Summary

AXI-Lite register map in offset order:

- `0x0000` -> HyperBus `0x0000` (ID0)
- `0x0002` -> HyperBus `0x0000` (ID1 16-bit alias)
- `0x0004` -> HyperBus `0x0002` (ID1)
- `0x0024` VERSION (local, read-only, `0x01000005`)
- `0x0028` DQ (local, read-only, sampled DQ debug view)
- `0x0080` ERR_STATUS (local, bit0 timeout status, W1C)
- `0x0084` AXIF_RWDS_CNTR (local, read-only, 6-bit counter)
- `0x0088` AXIL_RWDS_CNTR (local, read-only, 6-bit counter)
- `0x008C` HB_CLK_CE_FORCE (local, bit0 ORed with `o_hb_clk_ce`, reset default `1`)
- `0x0100` CK_P_ODELAY_CTRL (local)
- `0x0104` CK_P_ODELAY_TIME (local)
- `0x0108` CK_P_ODELAY_STATUS (local)
- `0x01C0` RWDS_IDELAY_CTRL (local)
- `0x01C4` RWDS_IDELAY_TIME (local)
- `0x01C8` RWDS_IDELAY_STATUS (local)
- `0x0200` DELAY_RST_CTRL (local)
  - bit0 IDELAYCTRL reset request
  - bit1 CK_P ODELAY reset request
  - bit2 RWDS and DQ IDELAY reset request
- `0x0204` IDELAYCTRL_STATUS (local, bit0 RDY)
- `0x0300 + n*0x10` DQ`n`_IDELAY_CTRL for `n=0..7` (local)
- `0x0304 + n*0x10` DQ`n`_IDELAY_TIME for `n=0..7` (local)
- `0x0308 + n*0x10` DQ`n`_IDELAY_STATUS for `n=0..7` (local)
- `0x0800` -> HyperBus `0x0800` (CR0)
- `0x0802` -> HyperBus `0x0800` (CR1 16-bit alias)
- `0x0804` -> HyperBus `0x0802` (CR1)

## Software Delay Control API

The software helper library is in:

- `software/hyperbus_odly.h`
- `software/hyperbus_odly.c`
- `software/hyperbus_memtest.h`
- `software/hyperbus_memtest.c`

Current public APIs:

- `hb_odly_get()`
- `hb_odly_set()`
- `hb_odly_inc()`
- `hb_odly_dec()`
- `hb_idelayctrl_reset_wait_ready()`
- `hb_odly_reset_pulse()`
- `hb_dly_init()` (IDELAYCTRL reset/wait + ODELAY reset pulse)
- `hb_odly_sweep()` (prints one-line training status per step:
  `CNTVALUEOUT`, `ID0`, `ERR_STATUS`, AXI RWDS counters)
- `hb_odly_sweep_to_midpoint()` (finds first/last passing CK ODELAY values from
  `ID0`, computes midpoint, then steps back to the midpoint)
- `hb_err_status_read_print_clear()` (reads/prints `ERR_STATUS`, clears timeout bit0 if set)
- `hb_memtest_hyperram_worst_case_bytes()` (runs byte-oriented worst-case patterns:
  solid fills, checkerboards, walking 1/0 bytes, and address-derived byte patterns)

## Post-Impl Simulation Flow

Post-implementation simulation assets are under:

- `hyperbus_test_proj/post_impl/export_post_impl_netlist.tcl`
- `hyperbus_test_proj/post_impl/design_1_wrapper_post_impl_tb.sv`
- `hyperbus_test_proj/post_impl/run_post_impl_xsim.sh`

Flow summary:

1. Export routed netlist + SDF from `impl_1`:
   - Generates `hyperbus_test_proj/post_impl/generated/design_1_wrapper_impl_timesim.v`
   - Generates `hyperbus_test_proj/post_impl/generated/design_1_wrapper_impl.sdf`
2. Compile/elaborate with the post-impl TB and `s27kl0642` HyperRAM model.
3. Run xsim with SDF plusarg:
   - `--testplusarg SDF_FILE=<.../design_1_wrapper_impl.sdf>`

Included post-impl testcase:

- Direct HyperBus register-space read of ID0 (`address 0x0000`) in
  `design_1_wrapper_post_impl_tb.sv`
- Self-checks returned value against `0x0C81` and fails simulation on mismatch

Convenience command:

```bash
./hyperbus_test_proj/post_impl/run_post_impl_xsim.sh
```

## Possible Future Improvements

- AXI-slave power management, but only if it is easy
- Multi-HyperRAM device support
- 16-bit wide HyperRAM device support
- FIFO power management, though this is more difficult than it sounds
- HyperRAM device power management
  - Datasheet wakeup times to account for: hybrid sleep `tEXTHS` up to `100 us`, deep power-down `tEXTDPD` up to `150 us`
