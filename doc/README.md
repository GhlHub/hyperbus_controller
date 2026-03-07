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
  - Non-FIFO Xilinx primitive PHY (`BUFGCE`, `ODDRE1`, `OBUFDS`, `IOBUF`, `IDDRE1`)
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
- HyperBus register space includes:
  - `0x0000` ID0
  - `0x0002` ID1
  - `0x0800` CR0
  - `0x0802` CR1
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

## Flow Diagrams

Multi-beat AXI flow diagrams are available at:

- `doc/multibeat_axi_write_flow.jpg`
- `doc/multibeat_axi_read_flow.jpg`

Diagram generator scripts:

- `doc/multibeat_axi_write_flow.py`
- `doc/multibeat_axi_read_flow.py`
