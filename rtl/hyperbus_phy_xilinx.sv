`timescale 1ns/1ps

module hyperbus_phy_xilinx (
    input  wire       i_hb_clk_200,
    input  wire       i_hb_clk_200_samp_90,
    input  wire       i_hb_rstn,
    input  wire       i_hb_clk_ce,
    output wire       o_hb_ck_p,
    output wire       o_hb_ck_n,
    inout  wire       io_hb_rwds,
    inout  wire [7:0] io_hb_dq,
    input  wire [7:0] i_dq_t,
    input  wire [7:0] i_dq_o_d1,
    input  wire [7:0] i_dq_o_d2,
    output wire [7:0] o_dq_q1,
    output wire [7:0] o_dq_q2,
    input  wire       i_rwds_t,
    input  wire       i_rwds_o_d1,
    input  wire       i_rwds_o_d2,
    output wire       o_rwds_q1,
    output wire       o_rwds_q2
);

    logic hb_ck_gated;
    logic hb_ck_fwd;
    logic [7:0] dq_i;
    logic [7:0] dq_out_ddr;
    logic rwds_i;
    logic rwds_out_ddr;

    BUFGCE u_bufgce_hb_ck (
        .I(i_hb_clk_200),
        .CE(i_hb_clk_ce),
        .O(hb_ck_gated)
    );

    ODDRE1 #(
        .IS_C_INVERTED(1'b0),
        .IS_D1_INVERTED(1'b0),
        .IS_D2_INVERTED(1'b0),
        .SRVAL(1'b0)
    ) u_oddr_ck (
        .Q(hb_ck_fwd),
        .C(hb_ck_gated),
        .D1(1'b1),
        .D2(1'b0),
        .SR(~i_hb_rstn)
    );

    OBUFDS u_obufds_ck (
        .I(hb_ck_fwd),
        .O(o_hb_ck_p),
        .OB(o_hb_ck_n)
    );

    genvar gi;
    generate
        for (gi = 0; gi < 8; gi = gi + 1) begin : g_dq_phy
            ODDRE1 #(
                .IS_C_INVERTED(1'b0),
                .IS_D1_INVERTED(1'b0),
                .IS_D2_INVERTED(1'b0),
                .SRVAL(1'b0)
            ) u_oddr_dq (
                .Q(dq_out_ddr[gi]),
                .C(i_hb_clk_200),
                .D1(i_dq_o_d1[gi]),
                .D2(i_dq_o_d2[gi]),
                .SR(~i_hb_rstn)
            );

            IOBUF u_iobuf_dq (
                .I(dq_out_ddr[gi]),
                .O(dq_i[gi]),
                .T(i_dq_t[gi]),
                .IO(io_hb_dq[gi])
            );

            IDDRE1 #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
                .IS_C_INVERTED(1'b0),
                .IS_CB_INVERTED(1'b1)
            ) u_iddr_dq (
                .Q1(o_dq_q1[gi]),
                .Q2(o_dq_q2[gi]),
                .C(i_hb_clk_200_samp_90),
                .CB(i_hb_clk_200_samp_90),
                .D(dq_i[gi]),
                .R(~i_hb_rstn)
            );
        end
    endgenerate

    ODDRE1 #(
        .IS_C_INVERTED(1'b0),
        .IS_D1_INVERTED(1'b0),
        .IS_D2_INVERTED(1'b0),
        .SRVAL(1'b0)
    ) u_oddr_rwds (
        .Q(rwds_out_ddr),
        .C(i_hb_clk_200),
        .D1(i_rwds_o_d1),
        .D2(i_rwds_o_d2),
        .SR(~i_hb_rstn)
    );

    IOBUF u_iobuf_rwds (
        .I(rwds_out_ddr),
        .O(rwds_i),
        .T(i_rwds_t),
        .IO(io_hb_rwds)
    );

    IDDRE1 #(
        .DDR_CLK_EDGE("OPPOSITE_EDGE"),
        .IS_C_INVERTED(1'b0),
        .IS_CB_INVERTED(1'b1)
    ) u_iddr_rwds (
        .Q1(o_rwds_q1),
        .Q2(o_rwds_q2),
        .C(i_hb_clk_200_samp_90),
        .CB(i_hb_clk_200_samp_90),
        .D(rwds_i),
        .R(~i_hb_rstn)
    );

endmodule
