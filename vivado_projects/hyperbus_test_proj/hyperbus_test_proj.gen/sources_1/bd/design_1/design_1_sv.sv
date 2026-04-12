// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:design_1:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module design_1_sv (
  (* X_INTERFACE_IGNORE = "true" *)
  input wire CLK_IN1_D_0_clk_n,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire CLK_IN1_D_0_clk_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire UART_0_txd,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire UART_0_rxd,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire o_hb_reset_n_0,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire ext_reset_in_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire o_hb_cs_n_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire o_hb_ck_p_0,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire o_hb_ck_n_0,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire io_hb_rwds_0,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [7:0] io_hb_dq_0
);

  design_1 inst (
    .CLK_IN1_D_0_clk_n(CLK_IN1_D_0_clk_n),
    .CLK_IN1_D_0_clk_p(CLK_IN1_D_0_clk_p),
    .UART_0_txd(UART_0_txd),
    .UART_0_rxd(UART_0_rxd),
    .o_hb_reset_n_0(o_hb_reset_n_0),
    .ext_reset_in_0(ext_reset_in_0),
    .o_hb_cs_n_0(o_hb_cs_n_0),
    .o_hb_ck_p_0(o_hb_ck_p_0),
    .o_hb_ck_n_0(o_hb_ck_n_0),
    .io_hb_rwds_0(io_hb_rwds_0),
    .io_hb_dq_0(io_hb_dq_0)
  );

endmodule
