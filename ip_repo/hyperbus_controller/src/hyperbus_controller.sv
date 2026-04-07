// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_controller #(
    parameter int AXI_ADDR_WIDTH = 32,
    parameter int AXI_DATA_WIDTH = 32,
    parameter int AXI_ID_WIDTH = 1,
    parameter int AXIL_ADDR_WIDTH = 16,
    parameter int HB_LATENCY_DEFAULT = 7,
    parameter int PHY_FAMILY = 0,
    // Compensation window (in i_hb_clk_200 cycles) for ODDRE1 forwarded outputs.
    parameter int ODDRE1_TX_PIPE_CYCLES = 1,
    // Read termination requirement: keep CS# asserted this many HB cycles
    // after CK is gated off, before deasserting CS#.
    parameter int HB_READ_CS_DEASSERT_DELAY = 2
) (
    input  wire                         i_axi_aclk,      // 50 MHz
    input  wire                         i_axi_aresetn,
    input  wire                         i_hb_clk_200,    // 200 MHz
    input  wire                         i_hb_clk_200_gated, // externally gated 200 MHz for HB CK forwarding
    input  wire                         i_ref_clk_300,   // externally sourced 300 MHz IDELAYCTRL refclk
    input  wire                         i_idelayctrl_rst, // externally sourced IDELAYCTRL reset (active high)
    input  wire                         i_hb_clk_200_samp_90, // externally sourced 200 MHz, +90 deg
    input  wire                         i_iddre1_rst,    // externally sourced IDDRE1 reset (active high)
    input  wire                         i_hb_rstn,

    // AXI4 Full slave (32-bit)
    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  wire [AXI_ID_WIDTH-1:0]      s_axi_awid,
    input  wire [7:0]                   s_axi_awlen,
    input  wire [2:0]                   s_axi_awsize,
    input  wire [1:0]                   s_axi_awburst,
    input  wire                         s_axi_awvalid,
    output logic                        s_axi_awready,

    input  wire [AXI_DATA_WIDTH-1:0]    s_axi_wdata,
    input  wire [(AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input  wire                         s_axi_wlast,
    input  wire                         s_axi_wvalid,
    output logic                        s_axi_wready,

    output logic [1:0]                  s_axi_bresp,
    output logic [AXI_ID_WIDTH-1:0]     s_axi_bid,
    output logic                        s_axi_bvalid,
    input  wire                         s_axi_bready,

    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_araddr,
    input  wire [AXI_ID_WIDTH-1:0]      s_axi_arid,
    input  wire [7:0]                   s_axi_arlen,
    input  wire [2:0]                   s_axi_arsize,
    input  wire [1:0]                   s_axi_arburst,
    input  wire                         s_axi_arvalid,
    output logic                        s_axi_arready,

    output logic [AXI_DATA_WIDTH-1:0]   s_axi_rdata,
    output logic [AXI_ID_WIDTH-1:0]     s_axi_rid,
    output logic [1:0]                  s_axi_rresp,
    output logic                        s_axi_rlast,
    output logic                        s_axi_rvalid,
    input  wire                         s_axi_rready,

    // AXI4-Lite slave (32-bit single-beat)
    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_awaddr,
    input  wire                         s_axil_awvalid,
    output logic                        s_axil_awready,
    input  wire [31:0]                  s_axil_wdata,
    input  wire [3:0]                   s_axil_wstrb,
    input  wire                         s_axil_wvalid,
    output logic                        s_axil_wready,
    output logic [1:0]                  s_axil_bresp,
    output logic                        s_axil_bvalid,
    input  wire                         s_axil_bready,

    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_araddr,
    input  wire                         s_axil_arvalid,
    output logic                        s_axil_arready,
    output logic [31:0]                 s_axil_rdata,
    output logic [1:0]                  s_axil_rresp,
    output logic                        s_axil_rvalid,
    input  wire                         s_axil_rready,

    // HyperBus physical interface (single-ended CK mode: CK# held low)
    output wire                         o_hb_cs_n,
    output wire                         o_hb_clk_ce,
    output wire                         o_hb_ck_p,
    output wire                         o_hb_ck_n,
    inout  wire                         io_hb_rwds,
    inout  wire [7:0]                   io_hb_dq,
    output wire                         o_hb_reset_n,
    output wire [7:0]                   o_dbg_dq_q1_dly,
    output wire [7:0]                   o_dbg_dq_q2_dly,
    output wire                         o_dbg_rwds_q1_dly,
    output wire                         o_dbg_rwds_q2_dly,
    output wire [7:0]                   o_dbg_dq_o_d1,
    output wire [7:0]                   o_dbg_dq_o_d2,
    output wire                         o_dbg_rwds_o_d1,
    output wire                         o_dbg_rwds_o_d2,
    output wire [7:0]                   o_dbg_i_dq_t,
    output wire                         o_dbg_i_rwds_t,
    output wire                         o_dbg_hb_cs_n_q,
    output wire [31:0]                  o_dbg_rd_fifo_din,
    output wire                         o_dbg_rd_fifo_wr_en,
    output wire [31:0]                  o_dbg_last_read_word32,
    output wire                         o_dbg_rd_half
);

    localparam int CMD_W = 59;
    localparam int AXI_MAX_BEATS = 32; // 128B on 32-bit interface
    localparam int HB_TIMEOUT_RESET_CYCLES = 44; // 220ns @ 200MHz

    function automatic int unsigned ns_time;
        begin
            ns_time = int'($rtoi(($realtime / 1ns) + 0.5));
        end
    endfunction

    // cmd packing: [58] src_axil, [57] is_write, [56] is_reg, [55:24] addr, [23:16] beats, [15:0] wdata
    logic [CMD_W-1:0] cmd_fifo_din, cmd_fifo_dout;
    logic cmd_fifo_wr_en, cmd_fifo_rd_en, cmd_fifo_full, cmd_fifo_empty, cmd_fifo_dout_valid;
    logic cmd_fifo_wr_en_full, cmd_fifo_wr_en_axil;
    logic [CMD_W-1:0] cmd_fifo_din_full, cmd_fifo_din_axil;

    logic [35:0] wr_fifo_dout;
    logic [35:0] wr_fifo_din;
    logic [31:0] rd_fifo_din, rd_fifo_dout;
    logic wr_fifo_wr_en, wr_fifo_rd_en, wr_fifo_full, wr_fifo_prog_full, wr_fifo_empty, wr_fifo_dout_valid;
    logic rd_fifo_wr_en, rd_fifo_rd_en, rd_fifo_full, rd_fifo_prog_full, rd_fifo_empty, rd_fifo_dout_valid;

    logic [31:0] axil_rsp_fifo_din, axil_rsp_fifo_dout;
    logic axil_rsp_fifo_wr_en, axil_rsp_fifo_rd_en, axil_rsp_fifo_full, axil_rsp_fifo_empty, axil_rsp_fifo_dout_valid;
    logic [5:0] axif_rwds_cntr;
    logic [5:0] axil_rwds_cntr;
    logic odly_en_vtc, odly_ce, odly_inc, odly_load;
    logic [8:0] odly_cntvaluein, odly_cntvalueout;
    logic rwds_idly_en_vtc, rwds_idly_ce, rwds_idly_inc, rwds_idly_load;
    logic [8:0] rwds_idly_cntvaluein, rwds_idly_cntvalueout;
    logic [7:0] dq_idly_en_vtc, dq_idly_ce, dq_idly_inc, dq_idly_load;
    logic [71:0] dq_idly_cntvaluein, dq_idly_cntvalueout;
    logic idelayctrl_rst_req, odelay_rst_req, rwds_idelay_rst_req;
    logic hb_clk_ce_force;
    logic hb_reset_req;
    logic idelayctrl_rdy_axi;
    logic hb_timeout_pulse_hb;
    logic hb_timeout_holdoff_hb;
    logic hb_timeout_block_axi_meta, hb_timeout_block_axi;
    logic [7:0] hb_reset_pulse_cnt;
    logic hb_clk_ce;
    logic hb_cs_n_q;
    logic [7:0] dq_t;
    logic [7:0] dq_o_d1, dq_o_d2;
    logic [15:0] dq;
    logic rwds_t, rwds_o_d1, rwds_o_d2;
    logic [7:0] dq_q1, dq_q2;
    logic rwds_q1, rwds_q2;
    logic [31:0] last_read_word32_dbg;
    logic rd_half_dbg;

    hyperbus_fifo_bank_xilinx #(
        .CMD_W(CMD_W)
    ) u_fifo_bank (
        .i_axi_aclk               (            i_axi_aclk),
        .i_axi_aresetn            (         i_axi_aresetn),
        .i_hb_clk_200             (          i_hb_clk_200),
        .i_hb_rstn                (             i_hb_rstn),
        .i_cmd_fifo_din           (           cmd_fifo_din),
        .i_cmd_fifo_wr_en         (         cmd_fifo_wr_en),
        .o_cmd_fifo_full          (          cmd_fifo_full),
        .o_cmd_fifo_dout          (          cmd_fifo_dout),
        .i_cmd_fifo_rd_en         (         cmd_fifo_rd_en),
        .o_cmd_fifo_empty         (         cmd_fifo_empty),
        .o_cmd_fifo_dout_valid    (    cmd_fifo_dout_valid),
        .i_wr_fifo_din            (            wr_fifo_din),
        .i_wr_fifo_wr_en          (          wr_fifo_wr_en),
        .o_wr_fifo_full           (           wr_fifo_full),
        .o_wr_fifo_prog_full      (      wr_fifo_prog_full),
        .o_wr_fifo_dout           (           wr_fifo_dout),
        .i_wr_fifo_rd_en          (          wr_fifo_rd_en),
        .o_wr_fifo_empty          (          wr_fifo_empty),
        .o_wr_fifo_dout_valid     (     wr_fifo_dout_valid),
        .i_rd_fifo_din            (            rd_fifo_din),
        .i_rd_fifo_wr_en          (          rd_fifo_wr_en),
        .o_rd_fifo_full           (           rd_fifo_full),
        .o_rd_fifo_prog_full      (      rd_fifo_prog_full),
        .o_rd_fifo_dout           (           rd_fifo_dout),
        .i_rd_fifo_rd_en          (          rd_fifo_rd_en),
        .o_rd_fifo_empty          (          rd_fifo_empty),
        .o_rd_fifo_dout_valid     (     rd_fifo_dout_valid),
        .i_axil_rsp_fifo_din      (      axil_rsp_fifo_din),
        .i_axil_rsp_fifo_wr_en    (    axil_rsp_fifo_wr_en),
        .o_axil_rsp_fifo_full     (     axil_rsp_fifo_full),
        .o_axil_rsp_fifo_dout     (     axil_rsp_fifo_dout),
        .i_axil_rsp_fifo_rd_en    (    axil_rsp_fifo_rd_en),
        .o_axil_rsp_fifo_empty    (    axil_rsp_fifo_empty),
        .o_axil_rsp_fifo_dout_valid (axil_rsp_fifo_dout_valid)
    );

    assign cmd_fifo_wr_en = cmd_fifo_wr_en_axil | cmd_fifo_wr_en_full;
    assign cmd_fifo_din   = cmd_fifo_wr_en_axil ? cmd_fifo_din_axil : cmd_fifo_din_full;
    // -------------------------
    // AXI full front-end (single outstanding read + single outstanding write)
    // -------------------------
    logic aw_pending;
    hyperbus_axi_full_frontend #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .AXI_ID_WIDTH(AXI_ID_WIDTH),
        .CMD_W(CMD_W)
    ) u_axi_full_frontend (
        .i_axi_aclk            (            i_axi_aclk),
        .i_axi_aresetn         (         i_axi_aresetn),
        .i_req_block           (    hb_timeout_block_axi),
        .i_cmd_fifo_full       (          cmd_fifo_full),
        .o_cmd_fifo_din_full   (      cmd_fifo_din_full),
        .o_cmd_fifo_wr_en_full (    cmd_fifo_wr_en_full),
        .o_aw_pending          (             aw_pending),
        .o_wr_fifo_din         (            wr_fifo_din),
        .o_wr_fifo_wr_en       (          wr_fifo_wr_en),
        .i_wr_fifo_full        (           wr_fifo_full),
        .i_wr_fifo_prog_full   (      wr_fifo_prog_full),
        .i_rd_fifo_dout        (           rd_fifo_dout),
        .i_rd_fifo_empty       (          rd_fifo_empty),
        .o_rd_fifo_rd_en       (          rd_fifo_rd_en),
        .s_axi_awaddr          (           s_axi_awaddr),
        .s_axi_awid            (             s_axi_awid),
        .s_axi_awlen           (            s_axi_awlen),
        .s_axi_awsize          (           s_axi_awsize),
        .s_axi_awburst         (          s_axi_awburst),
        .s_axi_awvalid         (          s_axi_awvalid),
        .s_axi_awready         (          s_axi_awready),
        .s_axi_wdata           (            s_axi_wdata),
        .s_axi_wstrb           (            s_axi_wstrb),
        .s_axi_wlast           (            s_axi_wlast),
        .s_axi_wvalid          (           s_axi_wvalid),
        .s_axi_wready          (           s_axi_wready),
        .s_axi_bresp           (            s_axi_bresp),
        .s_axi_bid             (              s_axi_bid),
        .s_axi_bvalid          (           s_axi_bvalid),
        .s_axi_bready          (           s_axi_bready),
        .s_axi_araddr          (           s_axi_araddr),
        .s_axi_arid            (             s_axi_arid),
        .s_axi_arlen           (            s_axi_arlen),
        .s_axi_arsize          (           s_axi_arsize),
        .s_axi_arburst         (          s_axi_arburst),
        .s_axi_arvalid         (          s_axi_arvalid),
        .s_axi_arready         (          s_axi_arready),
        .s_axi_rdata           (            s_axi_rdata),
        .s_axi_rid             (              s_axi_rid),
        .s_axi_rresp           (            s_axi_rresp),
        .s_axi_rlast           (            s_axi_rlast),
        .s_axi_rvalid          (           s_axi_rvalid),
        .s_axi_rready          (           s_axi_rready)
    );

    // -------------------------
    // AXI-Lite front-end (single beat only)
    // -------------------------
    hyperbus_axi_lite_frontend #(
        .AXIL_ADDR_WIDTH(AXIL_ADDR_WIDTH),
        .CMD_W(CMD_W)
    ) u_axi_lite_frontend (
        .i_axi_aclk               (            i_axi_aclk),
        .i_axi_aresetn            (         i_axi_aresetn),
        .i_req_block              (    hb_timeout_block_axi),
        .i_timeout_holdoff_active (    hb_timeout_block_axi),
        .i_aw_pending             (             aw_pending),
        .i_s_axi_arvalid          (          s_axi_arvalid),
        .i_s_axi_awvalid          (          s_axi_awvalid),
        .i_cmd_fifo_full          (          cmd_fifo_full),
        .i_axil_rsp_fifo_dout     (     axil_rsp_fifo_dout),
        .i_axil_rsp_fifo_empty    (    axil_rsp_fifo_empty),
        .i_axil_rsp_fifo_dout_valid(axil_rsp_fifo_dout_valid),
        .i_dq                     (                 dq),
        .i_axif_rwds_cntr         (         axif_rwds_cntr),
        .i_axil_rwds_cntr         (         axil_rwds_cntr),
        .i_odly_cntvalueout       (       odly_cntvalueout),
        .i_rwds_idly_cntvalueout  (  rwds_idly_cntvalueout),
        .i_dq_idly_cntvalueout    (    dq_idly_cntvalueout),
        .i_idelayctrl_rdy_sync    (       idelayctrl_rdy_axi),
        .o_axil_rsp_fifo_rd_en    (    axil_rsp_fifo_rd_en),
        .o_cmd_fifo_din_axil      (      cmd_fifo_din_axil),
        .o_cmd_fifo_wr_en_axil    (    cmd_fifo_wr_en_axil),
        .o_odly_en_vtc            (            odly_en_vtc),
        .o_odly_ce                (                odly_ce),
        .o_odly_inc               (               odly_inc),
        .o_odly_load              (              odly_load),
        .o_odly_cntvaluein        (        odly_cntvaluein),
        .o_rwds_idly_en_vtc       (       rwds_idly_en_vtc),
        .o_rwds_idly_ce           (           rwds_idly_ce),
        .o_rwds_idly_inc          (          rwds_idly_inc),
        .o_rwds_idly_load         (         rwds_idly_load),
        .o_rwds_idly_cntvaluein   (   rwds_idly_cntvaluein),
        .o_dq_idly_en_vtc         (         dq_idly_en_vtc),
        .o_dq_idly_ce             (             dq_idly_ce),
        .o_dq_idly_inc            (            dq_idly_inc),
        .o_dq_idly_load           (           dq_idly_load),
        .o_dq_idly_cntvaluein     (    dq_idly_cntvaluein),
        .o_idelayctrl_rst_req     (     idelayctrl_rst_req),
        .o_odelay_rst_req         (         odelay_rst_req),
        .o_rwds_idelay_rst_req    (    rwds_idelay_rst_req),
        .o_hb_clk_ce_force        (        hb_clk_ce_force),
        .o_hb_reset_req           (           hb_reset_req),
        .s_axil_awaddr            (           s_axil_awaddr),
        .s_axil_awvalid           (          s_axil_awvalid),
        .s_axil_awready           (          s_axil_awready),
        .s_axil_wdata             (            s_axil_wdata),
        .s_axil_wstrb             (            s_axil_wstrb),
        .s_axil_wvalid            (           s_axil_wvalid),
        .s_axil_wready            (           s_axil_wready),
        .s_axil_bresp             (            s_axil_bresp),
        .s_axil_bvalid            (           s_axil_bvalid),
        .s_axil_bready            (           s_axil_bready),
        .s_axil_araddr            (           s_axil_araddr),
        .s_axil_arvalid           (          s_axil_arvalid),
        .s_axil_arready           (          s_axil_arready),
        .s_axil_rdata             (            s_axil_rdata),
        .s_axil_rresp             (            s_axil_rresp),
        .s_axil_rvalid            (           s_axil_rvalid),
        .s_axil_rready            (           s_axil_rready)
    );

    // -------------------------
    // HyperBus PHY controls and sampled inputs
    // -------------------------
    assign o_hb_cs_n = hb_cs_n_q;
    assign o_hb_clk_ce = hb_clk_ce | hb_clk_ce_force;
    assign o_hb_reset_n = i_hb_rstn && (hb_reset_pulse_cnt == 8'd0) && !hb_reset_req;
    assign o_dbg_dq_o_d1 = dq_o_d1;
    assign o_dbg_dq_o_d2 = dq_o_d2;
    assign o_dbg_rwds_o_d1 = rwds_o_d1;
    assign o_dbg_rwds_o_d2 = rwds_o_d2;
    assign o_dbg_i_dq_t = dq_t;
    assign o_dbg_i_rwds_t = rwds_t;
    assign o_dbg_hb_cs_n_q = hb_cs_n_q;
    assign o_dbg_rd_fifo_din = rd_fifo_din;
    assign o_dbg_rd_fifo_wr_en = rd_fifo_wr_en;
    assign o_dbg_last_read_word32 = last_read_word32_dbg;
    assign o_dbg_rd_half = rd_half_dbg;

    hyperbus_phy_xilinx #(
        .PHY_FAMILY(PHY_FAMILY)
    ) u_hyperbus_phy (
        .i_axi_aclk             (            i_axi_aclk),
        .i_axi_aresetn          (         i_axi_aresetn),
        .i_hb_clk_200           (          i_hb_clk_200),
        .i_hb_clk_200_gated     (    i_hb_clk_200_gated),
        .i_ref_clk_300          (          i_ref_clk_300),
        .i_idelayctrl_rst       (       i_idelayctrl_rst),
        .i_idelayctrl_rst_req      (i_idelayctrl_rst | idelayctrl_rst_req),
        .i_odelay_rst_req       (         odelay_rst_req),
        .i_rwds_idelay_rst_req     (    rwds_idelay_rst_req),
        .i_hb_clk_200_samp_90      (   i_hb_clk_200_samp_90),
        .i_iddre1_rst           (          i_iddre1_rst),
        .i_hb_rstn              (             i_hb_rstn),
        .o_hb_ck_p              (             o_hb_ck_p),
        .o_hb_ck_n              (             o_hb_ck_n),
        .io_hb_rwds             (            io_hb_rwds),
        .io_hb_dq               (              io_hb_dq),
        .i_dq_t                 (                 dq_t),
        .i_dq_o_d1              (              dq_o_d1),
        .i_dq_o_d2              (              dq_o_d2),
        .o_dq                   (                  dq),
        .o_dq_q1                (                dq_q1),
        .o_dq_q2                (                dq_q2),
        .i_rwds_t               (               rwds_t),
        .i_rwds_o_d1            (            rwds_o_d1),
        .i_rwds_o_d2            (            rwds_o_d2),
        .o_rwds_q1              (              rwds_q1),
        .o_rwds_q2              (              rwds_q2),
        .i_odly_en_vtc          (          odly_en_vtc),
        .i_odly_ce              (              odly_ce),
        .i_odly_inc             (             odly_inc),
        .i_odly_load            (            odly_load),
        .i_odly_cntvaluein      (      odly_cntvaluein),
        .o_odly_cntvalueout     (     odly_cntvalueout),
        .i_rwds_idly_en_vtc     (     rwds_idly_en_vtc),
        .i_rwds_idly_ce         (         rwds_idly_ce),
        .i_rwds_idly_inc        (        rwds_idly_inc),
        .i_rwds_idly_load       (       rwds_idly_load),
        .i_rwds_idly_cntvaluein ( rwds_idly_cntvaluein),
        .o_rwds_idly_cntvalueout(rwds_idly_cntvalueout),
        .i_dq_idly_en_vtc       (         dq_idly_en_vtc),
        .i_dq_idly_ce           (             dq_idly_ce),
        .i_dq_idly_inc          (            dq_idly_inc),
        .i_dq_idly_load         (           dq_idly_load),
        .i_dq_idly_cntvaluein   (    dq_idly_cntvaluein),
        .o_dq_idly_cntvalueout  (   dq_idly_cntvalueout),
        .o_idelayctrl_rdy_axi   (   idelayctrl_rdy_axi)
    );

    // -------------------------
    // HyperBus engine (HB clock domain)
    // -------------------------
    hyperbus_hb_engine #(
        .CMD_W(CMD_W),
        .HB_LATENCY_DEFAULT(HB_LATENCY_DEFAULT),
        .ODDRE1_TX_PIPE_CYCLES(ODDRE1_TX_PIPE_CYCLES),
        .HB_READ_CS_DEASSERT_DELAY(HB_READ_CS_DEASSERT_DELAY)
    ) u_hb_engine (
        .i_hb_clk_200          (          i_hb_clk_200),
        .i_hb_rstn             (             i_hb_rstn),
        .i_cmd_fifo_dout       (          cmd_fifo_dout),
        .i_cmd_fifo_empty      (         cmd_fifo_empty),
        .i_cmd_fifo_dout_valid    (    cmd_fifo_dout_valid),
        .o_cmd_fifo_rd_en      (         cmd_fifo_rd_en),
        .i_wr_fifo_dout        (           wr_fifo_dout),
        .o_wr_fifo_rd_en       (          wr_fifo_rd_en),
        .i_rd_fifo_full        (           rd_fifo_full),
        .i_rd_fifo_prog_full   (      rd_fifo_prog_full),
        .o_rd_fifo_din         (            rd_fifo_din),
        .o_rd_fifo_wr_en       (          rd_fifo_wr_en),
        .i_axil_rsp_fifo_full   (     axil_rsp_fifo_full),
        .o_axil_rsp_fifo_din    (      axil_rsp_fifo_din),
        .o_axil_rsp_fifo_wr_en  (    axil_rsp_fifo_wr_en),
        .o_last_read_word32     ( last_read_word32_dbg),
        .o_rd_half_dbg          (         rd_half_dbg),
        .o_axif_rwds_cntr       (         axif_rwds_cntr),
        .o_axil_rwds_cntr       (         axil_rwds_cntr),
        .o_dq_q1_dly_dbg        (      o_dbg_dq_q1_dly),
        .o_dq_q2_dly_dbg        (      o_dbg_dq_q2_dly),
        .o_rwds_q1_dly_dbg      (    o_dbg_rwds_q1_dly),
        .o_rwds_q2_dly_dbg      (    o_dbg_rwds_q2_dly),
        .i_dq_q1               (                dq_q1),
        .i_dq_q2               (                dq_q2),
        .i_rwds_q1             (              rwds_q1),
        .i_rwds_q2             (              rwds_q2),
        .o_hb_clk_ce           (             hb_clk_ce),
        .o_timeout_pulse_hb    (    hb_timeout_pulse_hb),
        .o_timeout_holdoff_active  (   hb_timeout_holdoff_hb),
        .o_hb_cs_n_q           (             hb_cs_n_q),
        .o_dq_t                (                 dq_t),
        .o_dq_o_d1             (              dq_o_d1),
        .o_dq_o_d2             (              dq_o_d2),
        .o_rwds_t              (               rwds_t),
        .o_rwds_o_d1           (            rwds_o_d1),
        .o_rwds_o_d2           (            rwds_o_d2)
    );

    // Synchronize HB-domain timeout holdoff into AXI clock domain for backpressure.
    always_ff @(posedge i_axi_aclk) begin
        if (!i_axi_aresetn) begin
            hb_timeout_block_axi_meta <= 1'b0;
            hb_timeout_block_axi <= 1'b0;
        end else begin
            hb_timeout_block_axi_meta <= hb_timeout_holdoff_hb;
            hb_timeout_block_axi <= hb_timeout_block_axi_meta;
        end
    end

    // Assert HyperRAM reset_n low for 220ns after timeout.
    always_ff @(posedge i_hb_clk_200) begin
        if (!i_hb_rstn) begin
            hb_reset_pulse_cnt <= 8'd0;
        end else if (hb_timeout_pulse_hb) begin
            hb_reset_pulse_cnt <= HB_TIMEOUT_RESET_CYCLES;
        end else if (hb_reset_pulse_cnt != 0) begin
            hb_reset_pulse_cnt <= hb_reset_pulse_cnt - 8'd1;
        end
    end

