// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_phy_xilinx_usplus #(
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

    logic hb_ck_fwd;
    logic hb_ck_fwd_delayed;
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

    assign o_hb_ck_p   = hb_ck_fwd_delayed;
    assign o_hb_ck_n   = 1'b0;

    ODDRE1 #(
        .IS_C_INVERTED(1'b0),
        .IS_D1_INVERTED(1'b0),
        .IS_D2_INVERTED(1'b0),
        .SRVAL(1'b0)
    ) u_oddr_ck (
        .Q  (           hb_ck_fwd),
        .C  (  i_hb_clk_200_gated),
        .D1 (                1'b1),
        .D2 (                1'b0),
        .SR (           ~i_hb_rstn)
    );

    generate
        if (PHY_IO_STYLE == PHY_IO_STYLE_IO_DELAY) begin : g_io_delay
            logic idelayctrl_rdy;
            logic idelayctrl_rst_ref_meta;
            logic idelayctrl_rst_ref_sync;
            logic idelayctrl_rdy_axi_meta;
            logic idelayctrl_rdy_axi_sync;
            logic odly_en_vtc_to_odelay;
            logic odly_ce_to_odelay;
            logic odly_inc_to_odelay;
            logic odly_load_to_odelay;
            logic odly_rst_to_odelay;
            logic [8:0] odly_cntvaluein_to_odelay;

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

            IDELAYCTRL #(.SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"))
            u_idelayctrl (
                .RDY    (        idelayctrl_rdy),
                .REFCLK (         i_ref_clk_300),
                .RST    (idelayctrl_rst_ref_sync)
            );

            ODELAYE3 #(
                .CASCADE("NONE"),
                .DELAY_FORMAT("TIME"),
`ifndef SYNTHESIS
                .DELAY_TYPE("VAR_LOAD"),
`else
                .DELAY_TYPE("VARIABLE"),
`endif
                .DELAY_VALUE(34),
                .IS_CLK_INVERTED(1'b0),
                .IS_RST_INVERTED(1'b0),
                .REFCLK_FREQUENCY(300.0),
                .SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"),
                .UPDATE_MODE("ASYNC")
            ) u_odelay_hb_ck_p (
                .CASC_OUT    (                          ),
                .CNTVALUEOUT (       o_odly_cntvalueout),
                .DATAOUT     (        hb_ck_fwd_delayed),
                .CASC_IN     (                     1'b0),
                .CASC_RETURN (                     1'b0),
                .CE          (        odly_ce_to_odelay),
                .CLK         (               i_axi_aclk),
                .CNTVALUEIN  (odly_cntvaluein_to_odelay),
                .EN_VTC      (    odly_en_vtc_to_odelay),
                .INC         (       odly_inc_to_odelay),
`ifndef SYNTHESIS
                .LOAD        (      odly_load_to_odelay),
`else
                .LOAD        (                     1'b0),
`endif
                .ODATAIN     (                 hb_ck_fwd),
                .RST         (       odly_rst_to_odelay)
            );

            assign odly_en_vtc_to_odelay    = i_odly_en_vtc;
            assign odly_ce_to_odelay        = i_odly_ce;
            assign odly_inc_to_odelay       = i_odly_inc;
            assign odly_load_to_odelay      = i_odly_load;
            assign odly_rst_to_odelay       = i_odelay_rst_req;
            assign odly_cntvaluein_to_odelay = i_odly_cntvaluein;
            assign o_idelayctrl_rdy_axi     = idelayctrl_rdy_axi_sync;

            genvar gdi;
            for (gdi = 0; gdi < 8; gdi = gdi + 1) begin : g_dq_idelay
                IDELAYE3 #(
                    .CASCADE("NONE"),
                    .DELAY_FORMAT("TIME"),
                    .DELAY_SRC("IDATAIN"),
`ifndef SYNTHESIS
                    .DELAY_TYPE("VAR_LOAD"),
`else
                    .DELAY_TYPE("VARIABLE"),
`endif
                    .DELAY_VALUE(0),
                    .IS_CLK_INVERTED(1'b0),
                    .IS_RST_INVERTED(1'b0),
                    .REFCLK_FREQUENCY(300.0),
                    .SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"),
                    .UPDATE_MODE("ASYNC")
                ) u_idelay_dq (
                    .CASC_OUT    (                                 ),
                    .CNTVALUEOUT (o_dq_idly_cntvalueout[gdi*9 +: 9]),
                    .DATAOUT     (                 dq_i_delayed[gdi]),
                    .CASC_IN     (                          1'b0),
                    .CASC_RETURN (                          1'b0),
                    .CE          (                   i_dq_idly_ce[gdi]),
                    .CLK         (                        i_axi_aclk),
                    .CNTVALUEIN  (i_dq_idly_cntvaluein[gdi*9 +: 9]),
                    .DATAIN      (                          1'b0),
                    .EN_VTC      (               i_dq_idly_en_vtc[gdi]),
                    .IDATAIN     (                          dq_i[gdi]),
                    .INC         (                  i_dq_idly_inc[gdi]),
`ifndef SYNTHESIS
                    .LOAD        (                 i_dq_idly_load[gdi]),
`else
                    .LOAD        (                          1'b0),
`endif
                    .RST         (                i_rwds_idelay_rst_req)
                );
            end

            IDELAYE3 #(
                .CASCADE("NONE"),
                .DELAY_FORMAT("TIME"),
                .DELAY_SRC("IDATAIN"),
`ifndef SYNTHESIS
                .DELAY_TYPE("VAR_LOAD"),
`else
                .DELAY_TYPE("VARIABLE"),
`endif
                .DELAY_VALUE(10),
                .IS_CLK_INVERTED(1'b0),
                .IS_RST_INVERTED(1'b0),
                .REFCLK_FREQUENCY(300.0),
                .SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"),
                .UPDATE_MODE("ASYNC")
            ) u_idelay_rwds (
                .CASC_OUT    (                    ),
                .CNTVALUEOUT (o_rwds_idly_cntvalueout),
                .DATAOUT     (      rwds_i_delayed),
                .CASC_IN     (          1'b0),
                .CASC_RETURN (          1'b0),
                .CE          (     i_rwds_idly_ce),
                .CLK         (         i_axi_aclk),
                .CNTVALUEIN  (i_rwds_idly_cntvaluein),
                .DATAIN      (          1'b0),
                .EN_VTC      (i_rwds_idly_en_vtc),
                .IDATAIN     (            rwds_i),
                .INC         (     i_rwds_idly_inc),
`ifndef SYNTHESIS
                .LOAD        (i_rwds_idly_load),
`else
                .LOAD        (          1'b0),
`endif
                .RST         (i_rwds_idelay_rst_req)
            );
        end else begin : g_ext_clk_phase_shift
            assign hb_ck_fwd_delayed        = hb_ck_fwd;
            assign dq_i_delayed             = dq_i;
            assign rwds_i_delayed           = rwds_i;
            assign o_dq_idly_cntvalueout    = 72'h0;
            assign o_rwds_idly_cntvalueout  = 9'h000;
            assign o_odly_cntvalueout       = 9'h000;
            assign o_idelayctrl_rdy_axi     = 1'b1;

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
            ODDRE1 #(
                .IS_C_INVERTED(1'b0),
                .IS_D1_INVERTED(1'b0),
                .IS_D2_INVERTED(1'b0),
                .SRVAL(1'b0)
            ) u_oddr_dq (
                .Q  (       dq_out_ddr[gi]),
                .C  (          i_hb_clk_200),
                .D1 (         i_dq_o_d1[gi]),
                .D2 (         i_dq_o_d2[gi]),
                .SR (             ~i_hb_rstn)
            );

            IDDRE1 #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
                .IS_C_INVERTED(1'b0),
                .IS_CB_INVERTED(1'b1)
            ) u_iddr_dq (
                .Q1 (             dq_q1_raw[gi]),
                .Q2 (             dq_q2_raw[gi]),
                .C  (i_hb_clk_200_samp_90),
                .CB (i_hb_clk_200_samp_90),
                .D  (         dq_i_delayed[gi]),
                .R  (              i_iddre1_rst)
            );

            IOBUF u_iobuf_dq (
                .I  (       dq_out_ddr[gi]),
                .O  (              dq_i[gi]),
                .T  (            i_dq_t[gi]),
                .IO (           io_hb_dq[gi])
            );
        end
    endgenerate

    assign o_dq_q1 = dq_q1_raw;
    assign o_dq_q2 = dq_q2_raw;
    assign o_dq    = {dq_q2_raw, dq_q1_raw};

    ODDRE1 #(
        .IS_C_INVERTED(1'b0),
        .IS_D1_INVERTED(1'b0),
        .IS_D2_INVERTED(1'b0),
        .SRVAL(1'b0)
    ) u_oddr_rwds (
        .Q  (       rwds_out_ddr),
        .C  (        i_hb_clk_200),
        .D1 (         i_rwds_o_d1),
        .D2 (         i_rwds_o_d2),
        .SR (          ~i_hb_rstn)
    );

    IOBUF u_iobuf_rwds (
        .I  (      rwds_out_ddr),
        .O  (             rwds_i),
        .T  (           i_rwds_t),
        .IO (         io_hb_rwds)
    );

    generate
        if (PHY_IO_STYLE == PHY_IO_STYLE_EXT_CLK_PHASE_SHIFT) begin : g_rwds_iddre1_ext_clk
            // PHY_IO_STYLE=1: no IDELAYE3 on RWDS; use same edge polarity as DQ
            // so that o_rwds_q1 is aligned with o_dq_q1 (both rising-edge captures).
            IDDRE1 #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
                .IS_C_INVERTED(1'b0),
                .IS_CB_INVERTED(1'b1)
            ) u_iddr_rwds (
                .Q1 (             rwds_q1_raw),
                .Q2 (             rwds_q2_raw),
                .C  (i_hb_clk_200_samp_90),
                .CB (i_hb_clk_200_samp_90),
                .D  (          rwds_i_delayed),
                .R  (              i_iddre1_rst)
            );
        end else begin : g_rwds_iddre1_io_delay
            // PHY_IO_STYLE=0: IS_C_INVERTED=1 in synthesis is intentional — the
            // IDELAYE3 delay on RWDS shifts its phase relative to the sampling clock,
            // and the inverted capture edge corrects the resulting RWDS/DQ alignment.
            IDDRE1 #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
`ifndef SYNTHESIS
                .IS_C_INVERTED(1'b0),
                .IS_CB_INVERTED(1'b1)
`else
                .IS_C_INVERTED(1'b1),
                .IS_CB_INVERTED(1'b0)
`endif
            ) u_iddr_rwds (
                .Q1 (             rwds_q1_raw),
                .Q2 (             rwds_q2_raw),
                .C  (i_hb_clk_200_samp_90),
                .CB (i_hb_clk_200_samp_90),
                .D  (          rwds_i_delayed),
                .R  (              i_iddre1_rst)
            );
        end
    endgenerate

    assign o_rwds_q1 = rwds_q1_raw;
    assign o_rwds_q2 = rwds_q2_raw;

endmodule
