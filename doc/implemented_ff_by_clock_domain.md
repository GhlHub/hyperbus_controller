<!-- SPDX-FileCopyrightText: 2026 Glen Lowe -->
<!-- SPDX-License-Identifier: Apache-2.0 -->
# Implemented Flip-Flop Breakdown by Clock Domain

Last updated: 2026-03-17

## Source

These counts were taken from the implemented routed checkpoint:

- `hyperbus_test_proj/hyperbus_test_proj.runs/impl_1/design_1_wrapper_routed.dcp`

The query counted implemented fabric flip-flop primitives with `REF_NAME =~ FD*`
and grouped them by the resolved clock object on each cell's `C` pin.

## Breakdown

| Implemented clock object | Functional domain | FF count |
| --- | --- | ---: |
| `clk_out3_design_1_clk_wiz_0_0` | `i_axi_aclk` / 50 MHz AXI domain | 2756 |
| `clk_out1_design_1_clk_wiz_0_0` | `i_hb_clk_200` / 200 MHz HyperBus domain | 744 |
| `clk_out4_design_1_clk_wiz_0_0` | `i_ref_clk300` / 300 MHz IDELAYCTRL reference domain | 35 |
| `clk_out2_design_1_clk_wiz_0_0` | `i_hb_clk_200_samp_90` / 200 MHz +90-degree sample domain | 33 |
| `design_1_i/mdm_riscv_0/U0/MDM_Core_I1/JTAG_CONTROL_I/Test_Access_Port.BUFG_UPDATE/Using_FPGA.Native/O` | MDM/JTAG debug domain | 133 |
| `design_1_i/mdm_riscv_0/U0/Use_E2.BSCAN_I/Use_E2.BSCANE2_I/TCK` | BSCAN JTAG `TCK` domain | 280 |

Total implemented fabric FFs counted this way: **3981**

## Clock Mapping

The `clk_wiz` output mapping used above comes from the checked-in BD Tcl and clock
wizard configuration:

- `clk_out1 -> hyperbus_controller_0/i_hb_clk_200`
- `clk_out2 -> hyperbus_controller_0/i_hb_clk_200_samp_90`
- `clk_out3 -> hyperbus_controller_0/i_axi_aclk`
- `clk_out4 -> hyperbus_controller_0/i_ref_clk300`

Relevant sources:

- `hyperbus_test_proj/my_bd.tcl`
- `hyperbus_test_proj/hyperbus_test_proj.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xci`

## Notes

- This is an implemented-design count, not an RTL estimate.
- The count includes fabric `FD*` primitives only.
- Dedicated hard-macro storage elements and non-`FD*` sequential primitives are not
  included in this number.
- The two JTAG-related domains come from the MicroBlaze debug module / BSCAN logic,
  not from the HyperBus controller itself.
