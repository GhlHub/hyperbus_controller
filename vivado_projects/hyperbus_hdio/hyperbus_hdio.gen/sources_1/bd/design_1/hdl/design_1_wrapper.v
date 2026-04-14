//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Apr 14 06:07:25 2026
//Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (UART_0_rxd,
    UART_0_txd,
    clk1,
    clk2,
    clk3,
    clk4,
    clk5,
    dcm_locked,
    ext_reset_in_0,
    io_hb_dq_0,
    io_hb_rwds_0,
    o_hb_ck_n_0,
    o_hb_ck_p_0,
    o_hb_clk_ce_0,
    o_hb_cs_n_0,
    o_hb_reset_n_0,
    psclk_0,
    psdone_0,
    psen_0,
    psincdec_0);
  input UART_0_rxd;
  output UART_0_txd;
  input clk1;
  input clk2;
  input clk3;
  input clk4;
  input clk5;
  input dcm_locked;
  input ext_reset_in_0;
  inout [7:0]io_hb_dq_0;
  inout io_hb_rwds_0;
  output o_hb_ck_n_0;
  output o_hb_ck_p_0;
  output o_hb_clk_ce_0;
  output o_hb_cs_n_0;
  output o_hb_reset_n_0;
  output psclk_0;
  input psdone_0;
  output psen_0;
  output psincdec_0;

  wire UART_0_rxd;
  wire UART_0_txd;
  wire clk1;
  wire clk2;
  wire clk3;
  wire clk4;
  wire clk5;
  wire dcm_locked;
  wire ext_reset_in_0;
  wire [7:0]io_hb_dq_0;
  wire io_hb_rwds_0;
  wire o_hb_ck_n_0;
  wire o_hb_ck_p_0;
  wire o_hb_clk_ce_0;
  wire o_hb_cs_n_0;
  wire o_hb_reset_n_0;
  wire psclk_0;
  wire psdone_0;
  wire psen_0;
  wire psincdec_0;

  design_1 design_1_i
       (.UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .clk1(clk1),
        .clk2(clk2),
        .clk3(clk3),
        .clk4(clk4),
        .clk5(clk5),
        .dcm_locked(dcm_locked),
        .ext_reset_in_0(ext_reset_in_0),
        .io_hb_dq_0(io_hb_dq_0),
        .io_hb_rwds_0(io_hb_rwds_0),
        .o_hb_ck_n_0(o_hb_ck_n_0),
        .o_hb_ck_p_0(o_hb_ck_p_0),
        .o_hb_clk_ce_0(o_hb_clk_ce_0),
        .o_hb_cs_n_0(o_hb_cs_n_0),
        .o_hb_reset_n_0(o_hb_reset_n_0),
        .psclk_0(psclk_0),
        .psdone_0(psdone_0),
        .psen_0(psen_0),
        .psincdec_0(psincdec_0));
endmodule
