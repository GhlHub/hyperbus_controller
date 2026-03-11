`timescale 1ns/1ps

module hyperbus_phy_xilinx (
    input  wire       i_hb_clk_200,
    input  wire       i_hb_clk_200_gated,
    input  wire       i_axi_aclk,
    input  wire       i_axi_aresetn,
    input  wire       i_ref_clk300,
    input  wire       i_idelayctrl_rst,
    input  wire       i_idelayctrl_rst_req,
    input  wire       i_odelay_rst_req,
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
    output wire [8:0] o_odly_cntvalueout,
    output wire       o_idelayctrl_rdy_axi
);

    logic hb_ck_fwd;
    logic hb_ck_fwd_delayed;
    logic [7:0] dq_i;
    logic [7:0] dq_out_ddr;
    logic [7:0] dq_q1_raw;
    logic [7:0] dq_q2_raw;
    logic rwds_i;
    logic rwds_out_ddr;
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

    always_ff @(posedge i_ref_clk300) begin
        if (i_idelayctrl_rst) begin
            // Default asserted so IDELAYCTRL stays in reset at startup.
            idelayctrl_rst_ref_meta <= 1'b1;
            idelayctrl_rst_ref_sync <= 1'b1;
        end else begin
            idelayctrl_rst_ref_meta <= i_idelayctrl_rst_req;
            idelayctrl_rst_ref_sync <= idelayctrl_rst_ref_meta;
        end
    end

    // Synchronize IDELAYCTRL RDY into AXI clock domain for AXI-Lite status reads.
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
        .RDY    (            idelayctrl_rdy),
        .REFCLK (             i_ref_clk300),
        .RST    (idelayctrl_rst_ref_sync)
    );

    // CAUTION: make sure this gated clock is running when reset is asserted
    // or the IDELAYCTRL.RDY will never go high. Check the AXI-Lite slave for
    // the register that can force the clock on.
    ODDRE1 #(
        .IS_C_INVERTED(1'b0),
        .IS_D1_INVERTED(1'b0),
        .IS_D2_INVERTED(1'b0),
        .SRVAL(1'b0)
    ) u_oddr_ck (
        .Q  (          hb_ck_fwd),
        .C  ( i_hb_clk_200_gated),
        .D1 (               1'b1),
        .D2 (               1'b0),
        .SR (          ~i_hb_rstn)
    );
    
    ODELAYE3 #(
        .CASCADE("NONE"),
        .DELAY_FORMAT("TIME"),
`ifndef SYNTHESIS
        .DELAY_TYPE("VAR_LOAD"),
`else
        .DELAY_TYPE("VARIABLE"),
`endif
        .DELAY_VALUE(100),
        .IS_CLK_INVERTED(1'b0),
        .IS_RST_INVERTED(1'b0),
        .REFCLK_FREQUENCY(300.0),
        .SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"),
        .UPDATE_MODE("ASYNC")
    ) u_odelay_hb_ck_p (
        .CASC_OUT    (                     ),
        .CNTVALUEOUT (    o_odly_cntvalueout),
        .DATAOUT     (    hb_ck_fwd_delayed),
        .CASC_IN     (                 1'b0),
        .CASC_RETURN (                 1'b0),
        .CE          (     odly_ce_to_odelay),
        .CLK         (            i_axi_aclk),
        .CNTVALUEIN  (odly_cntvaluein_to_odelay),
        .EN_VTC      ( odly_en_vtc_to_odelay),
        .INC         (     odly_inc_to_odelay),
`ifndef SYNTHESIS
        .LOAD        (    odly_load_to_odelay),
`else
        .LOAD        (                 1'b0),
`endif
        .ODATAIN     (            hb_ck_fwd),
        .RST         (    odly_rst_to_odelay)
    );

    OBUF u_obuf_ck_p (
        .O (        o_hb_ck_p),
        .I (hb_ck_fwd_delayed)
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
                .Q  (dq_out_ddr[gi]),
                .C  (  i_hb_clk_200),
                .D1 ( i_dq_o_d1[gi]),
                .D2 ( i_dq_o_d2[gi]),
                .SR (      ~i_hb_rstn)
            );

            IOBUF u_iobuf_dq (
                .I  (dq_out_ddr[gi]),
                .O  (       dq_i[gi]),
                .T  (      i_dq_t[gi]),
                .IO (    io_hb_dq[gi])
            );

            IDDRE1 #(
                .DDR_CLK_EDGE("OPPOSITE_EDGE"),
                .IS_C_INVERTED(1'b0),
                .IS_CB_INVERTED(1'b1)
            ) u_iddr_dq (
                .Q1 (       dq_q1_raw[gi]),
                .Q2 (       dq_q2_raw[gi]),
                .C  (i_hb_clk_200_samp_90),
                .CB (i_hb_clk_200_samp_90),
                .D  (           dq_i[gi]),
                .R  (        i_iddre1_rst)
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
        .Q  ( rwds_out_ddr),
        .C  ( i_hb_clk_200),
        .D1 (  i_rwds_o_d1),
        .D2 (  i_rwds_o_d2),
        .SR (    ~i_hb_rstn)
    );

    IOBUF u_iobuf_rwds (
        .I  (rwds_out_ddr),
        .O  (      rwds_i),
        .T  (    i_rwds_t),
        .IO (   io_hb_rwds)
    );

    IDDRE1 #(
        .DDR_CLK_EDGE("OPPOSITE_EDGE"),
        .IS_C_INVERTED(1'b0),
        .IS_CB_INVERTED(1'b1)
    ) u_iddr_rwds (
        .Q1 (         o_rwds_q1),
        .Q2 (         o_rwds_q2),
        .C  (i_hb_clk_200_samp_90),
        .CB (i_hb_clk_200_samp_90),
        .D  (            rwds_i),
        .R  (        i_iddre1_rst)
    );

    assign odly_en_vtc_to_odelay = i_odly_en_vtc;
    assign odly_ce_to_odelay = i_odly_ce;
    assign odly_inc_to_odelay = i_odly_inc;
    assign odly_load_to_odelay = i_odly_load;
    assign odly_rst_to_odelay = i_odelay_rst_req;
    assign odly_cntvaluein_to_odelay = i_odly_cntvaluein;

    assign o_idelayctrl_rdy_axi = idelayctrl_rdy_axi_sync;

endmodule