`ifndef SYNTHESIS
`ifndef NO_FIFO_TRACE
    // FIFO trace instrumentation (simulation-only).
    task automatic trace_cmd_fifo_data(
        input string            domain,
        input string            action,
        input logic [CMD_W-1:0] cmd_word
    );
        begin
            $display("[%0d][%s] [     CMD_FIFO] %s data=0x%015h src=%s op=%s space=%s addr=0x%08h beats=%0d wdata=0x%04h",
                     ns_time(),
                     domain,
                     action,
                     cmd_word,
                     cmd_word[58] ? "AXIL" : "AXIF",
                     cmd_word[57] ? "WRITE" : "READ",
                     cmd_word[56] ? "REG" : "MEM",
                     cmd_word[55:24],
                     cmd_word[23:16],
                     cmd_word[15:0]);
        end
    endtask

    always @(posedge i_axi_aclk) begin
        if (i_axi_aresetn) begin
            if (cmd_fifo_wr_en_full) begin
                trace_cmd_fifo_data("AXI", "PUSH(full)", cmd_fifo_din_full);
            end
            if (cmd_fifo_wr_en_axil) begin
                trace_cmd_fifo_data("AXI", "PUSH(axil)", cmd_fifo_din_axil);
            end
            if (wr_fifo_wr_en) begin
                $display("[%0d][AXI] [      WR_FIFO] PUSH data=0x%0h", ns_time(), wr_fifo_din);
            end
            if (rd_fifo_rd_en) begin
                $display("[%0d][AXI] [      RD_FIFO] POP_REQ", ns_time());
            end
            if (s_axi_rvalid && s_axi_rready) begin
                $display("[%0d][AXI] [      RD_FIFO] POP_DATA data=0x%08h", ns_time(), s_axi_rdata);
            end
            if (axil_rsp_fifo_rd_en) begin
                $display("[%0d][AXI] [AXIL_RSP_FIFO] POP_REQ", ns_time());
            end
            if (axil_rsp_fifo_dout_valid) begin
                $display("[%0d][AXI] [AXIL_RSP_FIFO] POP_DATA data=0x%08h", ns_time(), axil_rsp_fifo_dout);
            end
        end
    end

    always @(posedge i_hb_clk_200) begin
        if (i_hb_rstn) begin
            if (cmd_fifo_rd_en) begin
                $display("[%0d][ HB] [     CMD_FIFO] POP_REQ", ns_time());
            end
            if (cmd_fifo_dout_valid) begin
                trace_cmd_fifo_data(" HB", "POP_DATA", cmd_fifo_dout);
            end
            if (wr_fifo_rd_en) begin
                $display("[%0d][ HB] [      WR_FIFO] POP_REQ", ns_time());
                $display("[%0d][ HB] [      WR_FIFO] POP_DATA data=0x%0h", ns_time(), wr_fifo_dout);
            end
            if (rd_fifo_wr_en) begin
                $display("[%0d][ HB] [      RD_FIFO] PUSH data=0x%08h", ns_time(), rd_fifo_din);
            end
            if (axil_rsp_fifo_wr_en) begin
                $display("[%0d][ HB] [AXIL_RSP_FIFO] PUSH data=0x%08h", ns_time(), axil_rsp_fifo_din);
            end
        end
    end
`endif
`endif

endmodule
