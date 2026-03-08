`timescale 1ns/1ps

module hyperbus_phy_xilinx (
    input  wire       i_hb_clk_200,
    input  wire       i_axi_aclk,
    input  wire       i_axi_aresetn,
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
    output wire       o_rwds_q2,
    input  wire       i_odly_en_vtc,
    input  wire       i_odly_ce,
    input  wire       i_odly_inc,
    input  wire       i_odly_load,
    input  wire       i_odly_rst,
    input  wire [8:0] i_odly_cntvaluein,
    output wire [8:0] o_odly_cntvalueout
);

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
    logic idelayctrl_rst_sm;
    logic idelay_ready_ref;
    logic idelay_ready_axi_meta;
    logic idelay_ready_axi;
    logic idelayctrl_rst_axi_meta;
    logic idelayctrl_rst_axi;
    logic odelay_rst_seq_axi;
    logic [1:0] odelay_axi_wait_cnt;
    logic [5:0] idelay_hold_cnt;

    localparam int IDELAY_HOLD_80NS_CYCLES = 24; // 80ns at 300MHz.

    typedef enum logic [1:0] {
        IDELAY_RST_ASSERT = 2'd0,
        IDELAY_RST_HOLD80 = 2'd1,
        IDELAY_WAIT_RDY   = 2'd2,
        IDELAY_READY      = 2'd3
    } idelay_rst_state_t;
    idelay_rst_state_t idelay_rst_state;

    always_ff @(posedge i_ref_clk300) begin
        if (i_idelayctrl_rst) begin
            idelay_rst_state <= IDELAY_RST_ASSERT;
            idelay_hold_cnt <= 6'd0;
            idelayctrl_rst_sm <= 1'b1;
            idelay_ready_ref <= 1'b0;
        end else begin
            case (idelay_rst_state)
                IDELAY_RST_ASSERT: begin
                    idelay_rst_state <= IDELAY_RST_HOLD80;
                    idelay_hold_cnt <= 6'd0;
                    idelayctrl_rst_sm <= 1'b1;
                    idelay_ready_ref <= 1'b0;
                end
                IDELAY_RST_HOLD80: begin
                    idelayctrl_rst_sm <= 1'b1;
                    idelay_ready_ref <= 1'b0;
                    if (idelay_hold_cnt == (IDELAY_HOLD_80NS_CYCLES - 1)) begin
                        idelay_rst_state <= IDELAY_WAIT_RDY;
                    end else begin
                        idelay_hold_cnt <= idelay_hold_cnt + 6'd1;
                    end
                end
                IDELAY_WAIT_RDY: begin
                    idelayctrl_rst_sm <= 1'b0;
                    idelay_ready_ref <= 1'b0;
                    if (idelayctrl_rdy) begin
                        idelay_rst_state <= IDELAY_READY;
                    end
                end
                IDELAY_READY: begin
                    idelayctrl_rst_sm <= 1'b0;
                    idelay_ready_ref <= 1'b1;
                end
                default: begin
                    idelay_rst_state <= IDELAY_RST_ASSERT;
                    idelay_hold_cnt <= 6'd0;
                    idelayctrl_rst_sm <= 1'b1;
                    idelay_ready_ref <= 1'b0;
                end
            endcase
        end
    end

    always_ff @(posedge i_axi_aclk) begin
        if (!i_axi_aresetn) begin
            idelay_ready_axi_meta <= 1'b0;
            idelay_ready_axi <= 1'b0;
            idelayctrl_rst_axi_meta <= 1'b1;
            idelayctrl_rst_axi <= 1'b1;
            odelay_rst_seq_axi <= 1'b1;
            odelay_axi_wait_cnt <= 2'd0;
        end else begin
            idelay_ready_axi_meta <= idelay_ready_ref;
            idelay_ready_axi <= idelay_ready_axi_meta;
            idelayctrl_rst_axi_meta <= i_idelayctrl_rst;
            idelayctrl_rst_axi <= idelayctrl_rst_axi_meta;
            if (idelayctrl_rst_axi) begin
                odelay_rst_seq_axi <= 1'b1;
                odelay_axi_wait_cnt <= 2'd0;
            end else if (!idelay_ready_axi) begin
                odelay_rst_seq_axi <= 1'b1;
                odelay_axi_wait_cnt <= 2'd0;
            end else if (odelay_axi_wait_cnt < 2'd3) begin
                odelay_rst_seq_axi <= 1'b1;
                odelay_axi_wait_cnt <= odelay_axi_wait_cnt + 2'd1;
            end else begin
                odelay_rst_seq_axi <= 1'b0;
            end
        end
    end

    IDELAYCTRL #(.SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"))
    u_idelayctrl (
        .RDY(idelayctrl_rdy),
        .REFCLK(i_ref_clk300),
        .RST(idelayctrl_rst_sm)
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
        .DELAY_TYPE("VAR_LOAD"),
        .DELAY_VALUE(0),
        .IS_CLK_INVERTED(1'b0),
        .IS_RST_INVERTED(1'b0),
        .REFCLK_FREQUENCY(300.0),
        .SIM_DEVICE("SPARTAN_ULTRASCALE_PLUS"),
        .UPDATE_MODE("ASYNC")
    ) u_odelay_hb_ck_p (
        .CASC_OUT(),
        .CNTVALUEOUT(o_odly_cntvalueout),
        .DATAOUT(hb_ck_fwd_delayed),
        .CASC_IN(1'b0),
        .CASC_RETURN(1'b0),
        .CE(i_odly_ce),
        .CLK(i_axi_aclk),
        .CNTVALUEIN(i_odly_cntvaluein),
        .EN_VTC(i_odly_en_vtc),
        .INC(i_odly_inc),
        .LOAD(i_odly_load),
        .ODATAIN(hb_ck_fwd),
        .RST((~i_axi_aresetn) | i_idelayctrl_rst | odelay_rst_seq_axi | i_odly_rst)
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
