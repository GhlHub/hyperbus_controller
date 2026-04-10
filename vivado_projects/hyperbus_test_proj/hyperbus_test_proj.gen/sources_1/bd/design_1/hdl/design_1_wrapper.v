//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Thu Apr  9 17:07:07 2026
//Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_IN1_D_0_clk_n,
    CLK_IN1_D_0_clk_p,
    UART_0_rxd,
    UART_0_txd,
    ext_reset_in_0,
    io_hb_dq_0,
    io_hb_rwds_0,
    o_hb_ck_n_0,
    o_hb_ck_p_0,
    o_hb_cs_n_0,
    o_hb_reset_n_0);
  input CLK_IN1_D_0_clk_n;
  input CLK_IN1_D_0_clk_p;
  input UART_0_rxd;
  output UART_0_txd;
  input ext_reset_in_0;
  inout [7:0]io_hb_dq_0;
  inout io_hb_rwds_0;
  output o_hb_ck_n_0;
  output o_hb_ck_p_0;
  output o_hb_cs_n_0;
  output o_hb_reset_n_0;

  wire CLK_IN1_D_0_clk_n;
  wire CLK_IN1_D_0_clk_p;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire ext_reset_in_0;
  wire [7:0]io_hb_dq_0;
  wire io_hb_rwds_0;
  wire o_hb_ck_n_0;
  wire o_hb_ck_p_0;
  wire o_hb_cs_n_0;
  wire o_hb_reset_n_0;

  design_1 design_1_i
       (.CLK_IN1_D_0_clk_n(CLK_IN1_D_0_clk_n),
        .CLK_IN1_D_0_clk_p(CLK_IN1_D_0_clk_p),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .ext_reset_in_0(ext_reset_in_0),
        .io_hb_dq_0(io_hb_dq_0),
        .io_hb_rwds_0(io_hb_rwds_0),
        .o_hb_ck_n_0(o_hb_ck_n_0),
        .o_hb_ck_p_0(o_hb_ck_p_0),
        .o_hb_cs_n_0(o_hb_cs_n_0),
        .o_hb_reset_n_0(o_hb_reset_n_0));
endmodule
