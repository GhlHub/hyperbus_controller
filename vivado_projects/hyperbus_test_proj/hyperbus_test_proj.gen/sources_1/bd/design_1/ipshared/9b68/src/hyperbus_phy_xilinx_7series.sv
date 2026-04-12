// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_phy_xilinx_7series #(
    parameter int PHY_IO_STYLE = 0
) (
    input  wire       i_hb_clk_200,
    input  wire       i_hb_clk_200_gated,
    input  wire       i_axi_aclk,
    input  wire       i_axi_aresetn,
    input  wire       i_ref_clk_300,
    input  wire       i_idelayctrl_rst,
    input  wire       i_idelayctrl_rst_req,
    input  wire       i_odelay_rst_req,
    input  wire       i_rwds_idelay_rst_req,
    input  wire       i_hb_clk_200_samp_90,
    input  wire       i_iddre1_rst,
    input  wire       i_hb_rstn,
    output wire       o_hb_ck_p,
    output wire       o_hb_ck_n,
    inout  wire       io_hb_rwds,
    inout  wire [7:0] io_hb_dq,
    input  wire [7:0] i_dq_t,
    input  wire [7:0] i_dq_o_d1,
    input  wire [7:0] i_dq_o_d2,
    output logic [7:0] o_dq_q1,
    output logic [7:0] o_dq_q2,
    input  wire       i_rwds_t,
    input  wire       i_rwds_o_d1,
    input  wire       i_rwds_o_d2,
    output wire       o_rwds_q1,
    output wire       o_rwds_q2,
    input  wire       i_odly_en_vtc,
    input  wire       i_odly_ce,
    input  wire       i_odly_inc,
    input  wire       i_odly_load,
    input  wire [8:0] i_odly_cntvaluein,
    input  wire       i_rwds_idly_en_vtc,
    input  wire       i_rwds_idly_ce,
    input  wire       i_rwds_idly_inc,
    input  wire       i_rwds_idly_load,
    input  wire [8:0] i_rwds_idly_cntvaluein,
    input  wire [7:0] i_dq_idly_en_vtc,
    input  wire [7:0] i_dq_idly_ce,
    input  wire [7:0] i_dq_idly_inc,
    input  wire [7:0] i_dq_idly_load,
    input  wire [71:0] i_dq_idly_cntvaluein,
    output wire [71:0] o_dq_idly_cntvalueout,
    output wire [8:0] o_rwds_idly_cntvalueout,
    output wire [8:0] o_odly_cntvalueout,
    output wire       o_idelayctrl_rdy_axi,
    output logic [15:0] o_dq
);

    localparam int PHY_IO_STYLE_IO_DELAY            = 0;
    localparam int PHY_IO_STYLE_EXT_CLK_PHASE_SHIFT = 1;

    logic hb_ck_pre_odly;
    logic hb_ck_fwd;
    logic [7:0] dq_i;
    logic [7:0] dq_i_delayed;
    logic [7:0] dq_out_ddr;
    logic [7:0] dq_q1_raw;
    logic [7:0] dq_q2_raw;
    logic rwds_i;
    logic rwds_i_delayed;
    logic rwds_out_ddr;
    logic rwds_q1_raw;
    logic rwds_q2_raw;

    assign o_hb_ck_p   = hb_ck_fwd;
    assign o_hb_ck_n   = 1'b0;

    ODDR #(
        .DDR_CLK_EDGE("OPPOSITE_EDGE"),
        .INIT(1'b0),
        .SRTYPE("SYNC")
    ) u_oddr_ck (
        .Q  ( hb_ck_pre_odly),
        .C  (i_hb_clk_200_gated),
        .CE (         1'b1),
        .D1 (         1'b1),
        .D2 (         1'b0),
        .R  (~i_hb_rstn),
        .S  (         1'b0)
    );

    generate
        if (PHY_IO_STYLE == PHY_IO_STYLE_IO_DELAY) begin : g_io_delay
            logic idelayctrl_rdy;
            logic idelayctrl_rst_ref_meta;
            logic idelayctrl_rst_ref_sync;
            logic idelayctrl_rdy_axi_meta;
            logic idelayctrl_rdy_axi_sync;

            always_ff @(posedge i_ref_clk_300) begin
                if (i_idelayctrl_rst) begin
                    idelayctrl_rst_ref_meta <= 1'b1;
                    idelayctrl_rst_ref_sync <= 1'b1;
                end else begin
                    idelayctrl_rst_ref_meta <= i_idelayctrl_rst_req;
                    idelayctrl_rst_ref_sync <= idelayctrl_rst_ref_meta;
                end
            end

            always_ff @(posedge i_axi_aclk) begin
                if (!i_axi_aresetn) begin
                    idelayctrl_rdy_axi_meta <= 1'b0;
                    idelayctrl_rdy_axi_sync <= 1'b0;
                end else begin
                    idelayctrl_rdy_axi_meta <= idelayctrl_rdy;
                    idelayctrl_rdy_axi_sync <= idelayctrl_rdy_axi_meta;
                end
            end

            IDELAYCTRL u_idelayctrl (
                .RDY    (        idelayctrl_rdy),
                .REFCLK (         i_ref_clk_300),
                .RST    (idelayctrl_rst_ref_sync)
            );

            ODELAYE2 #(
                .CINVCTRL_SEL("FALSE"),
                .DELAY_SRC("ODATAIN"),
                .HIGH_PERFORMANCE_MODE("TRUE"),
                .ODELAY_TYPE("VAR_LOAD"),
                .ODELAY_VALUE(0),
                .PIPE_SEL("FALSE"),
                .REFCLK_FREQUENCY(300.0),
                .SIGNAL_PATTERN("CLOCK")
            ) u_odelay_ck (
                .CNTVALUEOUT (o_odly_cntvalueout[4:0]),
                .DATAOUT     (             hb_ck_fwd),
                .C           (          i_axi_aclk),
                .CE          (          i_odly_ce),
                .CINVCTRL    (               1'b0),
                .CLKIN       (               1'b0),
                .CNTVALUEIN  ( i_odly_cntvaluein[4:0]),
                .INC         (         i_odly_inc),
                .LD          (        i_odly_load),
                .LDPIPEEN    (               1'b0),
                .ODATAIN     (       hb_ck_pre_odly),
                .REGRST      (    i_odelay_rst_req)
            );
            assign o_odly_cntvalueout[8:5] = 4'h0;
            assign o_idelayctrl_rdy_axi = idelayctrl_rdy_axi_sync;

            genvar gdi;
            for (gdi = 0; gdi < 8; gdi = gdi + 1) begin : g_dq_idelay
                IDELAYE2 #(
                    .CINVCTRL_SEL("FALSE"),
                    .DELAY_SRC("IDATAIN"),
                    .HIGH_PERFORMANCE_MODE("TRUE"),
                    .IDELAY_TYPE("VAR_LOAD"),
                    .IDELAY_VALUE(0),
                    .PIPE_SEL("FALSE"),
                    .REFCLK_FREQUENCY(300.0),
                    .SIGNAL_PATTERN("DATA")
                ) u_idelay_dq (
                    .CNTVALUEOUT (o_dq_idly_cntvalueout[gdi*9 +: 5]),
                    .DATAOUT     (                  dq_i_delayed[gdi]),
                    .C           (                        i_axi_aclk),
                    .CE          (                   i_dq_idly_ce[gdi]),
                    .CINVCTRL    (                             1'b0),
                    .CNTVALUEIN  (       i_dq_idly_cntvaluein[gdi*9 +: 5]),
                    .DATAIN      (                             1'b0),
                    .IDATAIN     (                           dq_i[gdi]),
                    .INC         (                  i_dq_idly_inc[gdi]),
                    .LD          (                 i_dq_idly_load[gdi]),
                    .LDPIPEEN    (                             1'b0),
                    .REGRST      (               i_rwds_idelay_rst_req)
                );
                assign o_dq_idly_cntvalueout[gdi*9 + 5 +: 4] = 4'h0;
            end

            IDELAYE2 #(
                .CINVCTRL_SEL("FALSE"),
                .DELAY_SRC("IDATAIN"),
                .HIGH_PERFORMANCE_MODE("TRUE"),
                .IDELAY_TYPE("VAR_LOAD"),
                .IDELAY_VALUE(10),
                .PIPE_SEL("FALSE"),
                .REFCLK_FREQUENCY(300.0),
                .SIGNAL_PATTERN("DATA")
            ) u_idelay_rwds (
                .CNTVALUEOUT (o_rwds_idly_cntvalueout[4:0]),
                .DATAOUT     (          rwds_i_delayed),
                .C           (              i_axi_aclk),
                .CE          (         i_rwds_idly_ce),
                .CINVCTRL    (                   1'b0),
                .CNTVALUEIN  ( i_rwds_idly_cntvaluein[4:0]),
                .DATAIN      (                   1'b0),
                .IDATAIN     (                   rwds_i),
                .INC         (        i_rwds_idly_inc),
                .LD          (       i_rwds_idly_load),
                .LDPIPEEN    (                   1'b0),
                .REGRST      (   i_rwds_idelay_rst_req)
            );
            assign o_rwds_idly_cntvalueout[8:5] = 4'h0;

            wire _unused_ok = &{1'b0,
                                i_odly_en_vtc,
                                i_rwds_idly_en_vtc,
                                i_dq_idly_en_vtc};
        end else begin : g_ext_clk_phase_shift
            assign hb_ck_fwd               = hb_ck_pre_odly;
            assign dq_i_delayed            = dq_i;
            assign rwds_i_delayed          = rwds_i;
            assign o_dq_idly_cntvalueout   = 72'h0;
            assign o_rwds_idly_cntvalueout = 9'h000;
            assign o_odly_cntvalueout      = 9'h000;
            assign o_idelayctrl_rdy_axi    = 1'b1;

            wire _unused_ok = &{1'b0,
                                i_axi_aclk,
                                i_axi_aresetn,
                                i_ref_clk_300,
                                i_idelayctrl_rst,
                                i_idelayctrl_rst_req,
                                i_odelay_rst_req,
                                i_rwds_idelay_rst_req,
                                i_odly_en_vtc,
                                i_odly_ce,
                                i_odly_inc,
                                i_odly_load,
                                i_odly_cntvaluein,
                                i_rwds_idly_en_vtc,
                                i_rwds_idly_ce,
                                i_rwds_idly_inc,
                                i_rwds_idly_load,
                                i_rwds_idly_cntvaluein,
                                i_dq_idly_en_vtc,
                                i_dq_idly_ce,
                                i_dq_idly_inc,
                                i_dq_idly_load,
                                i_dq_idly_cntvaluein};
        end
    endgenerate

    genvar gi;
    generate
        for (gi = 0; gi < 8; gi = gi + 1) begin : g_dq_phy
            ODDR #(
                .DDR_CLK_EDGE("SAME_EDGE"),
                .INIT(1'b0),
                .SRTYPE("SYNC")
            ) u_oddr_dq (
                .Q  (       dq_out_ddr[gi]),
                .C  (          i_hb_clk_200),
                .CE (                 1'b1),
                .D1 (         i_dq_o_d1[gi]),
                .D2 (         i_dq_o_d2[gi]),
                .R  (            ~i_hb_rstn),
                .S  (                 1'b0)
            );

            IOBUF u_iobuf_dq (
                .I  (       dq_out_ddr[gi]),
                .O  (              dq_i[gi]),
                .T  (            i_dq_t[gi]),
                .IO (           io_hb_dq[gi])
            );

            IDDR #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
                .INIT_Q1(1'b0),
                .INIT_Q2(1'b0),
                .SRTYPE("SYNC")
            ) u_iddr_dq (
                .Q1 (             dq_q1_raw[gi]),
                .Q2 (             dq_q2_raw[gi]),
                .C  (    i_hb_clk_200_samp_90),
                .CE (                     1'b1),
                .D  (         dq_i_delayed[gi]),
                .R  (              i_iddre1_rst),
                .S  (                     1'b0)
            );
        end
    endgenerate

    assign o_dq_q1 = dq_q1_raw;
    assign o_dq_q2 = dq_q2_raw;
    assign o_dq    = {dq_q2_raw, dq_q1_raw};

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"),
        .INIT(1'b0),
        .SRTYPE("SYNC")
    ) u_oddr_rwds (
        .Q  (     rwds_out_ddr),
        .C  (      i_hb_clk_200),
        .CE (               1'b1),
        .D1 (       i_rwds_o_d1),
        .D2 (       i_rwds_o_d2),
        .R  (        ~i_hb_rstn),
        .S  (               1'b0)
    );

    IOBUF u_iobuf_rwds (
        .I  (      rwds_out_ddr),
        .O  (             rwds_i),
        .T  (           i_rwds_t),
        .IO (         io_hb_rwds)
    );

    IDDR #(
        .DDR_CLK_EDGE("SAME_EDGE"),
        .INIT_Q1(1'b0),
        .INIT_Q2(1'b0),
        .SRTYPE("SYNC")
    ) u_iddr_rwds (
        .Q1 (         rwds_q1_raw),
        .Q2 (         rwds_q2_raw),
        .C  (i_hb_clk_200_samp_90),
        .CE (                 1'b1),
        .D  (      rwds_i_delayed),
        .R  (          i_iddre1_rst),
        .S  (                 1'b0)
    );

    assign o_rwds_q1 = rwds_q1_raw;
    assign o_rwds_q2 = rwds_q2_raw;

endmodule
