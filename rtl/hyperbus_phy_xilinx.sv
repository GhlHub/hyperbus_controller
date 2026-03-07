`timescale 1ns/1ps

module hyperbus_phy_xilinx (
    input  wire       i_hb_clk_200,
    input  wire       i_ref_clk300,
    input  wire       i_idelayctrl_rst,
    input  wire       i_hb_clk_200_samp_90,
    input  wire       i_iddre1_rst,
    input  wire       i_hb_rstn,
    input  wire       i_hb_clk_ce,
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
    output wire       o_rwds_q2
);

    localparam int HB_CK_P_ODELAY_PS = 810;

    logic hb_ck_gated;
    logic hb_ck_fwd;
    logic hb_ck_fwd_delayed;
    logic [7:0] dq_i;
    logic [7:0] dq_out_ddr;
    logic [7:0] dq_q1_raw;
    logic [7:0] dq_q2_raw;
    logic rwds_i;
    logic rwds_out_ddr;
    logic idelayctrl_rdy;

    IDELAYCTRL u_idelayctrl (
        .RDY(idelayctrl_rdy),
        .REFCLK(i_ref_clk300),
        .RST(i_idelayctrl_rst)
    );

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
    
    ODELAYE3 #(
        .CASCADE("NONE"),
        .DELAY_FORMAT("TIME"),
        .DELAY_TYPE("FIXED"),
        .DELAY_VALUE(HB_CK_P_ODELAY_PS),
        .IS_CLK_INVERTED(1'b0),
        .IS_RST_INVERTED(1'b0),
        .REFCLK_FREQUENCY(300.0),
        .SIM_DEVICE("ULTRASCALE_PLUS"),
        .UPDATE_MODE("ASYNC")
    ) u_odelay_hb_ck_p (
        .CASC_OUT(),
        .CNTVALUEOUT(),
        .DATAOUT(hb_ck_fwd_delayed),
        .CASC_IN(1'b0),
        .CASC_RETURN(1'b0),
        .CE(1'b0),
        .CLK(i_hb_clk_200),
        .CNTVALUEIN(9'd0),
        .EN_VTC(1'b1),
        .INC(1'b0),
        .LOAD(1'b0),
        .ODATAIN(hb_ck_fwd),
        .RST(1'b0)
    );

   OBUF u_obuf_ck_p(
      .O(o_hb_ck_p),
      .I(hb_ck_fwd_delayed)
   );
    
   assign o_hb_ck_n = 0;

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
                .Q1(dq_q1_raw[gi]),
                .Q2(dq_q2_raw[gi]),
                .C(i_hb_clk_200_samp_90),
                .CB(i_hb_clk_200_samp_90),
                .D(dq_i[gi]),
                .R(i_iddre1_rst)
            );
        end
    endgenerate

    // One i_hb_clk_200 cycle pipeline on DQ sampler outputs.
    always_ff @(posedge i_hb_clk_200) begin
        if (!i_hb_rstn) begin
            o_dq_q1 <= 8'h00;
            o_dq_q2 <= 8'h00;
        end else begin
            o_dq_q1 <= dq_q1_raw;
            o_dq_q2 <= dq_q2_raw;
        end
    end

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
        .R(i_iddre1_rst)
    );

endmodule
