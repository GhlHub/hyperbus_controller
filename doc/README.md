# HyperBus Controller Documentation

## Overview

This project implements a HyperBus/HyperRAM controller with:

- AXI4-Full slave data path (32-bit, burst capable up to 128 bytes)
- AXI4-Lite slave register/config path (32-bit single-beat transactions)
- HyperBus physical interface using Xilinx primitives

Target assumptions include:

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

## Block Partitioning

- `hyperbus_controller.sv`
  - Top-level integration only (AXI front-ends, HB engine, FIFO bank, PHY)
- `hyperbus_axi_full_frontend.sv`
  - AXI-full slave handling (AW/W/B and AR/R control, command and data enqueue/dequeue)
- `hyperbus_axi_lite_frontend.sv`
  - AXI-lite single-beat command/response handling
- `hyperbus_hb_engine.sv`
  - HyperBus transaction FSM (CA/latency/read/write/termination control)
- `hyperbus_phy_xilinx.sv`
  - Non-FIFO Xilinx primitive PHY (`BUFGCE`, `ODDRE1`, `OBUF`, `IOBUF`, `IDDRE1`, `IDELAYCTRL`)
  - Configured for single-ended CK mode (`o_hb_ck_p` driven, `o_hb_ck_n` held low)
- `hyperbus_fifo_bank_xilinx.sv`
  - All XPM async FIFOs (`xpm_fifo_async`)

## FIFO Configuration

All FIFO instances are in `rtl/hyperbus_fifo_bank_xilinx.sv`.

- `u_cmd_fifo`: async, standard mode, depth 32, width 75
- `u_wr_fifo`: async, FWFT mode, depth 256, width 36 (`WSTRB+WDATA`)
- `u_rd_fifo`: async, FWFT mode, depth 256, width 32
- `u_b_fifo`: async, standard mode, depth 32, width 1
- `u_axil_rsp_fifo`: async, standard mode, depth 32, width 32

## AXI-Full Behavior

### Writes

- AW supports INCR bursts, 32-bit beats, `AWLEN <= 31` (max 32 beats / 128 bytes).
- W channel pushes directly into `u_wr_fifo` on `WVALID && WREADY`.
- `WLAST` protocol is checked:
  - `WLAST=1` is required only on the final accepted beat.
  - Early or missing-final `WLAST` is flagged as a write protocol error.
- Write command is issued to `u_cmd_fifo` at final accepted beat.
- If `u_cmd_fifo` is full at final beat, command issue is deferred until space is available.
- B response is returned after HyperBus write completion token (`u_b_fifo`).
- `BRESP` behavior:
  - `OKAY (2'b00)` for normal write bursts.
  - `SLVERR (2'b10)` for malformed `WLAST` bursts.

### Reads

- AR supports INCR bursts, 32-bit beats, `ARLEN <= 31`.
- Read data is collected in HyperBus domain and pushed to `u_rd_fifo`.
- AXI side consumes via FWFT FIFO with a one-cycle refill wait guard to avoid duplicate beat sampling.
- RLAST is generated from remaining beat count.

### Read/Write Priority

- If AXI-full read and write commands arrive in the same cycle, write is prioritized first.

## AXI-Lite Behavior

- Single-beat command model for register accesses.
- AXI-Lite register map:
  - HyperBus register window (16-bit registers mapped into 32-bit AXI-Lite space):
    - `0x0000` -> HyperBus `0x0000` (ID0)
    - `0x0004` -> HyperBus `0x0002` (ID1)
    - `0x0800` -> HyperBus `0x0800` (CR0)
    - `0x0804` -> HyperBus `0x0802` (CR1)
  - Local controller registers:
    - `0x0020` LAST_HB_READ32 (read-only)
    - `0x0080` ERR_STATUS (bit0 timeout status, W1C)
    - `0x0100` CK_P_ODELAY_CTRL
    - `0x0104` CK_P_ODELAY_TIME
    - `0x0108` CK_P_ODELAY_STATUS
    - `0x0200` DELAY_RST_CTRL (bit0 IDELAYCTRL reset request, bit1 ODELAY reset request)
    - `0x0204` IDELAYCTRL_STATUS (bit0 RDY)
- AXI-lite is backpressured while AXI-full command issue is active to avoid command FIFO collisions.

## HyperBus Transaction Notes

- Latency mode (1x/2x) is decided after the second CA clock based on RWDS.
- For AXI-full writes, post-CA RWDS wait is applied before data phase.
- HyperBus read termination waits for required RWDS transitions and then performs CS#/CK termination hold sequencing.
- CK is gated off when idle.

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

Clock constraint note:

- This repo does not include an `.xdc`.
- In the consuming Vivado project, apply single-ended clock constraints to HyperBus `CK`
  on `o_hb_ck_p` and do not model `o_hb_ck_n` as a differential complement output.

## Flow Diagrams

Multi-beat AXI flow diagrams are available at:

- `doc/multibeat_axi_write_flow.jpg`
- `doc/multibeat_axi_read_flow.jpg`

Diagram generator scripts:

- `doc/multibeat_axi_write_flow.py`
- `doc/multibeat_axi_read_flow.py`

## PHY Reuse Notes

- `doc/hyperbus_phy_design_notes.md` captures the current HyperBus PHY architecture,
  reset/clock assumptions, and a checklist for future PHY changes.

## Software Delay Control API

The software helper library is in:

- `software/hyperbus_odly.h`
- `software/hyperbus_odly.c`

Current public APIs:

- `hb_odly_get()`
- `hb_odly_set()`
- `hb_odly_inc()`
- `hb_odly_dec()`
- `hb_idelayctrl_reset_wait_ready()`
- `hb_odly_reset_pulse()`
- `hb_dly_init()` (IDELAYCTRL reset/wait + ODELAY reset pulse)

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
