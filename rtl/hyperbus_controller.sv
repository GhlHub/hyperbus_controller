`timescale 1ns/1ps

module hyperbus_controller #(
    parameter int AXI_ADDR_WIDTH = 32,
    parameter int AXI_DATA_WIDTH = 32,
    parameter int AXIL_ADDR_WIDTH = 16,
    parameter int HB_LATENCY_DEFAULT = 6,
    // Compensation window (in i_hb_clk_200 cycles) for ODDRE1 forwarded outputs.
    parameter int ODDRE1_TX_PIPE_CYCLES = 1,
    // Read termination requirement: keep CS# asserted this many HB cycles
    // after CK is gated off, before deasserting CS#.
    parameter int HB_READ_CS_DEASSERT_DELAY = 2
) (
    input  wire                         i_axi_aclk,      // 50 MHz
    input  wire                         i_axi_aresetn,
    input  wire                         i_hb_clk_200,    // 200 MHz
    input  wire                         i_hb_clk_200_samp_90, // externally sourced 200 MHz, +90 deg
    input  wire                         i_hb_rstn,

    // AXI4 Full slave (32-bit)
    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_awaddr,
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
    output logic                        s_axi_bvalid,
    input  wire                         s_axi_bready,

    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_araddr,
    input  wire [7:0]                   s_axi_arlen,
    input  wire [2:0]                   s_axi_arsize,
    input  wire [1:0]                   s_axi_arburst,
    input  wire                         s_axi_arvalid,
    output logic                        s_axi_arready,

    output logic [AXI_DATA_WIDTH-1:0]   s_axi_rdata,
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

    // HyperBus physical interface (1.8V differential CK)
    output wire                         o_hb_cs_n,
    output wire                         o_hb_ck_p,
    output wire                         o_hb_ck_n,
    inout  wire                         io_hb_rwds,
    inout  wire [7:0]                   io_hb_dq,
    output wire                         o_hb_reset_n
);

    localparam int CMD_W = 75;
    localparam int AXI_MAX_BEATS = 32; // 128B on 32-bit interface

    // cmd packing: [74] src_axil, [73] is_write, [72] is_reg, [71:40] addr, [39:32] beats, [31:0] wdata
    logic [CMD_W-1:0] cmd_fifo_din, cmd_fifo_dout;
    logic cmd_fifo_wr_en, cmd_fifo_rd_en, cmd_fifo_full, cmd_fifo_empty, cmd_fifo_dout_valid;
    logic cmd_fifo_wr_en_full, cmd_fifo_wr_en_axil;
    logic [CMD_W-1:0] cmd_fifo_din_full, cmd_fifo_din_axil;

    logic [35:0] wr_fifo_dout;
    logic [35:0] wr_fifo_din;
    logic [31:0] rd_fifo_din, rd_fifo_dout;
    logic wr_fifo_wr_en, wr_fifo_rd_en, wr_fifo_full, wr_fifo_empty, wr_fifo_dout_valid;
    logic rd_fifo_wr_en, rd_fifo_rd_en, rd_fifo_full, rd_fifo_empty, rd_fifo_dout_valid;

    logic [0:0] b_fifo_din, b_fifo_dout;
    logic b_fifo_wr_en, b_fifo_rd_en, b_fifo_full, b_fifo_empty, b_fifo_dout_valid;

    logic [31:0] axil_rsp_fifo_din, axil_rsp_fifo_dout;
    logic axil_rsp_fifo_wr_en, axil_rsp_fifo_rd_en, axil_rsp_fifo_full, axil_rsp_fifo_empty, axil_rsp_fifo_dout_valid;

    hyperbus_fifo_bank_xilinx #(
        .CMD_W(CMD_W)
    ) u_fifo_bank (
        .i_axi_aclk(i_axi_aclk),
        .i_axi_aresetn(i_axi_aresetn),
        .i_hb_clk_200(i_hb_clk_200),
        .i_hb_rstn(i_hb_rstn),
        .i_cmd_fifo_din(cmd_fifo_din),
        .i_cmd_fifo_wr_en(cmd_fifo_wr_en),
        .o_cmd_fifo_full(cmd_fifo_full),
        .o_cmd_fifo_dout(cmd_fifo_dout),
        .i_cmd_fifo_rd_en(cmd_fifo_rd_en),
        .o_cmd_fifo_empty(cmd_fifo_empty),
        .o_cmd_fifo_dout_valid(cmd_fifo_dout_valid),
        .i_wr_fifo_din(wr_fifo_din),
        .i_wr_fifo_wr_en(wr_fifo_wr_en),
        .o_wr_fifo_full(wr_fifo_full),
        .o_wr_fifo_dout(wr_fifo_dout),
        .i_wr_fifo_rd_en(wr_fifo_rd_en),
        .o_wr_fifo_empty(wr_fifo_empty),
        .o_wr_fifo_dout_valid(wr_fifo_dout_valid),
        .i_rd_fifo_din(rd_fifo_din),
        .i_rd_fifo_wr_en(rd_fifo_wr_en),
        .o_rd_fifo_full(rd_fifo_full),
        .o_rd_fifo_dout(rd_fifo_dout),
        .i_rd_fifo_rd_en(rd_fifo_rd_en),
        .o_rd_fifo_empty(rd_fifo_empty),
        .o_rd_fifo_dout_valid(rd_fifo_dout_valid),
        .i_b_fifo_din(b_fifo_din),
        .i_b_fifo_wr_en(b_fifo_wr_en),
        .o_b_fifo_full(b_fifo_full),
        .o_b_fifo_dout(b_fifo_dout),
        .i_b_fifo_rd_en(b_fifo_rd_en),
        .o_b_fifo_empty(b_fifo_empty),
        .o_b_fifo_dout_valid(b_fifo_dout_valid),
        .i_axil_rsp_fifo_din(axil_rsp_fifo_din),
        .i_axil_rsp_fifo_wr_en(axil_rsp_fifo_wr_en),
        .o_axil_rsp_fifo_full(axil_rsp_fifo_full),
        .o_axil_rsp_fifo_dout(axil_rsp_fifo_dout),
        .i_axil_rsp_fifo_rd_en(axil_rsp_fifo_rd_en),
        .o_axil_rsp_fifo_empty(axil_rsp_fifo_empty),
        .o_axil_rsp_fifo_dout_valid(axil_rsp_fifo_dout_valid)
    );

    assign cmd_fifo_wr_en = cmd_fifo_wr_en_axil | cmd_fifo_wr_en_full;
    assign cmd_fifo_din   = cmd_fifo_wr_en_axil ? cmd_fifo_din_axil : cmd_fifo_din_full;
    // -------------------------
    // AXI full front-end (single outstanding read + single outstanding write)
    // -------------------------
    logic aw_pending;
    logic [31:0] aw_addr_q;
    logic [7:0]  aw_len_q;
    logic [7:0]  w_beats_rcvd;

    logic rd_active;
    logic [7:0] rd_beats_left;

    logic [31:0] rdata_hold;
    logic rdata_hold_valid;
    logic rd_refill_wait;

    logic b_pop_pending;
    logic axil_rsp_pop_pending;
    // Drive write FIFO directly from AXI W-channel handshake to avoid
    // one-cycle skew between data and enqueue.
    assign wr_fifo_wr_en  = s_axi_wready && s_axi_wvalid && (w_beats_rcvd <= aw_len_q);
    assign wr_fifo_din    = {s_axi_wstrb, s_axi_wdata};

    always_ff @(posedge i_axi_aclk or negedge i_axi_aresetn) begin
        if (!i_axi_aresetn) begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bvalid  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            s_axi_arready <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            s_axi_rresp   <= 2'b00;
            s_axi_rlast   <= 1'b0;
            s_axi_rdata   <= '0;
            aw_pending <= 1'b0;
            aw_addr_q <= '0;
            aw_len_q  <= '0;
            w_beats_rcvd <= '0;
            rd_active <= 1'b0;
            rd_beats_left <= '0;
            rd_fifo_rd_en <= 1'b0;
            b_fifo_rd_en <= 1'b0;
            cmd_fifo_wr_en_full <= 1'b0;
            cmd_fifo_din_full <= '0;
            b_pop_pending <= 1'b0;
            rdata_hold <= '0;
            rdata_hold_valid <= 1'b0;
            rd_refill_wait <= 1'b0;
        end else begin
            cmd_fifo_wr_en_full <= 1'b0;
            rd_fifo_rd_en <= 1'b0;
            b_fifo_rd_en <= 1'b0;

            // AW: only INCR, 32-bit beats, up to 32 beats
            s_axi_awready <= (!aw_pending) && (!cmd_fifo_full) && (s_axi_awsize == 3'd2) && (s_axi_awburst == 2'b01) && (s_axi_awlen <= 8'd31);
            if (s_axi_awready && s_axi_awvalid) begin
                aw_pending <= 1'b1;
                aw_addr_q <= s_axi_awaddr;
                aw_len_q <= s_axi_awlen;
                w_beats_rcvd <= 8'd0;
            end

            // Accept exactly AWLEN+1 beats; block extra cycles from duplicating writes.
            s_axi_wready <= aw_pending && !wr_fifo_full && (w_beats_rcvd <= aw_len_q);
            if (s_axi_wready && s_axi_wvalid && (w_beats_rcvd <= aw_len_q)) begin
                w_beats_rcvd <= w_beats_rcvd + 8'd1;
                if (w_beats_rcvd == aw_len_q) begin
                    cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, aw_addr_q, (aw_len_q + 8'd1), 32'h0};
                    cmd_fifo_wr_en_full <= 1'b1;
                    aw_pending <= 1'b0;
                end
            end

            if (!s_axi_bvalid && !b_fifo_empty && !b_pop_pending) begin
                b_fifo_rd_en <= 1'b1;
                b_pop_pending <= 1'b1;
            end
            if (b_pop_pending && b_fifo_dout_valid) begin
                s_axi_bvalid <= 1'b1;
                s_axi_bresp <= 2'b00;
                b_pop_pending <= 1'b0;
            end
            if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end

            // AR
            s_axi_arready <= (!rd_active) && (!cmd_fifo_full) && (s_axi_arsize == 3'd2) && (s_axi_arburst == 2'b01) && (s_axi_arlen <= 8'd31);
            if ((!rd_active) && (!cmd_fifo_full) && (s_axi_arsize == 3'd2) && (s_axi_arburst == 2'b01) && (s_axi_arlen <= 8'd31) && s_axi_arvalid) begin
                cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, s_axi_araddr, (s_axi_arlen + 8'd1), 32'h0};
                cmd_fifo_wr_en_full <= 1'b1;
                rd_active <= 1'b1;
                rd_beats_left <= s_axi_arlen + 8'd1;
                rdata_hold_valid <= 1'b0;
                rd_refill_wait <= 1'b0;
            end

            // FWFT RD FIFO consumes with a 1-cycle refill wait after pop so we don't
            // re-sample the same dout word on the pop edge.
            if (rd_refill_wait) begin
                rd_refill_wait <= 1'b0;
            end else if (!rdata_hold_valid && rd_active && !rd_fifo_empty) begin
                rdata_hold <= rd_fifo_dout;
                rdata_hold_valid <= 1'b1;
            end

            if (!s_axi_rvalid && rdata_hold_valid) begin
                s_axi_rvalid <= 1'b1;
                s_axi_rdata <= rdata_hold;
                s_axi_rresp <= 2'b00;
                s_axi_rlast <= (rd_beats_left == 8'd1);
            end
            if (s_axi_rvalid && s_axi_rready) begin
                // Pop consumed FWFT word; next word appears after a short update delay.
                rd_fifo_rd_en <= 1'b1;
                s_axi_rvalid <= 1'b0;
                rdata_hold_valid <= 1'b0;
                rd_refill_wait <= 1'b1;
                if (rd_beats_left != 0) rd_beats_left <= rd_beats_left - 8'd1;
                if (rd_beats_left == 8'd1) begin
                    rd_active <= 1'b0;
                    s_axi_rlast <= 1'b0;
                    rd_refill_wait <= 1'b0;
                end
            end
        end
    end

    // -------------------------
    // AXI-Lite front-end (single beat only)
    // -------------------------
    typedef enum logic [2:0] {
        AXIL_IDLE,
        AXIL_WR_WAIT_B,
        AXIL_RD_WAIT_DATA,
        AXIL_RD_RESP
    } axil_state_t;
    axil_state_t axil_state;

    logic [AXIL_ADDR_WIDTH-1:0] axil_awaddr_q;
    logic axil_aw_seen;

    function automatic [31:0] axil_to_hb_addr(input logic [AXIL_ADDR_WIDTH-1:0] a);
        begin
            case (a)
                16'h0000: axil_to_hb_addr = 32'h0000_0000; // ID0
                16'h0002: axil_to_hb_addr = 32'h0000_0002; // ID1
                16'h0800: axil_to_hb_addr = 32'h0000_0800; // CR0
                16'h0802: axil_to_hb_addr = 32'h0000_0802; // CR1
                default:  axil_to_hb_addr = {30'h0, (a[2] | a[1]), 1'b0};
            endcase
        end
    endfunction

    always_ff @(posedge i_axi_aclk or negedge i_axi_aresetn) begin
        if (!i_axi_aresetn) begin
            s_axil_awready <= 1'b0;
            s_axil_wready  <= 1'b0;
            s_axil_bvalid  <= 1'b0;
            s_axil_bresp   <= 2'b00;
            s_axil_arready <= 1'b0;
            s_axil_rvalid  <= 1'b0;
            s_axil_rresp   <= 2'b00;
            s_axil_rdata   <= 32'h0;
            axil_awaddr_q <= '0;
            axil_aw_seen <= 1'b0;
            axil_state <= AXIL_IDLE;
            axil_rsp_fifo_rd_en <= 1'b0;
            axil_rsp_pop_pending <= 1'b0;
            cmd_fifo_wr_en_axil <= 1'b0;
            cmd_fifo_din_axil <= '0;
        end else begin
            axil_rsp_fifo_rd_en <= 1'b0;
            cmd_fifo_wr_en_axil <= 1'b0;

            s_axil_awready <= (axil_state == AXIL_IDLE) && !axil_aw_seen;
            s_axil_wready  <= (axil_state == AXIL_IDLE) && axil_aw_seen;
            s_axil_arready <= (axil_state == AXIL_IDLE) && !cmd_fifo_full;

            if (s_axil_awready && s_axil_awvalid) begin
                axil_awaddr_q <= s_axil_awaddr;
                axil_aw_seen <= 1'b1;
            end

            if ((axil_state == AXIL_IDLE) && axil_aw_seen && s_axil_wready && s_axil_wvalid && !cmd_fifo_full) begin
                cmd_fifo_din_axil <= {1'b1, 1'b1, 1'b1, axil_to_hb_addr(axil_awaddr_q), 8'd1, s_axil_wdata};
                cmd_fifo_wr_en_axil <= 1'b1;
                axil_aw_seen <= 1'b0;
                axil_state <= AXIL_WR_WAIT_B;
            end

            if ((axil_state == AXIL_IDLE) && s_axil_arready && s_axil_arvalid) begin
                // For AXI-Lite reads, carry ARADDR[1] in wdata[0] to select return halfword lane.
                cmd_fifo_din_axil <= {1'b1, 1'b0, 1'b1, axil_to_hb_addr(s_axil_araddr), 8'd1, {31'h0, s_axil_araddr[1]}};
                cmd_fifo_wr_en_axil <= 1'b1;
                axil_state <= AXIL_RD_WAIT_DATA;
            end

            if (axil_state == AXIL_WR_WAIT_B) begin
                if (!s_axil_bvalid && !axil_rsp_fifo_empty && !axil_rsp_pop_pending) begin
                    axil_rsp_fifo_rd_en <= 1'b1;
                    axil_rsp_pop_pending <= 1'b1;
                end
                if (axil_rsp_pop_pending && axil_rsp_fifo_dout_valid) begin
                    s_axil_bvalid <= 1'b1;
                    s_axil_bresp <= 2'b00;
                    axil_rsp_pop_pending <= 1'b0;
                end
                if (s_axil_bvalid && s_axil_bready) begin
                    s_axil_bvalid <= 1'b0;
                    axil_state <= AXIL_IDLE;
                end
            end

            if (axil_state == AXIL_RD_WAIT_DATA) begin
                if (!axil_rsp_fifo_empty && !axil_rsp_pop_pending) begin
                    axil_rsp_fifo_rd_en <= 1'b1;
                    axil_rsp_pop_pending <= 1'b1;
                end
                if (axil_rsp_pop_pending && axil_rsp_fifo_dout_valid) begin
                    s_axil_rdata <= axil_rsp_fifo_dout;
                    s_axil_rresp <= 2'b00;
                    s_axil_rvalid <= 1'b1;
                    axil_rsp_pop_pending <= 1'b0;
                    axil_state <= AXIL_RD_RESP;
                end
            end

            if (axil_state == AXIL_RD_RESP && s_axil_rvalid && s_axil_rready) begin
                s_axil_rvalid <= 1'b0;
                axil_state <= AXIL_IDLE;
            end
        end
    end

    // -------------------------
    // HyperBus PHY controls and sampled inputs
    // -------------------------
    logic hb_clk_ce;
    logic hb_cs_n_q;
    logic [7:0] dq_t;
    logic [7:0] dq_o_d1, dq_o_d2;
    logic rwds_t, rwds_o_d1, rwds_o_d2;
    logic [7:0] dq_q1, dq_q2;
    logic rwds_q1, rwds_q2;

    assign o_hb_cs_n = hb_cs_n_q;
    assign o_hb_reset_n = i_hb_rstn;

    hyperbus_phy_xilinx u_hyperbus_phy (
        .i_hb_clk_200(i_hb_clk_200),
        .i_hb_clk_200_samp_90(i_hb_clk_200_samp_90),
        .i_hb_rstn(i_hb_rstn),
        .i_hb_clk_ce(hb_clk_ce),
        .o_hb_ck_p(o_hb_ck_p),
        .o_hb_ck_n(o_hb_ck_n),
        .io_hb_rwds(io_hb_rwds),
        .io_hb_dq(io_hb_dq),
        .i_dq_t(dq_t),
        .i_dq_o_d1(dq_o_d1),
        .i_dq_o_d2(dq_o_d2),
        .o_dq_q1(dq_q1),
        .o_dq_q2(dq_q2),
        .i_rwds_t(rwds_t),
        .i_rwds_o_d1(rwds_o_d1),
        .i_rwds_o_d2(rwds_o_d2),
        .o_rwds_q1(rwds_q1),
        .o_rwds_q2(rwds_q2)
    );

    // -------------------------
    // HyperBus engine (HB clock domain)
    // -------------------------
    typedef enum logic [3:0] {
        HB_IDLE,
        HB_GET_CMD,
        HB_CS_SETUP,
        HB_CA_PRIME,
        HB_CA,
        HB_REG_WRITE_DATA,
        HB_REG_WRITE_STOP,
        HB_FULL_LAT,
        HB_AXIL_LAT,
        HB_WRITE_PRIME,
        HB_WRITE,
        HB_WRITE_DRAIN,
        HB_FULL_READ,
        HB_AXIL_READ,
        HB_TERM_HOLD,
        HB_TERM
    } hb_state_t;

    hb_state_t hb_state;

    logic [CMD_W-1:0] cur_cmd;
    logic cur_src_axil, cur_is_write, cur_is_reg;
    logic [31:0] cur_addr;
    logic [7:0] cur_axi_beats;
    logic [31:0] cur_wdata;

    logic [47:0] ca_shift;
    logic [2:0]  ca_cycle;
    logic latency_2x;
    logic [7:0] latency_left;
    logic [7:0] base_latency;
    logic [1:0] wr_rwds_wait_cnt;
    logic [1:0] cs_preclk_cnt;
    logic [2:0] term_hold_cnt;

    logic [15:0] cr0_shadow, cr1_shadow;
    logic [7:0] words_total_lo;
    logic [8:0] words_total;
    logic [8:0] words_done;
    logic [10:0] rwds_edges_seen;
    logic [10:0] rwds_edges_needed;

    logic wrbuf_valid;
    logic [31:0] wrbuf;
    logic [3:0]  wrbuf_strb;
    logic wrbuf_high_half;
    logic wrnext_valid;
    logic [31:0] wrnext;
    logic [3:0]  wrnext_strb;
    logic [7:0] wr_words_reqd;

    logic rd_half;
    logic [31:0] rd_pack;

    logic [15:0] hb_word16;

    assign hb_word16 = {dq_q1, dq_q2};

    // default config shadows (used for latency control)
    always_ff @(posedge i_hb_clk_200 or negedge i_hb_rstn) begin
        if (!i_hb_rstn) begin
            hb_state <= HB_IDLE;
            cmd_fifo_rd_en <= 1'b0;
            hb_cs_n_q <= 1'b1;
            hb_clk_ce <= 1'b0;
            dq_t <= 8'hFF;
            dq_o_d1 <= 8'h00;
            dq_o_d2 <= 8'h00;
            rwds_t <= 1'b1;
            rwds_o_d1 <= 1'b0;
            rwds_o_d2 <= 1'b0;
            ca_cycle <= 3'd0;
            latency_2x <= 1'b0;
            latency_left <= 8'd0;
            base_latency <= HB_LATENCY_DEFAULT[7:0];
            wr_rwds_wait_cnt <= 2'd0;
            cs_preclk_cnt <= 2'd0;
            term_hold_cnt <= 3'd0;
            cr0_shadow <= 16'h8F2F;
            cr1_shadow <= 16'hFFF1;
            words_total <= 9'd0;
            words_done <= 9'd0;
            rwds_edges_seen <= 11'd0;
            rwds_edges_needed <= 11'd0;
            wr_fifo_rd_en <= 1'b0;
            wrbuf_valid <= 1'b0;
            wrbuf <= 32'h0;
            wrbuf_strb <= 4'h0;
            wrbuf_high_half <= 1'b0;
            wrnext_valid <= 1'b0;
            wrnext <= 32'h0;
            wrnext_strb <= 4'h0;
            wr_words_reqd <= 8'd0;
            rd_fifo_wr_en <= 1'b0;
            rd_pack <= 32'h0;
            rd_half <= 1'b0;
            b_fifo_wr_en <= 1'b0;
            b_fifo_din <= 1'b0;
            axil_rsp_fifo_wr_en <= 1'b0;
            axil_rsp_fifo_din <= 32'h0;
        end else begin
            cmd_fifo_rd_en <= 1'b0;
            wr_fifo_rd_en <= 1'b0;
            rd_fifo_wr_en <= 1'b0;
            b_fifo_wr_en <= 1'b0;
            axil_rsp_fifo_wr_en <= 1'b0;

            case (hb_state)
                HB_IDLE: begin
                    hb_cs_n_q <= 1'b1;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    if (!cmd_fifo_empty) begin
                        cmd_fifo_rd_en <= 1'b1;
                        hb_state <= HB_GET_CMD;
                    end
                end

                HB_GET_CMD: begin
                    if (cmd_fifo_dout_valid) begin
                        cur_cmd <= cmd_fifo_dout;
                        cur_src_axil <= cmd_fifo_dout[74];
                        cur_is_write <= cmd_fifo_dout[73];
                        cur_is_reg <= cmd_fifo_dout[72];
                        cur_addr <= cmd_fifo_dout[71:40];
                        cur_axi_beats <= cmd_fifo_dout[39:32];
                        cur_wdata <= cmd_fifo_dout[31:0];

                        // Build CA (linear burst, memory/register selection)
                        // HyperBus word address is byte_addr >> 1
                        ca_shift[47]   <= ~cmd_fifo_dout[73]; // RW#: 1=read
                        ca_shift[46]   <= cmd_fifo_dout[72];  // AS
                        ca_shift[45]   <= 1'b1;               // linear burst
                        ca_shift[44:16] <= cmd_fifo_dout[71:43];
                        ca_shift[15:3] <= 13'h0;
                        ca_shift[2:0]  <= cmd_fifo_dout[43:41];

                        if (cmd_fifo_dout[74]) begin
                            words_total <= 9'd1;
                            rwds_edges_needed <= 11'd2; // 16-bit read/write uses 2 RWDS transitions
                        end else begin
                            words_total <= {cmd_fifo_dout[39:32], 1'b0}; // beats * 2 words
                            rwds_edges_needed <= {cmd_fifo_dout[39:32], 2'b00}; // beats * 4 bytes/transitions
                        end
                        words_done <= 9'd0;
                        rwds_edges_seen <= 11'd0;
                        ca_cycle <= 3'd0;
                        latency_2x <= 1'b0;
                        base_latency <= HB_LATENCY_DEFAULT[7:0];
                        wr_rwds_wait_cnt <= 2'd0;
                        cs_preclk_cnt <= 2'd2;
                        term_hold_cnt <= ODDRE1_TX_PIPE_CYCLES[2:0];

                        wrbuf_valid <= 1'b0;
                        wrbuf_strb <= 4'h0;
                        wrbuf_high_half <= 1'b0;
                        wrnext_valid <= 1'b0;
                        wrnext_strb <= 4'h0;
                        wr_words_reqd <= 8'd0;
                        rd_half <= 1'b0;
                        hb_cs_n_q <= 1'b0;
                        hb_clk_ce <= 1'b0;
                        hb_state <= HB_CS_SETUP;
                    end
                end

                HB_CS_SETUP: begin
                    // Keep CS# asserted for 2 HyperBus clock periods before enabling CK.
                    hb_cs_n_q <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    if (cs_preclk_cnt != 0) begin
                        cs_preclk_cnt <= cs_preclk_cnt - 2'd1;
                    end else begin
                        hb_state <= HB_CA_PRIME;
                    end
                end

                HB_CA_PRIME: begin
                    // Prime CA while CK is gated, then enable CK so first CA appears on first active edge.
                    hb_cs_n_q <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'h00;
                    rwds_t <= 1'b1;
                    dq_o_d1 <= ca_shift[47:40];
                    dq_o_d2 <= ca_shift[39:32];
                    ca_shift <= {ca_shift[31:0], 16'h0000};
                    ca_cycle <= 3'd1;
                    hb_clk_ce <= 1'b1;
                    hb_state <= HB_CA;
                end

                HB_CA: begin
                    dq_t <= 8'h00;
                    rwds_t <= 1'b1;
                    dq_o_d1 <= ca_shift[47:40];
                    dq_o_d2 <= ca_shift[39:32];
                    ca_shift <= {ca_shift[31:0], 16'h0000};
                    ca_cycle <= ca_cycle + 3'd1;

                    // decide 1x/2x latency after second CK cycle
                    if (ca_cycle == 3'd2) begin
                        latency_2x <= rwds_q1;
                    end

                    if (ca_cycle == 3'd3) begin
                        if (cur_is_reg && cur_is_write) begin
                            // Dedicated register-write path:
                            // preload 16-bit register value immediately after CA for contiguous stream.
                            dq_o_d1 <= cur_wdata[15:8];
                            dq_o_d2 <= cur_wdata[7:0];
                            rwds_o_d1 <= 1'b0;
                            rwds_o_d2 <= 1'b0;
                            if (cur_addr[3:2] == 2'b00) cr0_shadow <= cur_wdata[15:0];
                            if (cur_addr[3:2] == 2'b01) cr1_shadow <= cur_wdata[15:0];
                            wr_rwds_wait_cnt <= 2'd0;
                            latency_left <= 8'd0;
                            hb_state <= HB_REG_WRITE_DATA;
                        end else begin
                            logic [7:0] latency_cycles;
                            // AXI-full writes and all reads honor RWDS-selected latency.
                            // Compensate write path by ODDRE1 TX pipeline cycles so first emitted
                            // write beat aligns to target latency.
                            latency_left = latency_2x ? ((base_latency - ODDRE1_TX_PIPE_CYCLES[7:0]) << 1) - 1:
                                (base_latency - ODDRE1_TX_PIPE_CYCLES[7:0]);
/*                            
                            latency_cycles = latency_2x ? (base_latency << 1) : base_latency;
                            if (cur_is_write) begin
                                if (latency_cycles > ODDRE1_TX_PIPE_CYCLES[7:0]) begin
                                    latency_left <= latency_cycles - ODDRE1_TX_PIPE_CYCLES[7:0];
                                end else begin
                                    latency_left <= 8'd0;
                                end
                            end else begin
                                latency_left <= latency_cycles;
                            end
*/                            
                            wr_rwds_wait_cnt <= cur_is_write ? 2'd2 : 2'd0;
                            hb_state <= cur_src_axil ? HB_AXIL_LAT : HB_FULL_LAT;
                        end
                    end
                end

                HB_REG_WRITE_DATA: begin
                    // Emit register write data beat directly after CA (no idle/Z gap on DQ).
                    dq_t <= 8'h00;
                    // AXI-Lite/register writes do not drive RWDS.
                    rwds_t <= 1'b1;
                    rwds_o_d1 <= 1'b0;
                    rwds_o_d2 <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    hb_state <= HB_REG_WRITE_STOP;
                end

                HB_REG_WRITE_STOP: begin
                    // Keep CK stopped before terminating transaction.
                    hb_cs_n_q <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'h00;
                    rwds_t <= 1'b1;
                    rwds_o_d1 <= 1'b0;
                    rwds_o_d2 <= 1'b0;
                    term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                    hb_state <= HB_TERM_HOLD;
                end

                HB_FULL_LAT: begin
                    dq_t <= 8'hFF;
                    if (cur_is_write) begin
                        // For AXI-full bursts, all write beats are present before command issue.
                        // Pop exactly when emit/next pipeline has space.
                        // Check for wr_fifo_rd_en == 1 so we don't pop twice in a row.
                        if (((wr_words_reqd < cur_axi_beats) && (wr_fifo_rd_en==1'b0)) &&
                            (!wrnext_valid || !wrbuf_valid)) begin
                            wr_fifo_rd_en <= 1'b1;
                            wr_words_reqd <= wr_words_reqd + 8'd1;
                            if (!wrbuf_valid) begin
                                wrbuf <= wr_fifo_dout[31:0];
                                wrbuf_strb <= wr_fifo_dout[35:32];
                                wrbuf_valid <= 1'b1;
                                wrbuf_high_half <= 1'b0;
                            end else if (!wrnext_valid) begin
                                wrnext <= wr_fifo_dout[31:0];
                                wrnext_strb <= wr_fifo_dout[35:32];
                                wrnext_valid <= 1'b1;
                            end
                        end
                    end
                    // For writes, keep RWDS undriven for 2 clocks after CA completion.
                    if (cur_is_write && (wr_rwds_wait_cnt != 0)) begin
                        rwds_t <= 1'b1;
                        rwds_o_d1 <= 1'b0;
                        rwds_o_d2 <= 1'b0;
                        wr_rwds_wait_cnt <= wr_rwds_wait_cnt - 2'd1;
                    end else begin
                        rwds_t <= cur_is_write ? 1'b0 : 1'b1;
                        rwds_o_d1 <= 1'b0;
                        rwds_o_d2 <= 1'b0;
                    end
                    if (latency_left != 0) begin
                        latency_left <= latency_left - 8'd1;
                    end else if (cur_is_write && (wr_rwds_wait_cnt != 0)) begin
                        // Hold in latency state until required post-CA RWDS wait clocks elapse.
                        hb_state <= HB_FULL_LAT;
                    end else if (cur_is_write) begin
                        // No bubbles allowed once burst write serialization starts:
                        // prefill 1 word for single beat, 2 words for burst.
                        if (wrbuf_valid && ((cur_axi_beats == 8'd1) || wrnext_valid)) begin
                            hb_state <= HB_WRITE_PRIME;
                        end else begin
                            hb_state <= HB_FULL_LAT;
                        end
                    end else begin
                        hb_state <= HB_FULL_READ;
                    end
                end

                HB_AXIL_LAT: begin
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    rwds_o_d1 <= 1'b0;
                    rwds_o_d2 <= 1'b0;
                    if (latency_left != 0) begin
                        latency_left <= latency_left - 8'd1;
                    end else if (cur_is_write && (wr_rwds_wait_cnt != 0)) begin
                        hb_state <= HB_AXIL_LAT;
                    end else begin
                        // AXI-Lite read path uses dedicated read state.
                        hb_state <= HB_AXIL_READ;
                    end
                end

                HB_WRITE_PRIME: begin
                    // Preload first write halfword one full cycle ahead for ODDRE1.
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    rwds_o_d1 <= 1'b0;
                    rwds_o_d2 <= 1'b0;

                    if ((wr_words_reqd < cur_axi_beats) &&
                        (!wrnext_valid || !wrbuf_valid)) begin
                        wr_fifo_rd_en <= 1'b1;
                        wr_words_reqd <= wr_words_reqd + 8'd1;
                        if (!wrbuf_valid) begin
                            wrbuf <= wr_fifo_dout[31:0];
                            wrbuf_strb <= wr_fifo_dout[35:32];
                            wrbuf_valid <= 1'b1;
                            wrbuf_high_half <= 1'b0;
                        end else if (!wrnext_valid) begin
                            wrnext <= wr_fifo_dout[31:0];
                            wrnext_strb <= wr_fifo_dout[35:32];
                            wrnext_valid <= 1'b1;
                        end
                    end
                    if (wrbuf_valid) begin
                        dq_t <= 8'h00;
                        rwds_t <= 1'b0;
                        dq_o_d1 <= wrbuf[15:8];
                        dq_o_d2 <= wrbuf[7:0];
                        rwds_o_d1 <= ~wrbuf_strb[1];
                        rwds_o_d2 <= ~wrbuf_strb[0];
                        wrbuf_high_half <= 1'b1;
                        words_done <= words_done + 9'd1;
                        hb_state <= HB_WRITE;
                    end
                end

                HB_WRITE: begin
                    logic [8:0] words_done_next;
                    logic       did_emit;
                    logic        wrbuf_valid_n, wrnext_valid_n, wrbuf_high_half_n;
                    logic [31:0] wrbuf_n, wrnext_n;
                    logic [3:0]  wrbuf_strb_n, wrnext_strb_n;

                    words_done_next = words_done;
                    did_emit = 1'b0;
                    wrbuf_valid_n = wrbuf_valid;
                    wrnext_valid_n = wrnext_valid;
                    wrbuf_n = wrbuf;
                    wrnext_n = wrnext;
                    wrbuf_strb_n = wrbuf_strb;
                    wrnext_strb_n = wrnext_strb;
                    wrbuf_high_half_n = wrbuf_high_half;

                    dq_t <= 8'h00;
                    rwds_t <= 1'b0;

                    if (!cur_src_axil) begin
                        // Keep next stage filled while streaming.
                        if ((wr_words_reqd < cur_axi_beats) &&
                            (!wrnext_valid_n)) begin
                            wr_fifo_rd_en <= 1'b1;
                            wr_words_reqd <= wr_words_reqd + 8'd1;
                            if (!wrbuf_valid_n) begin
                                wrbuf_n = wr_fifo_dout[31:0];
                                wrbuf_strb_n = wr_fifo_dout[35:32];
                                wrbuf_valid_n = 1'b1;
                                wrbuf_high_half_n = 1'b0;
                            end else if (!wrnext_valid_n) begin
                                wrnext_n = wr_fifo_dout[31:0];
                                wrnext_strb_n = wr_fifo_dout[35:32];
                                wrnext_valid_n = 1'b1;
                            end
                        end

                        if (wrbuf_valid_n) begin
                            did_emit = 1'b1;
                            words_done_next = words_done + 9'd1;
                            if (!wrbuf_high_half_n) begin
                                dq_o_d1 <= wrbuf_n[15:8];
                                dq_o_d2 <= wrbuf_n[7:0];
                                rwds_o_d1 <= ~wrbuf_strb_n[1];
                                rwds_o_d2 <= ~wrbuf_strb_n[0];
                                wrbuf_high_half_n = 1'b1;
                            end else begin
                                dq_o_d1 <= wrbuf_n[31:24];
                                dq_o_d2 <= wrbuf_n[23:16];
                                rwds_o_d1 <= ~wrbuf_strb_n[3];
                                rwds_o_d2 <= ~wrbuf_strb_n[2];
                                wrbuf_high_half_n = 1'b0;
                                if (wrnext_valid_n) begin
                                    wrbuf_n = wrnext_n;
                                    wrbuf_strb_n = wrnext_strb_n;
                                    wrbuf_valid_n = 1'b1;
                                    wrnext_valid_n = 1'b0;
                                end else begin
                                    wrbuf_valid_n = 1'b0;
                                end
                            end
                        end
                    end

                    words_done <= words_done_next;
                    wrbuf_valid <= wrbuf_valid_n;
                    wrnext_valid <= wrnext_valid_n;
                    wrbuf <= wrbuf_n;
                    wrnext <= wrnext_n;
                    wrbuf_strb <= wrbuf_strb_n;
                    wrnext_strb <= wrnext_strb_n;
                    wrbuf_high_half <= wrbuf_high_half_n;

                    // Exit immediately after final emitted 16-bit beat.
                    if (did_emit && (words_done_next >= words_total)) begin
                        hb_state <= HB_WRITE_DRAIN;
                    end
                end

                HB_WRITE_DRAIN: begin
                    // Stop CK, then delay CS# deassertion in HB_TERM_HOLD.
                    hb_cs_n_q <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'h00;
                    rwds_t <= 1'b0;
                    rwds_o_d1 <= 1'b1;
                    rwds_o_d2 <= 1'b1;
                    term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                    hb_state <= HB_TERM_HOLD;
                end

                HB_FULL_READ: begin
                    logic [8:0] words_done_next;
                    logic       took_word;
                    logic [10:0] rwds_edges_seen_next;
                    logic         rwds_data_valid;

                    words_done_next = words_done;
                    took_word = 1'b0;
                    rwds_edges_seen_next = rwds_edges_seen;
                    // RWDS transition-aligned data: treat RWDS edge activity as data valid qualifier.
                    rwds_data_valid = (rwds_q1 ^ rwds_q2);

                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;

                    if (rwds_data_valid && !rd_half) begin
                        rd_pack[15:0] <= hb_word16;
                        rd_half <= 1'b1;
                        words_done_next = words_done + 9'd1;
                        took_word = 1'b1;
                        rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                    end else if (rwds_data_valid) begin
                        rd_pack[31:16] <= hb_word16;
                        if (!rd_fifo_full) begin
                            rd_fifo_din <= {hb_word16, rd_pack[15:0]};
                            rd_fifo_wr_en <= 1'b1;
                            rd_half <= 1'b0;
                            words_done_next = words_done + 9'd1;
                            took_word = 1'b1;
                            rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                        end
                    end

                    words_done <= words_done_next;
                    rwds_edges_seen <= rwds_edges_seen_next;

                    // Terminate read once required RWDS transitions have been sampled.
                    if (took_word && (rwds_edges_seen_next >= rwds_edges_needed)) begin
                        hb_clk_ce <= 1'b0;
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end
                end

                HB_AXIL_READ: begin
                    logic [8:0] words_done_next;
                    logic       took_word;
                    logic [10:0] rwds_edges_seen_next;
                    logic         rwds_data_valid;

                    words_done_next = words_done;
                    took_word = 1'b0;
                    rwds_edges_seen_next = rwds_edges_seen;
                    rwds_data_valid = (rwds_q1 ^ rwds_q2);

                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;

                    // AXI-Lite 16-bit read support:
                    // cur_wdata[0] mirrors ARADDR[1], selecting return halfword lane.
                    if (cur_wdata[0]) begin
                        axil_rsp_fifo_din <= {hb_word16, 16'h0};
                    end else begin
                        axil_rsp_fifo_din <= {16'h0, hb_word16};
                    end
                    if (rwds_data_valid && !axil_rsp_fifo_full) begin
                        axil_rsp_fifo_wr_en <= 1'b1;
                        words_done_next = words_done + 9'd1;
                        took_word = 1'b1;
                        rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                    end

                    words_done <= words_done_next;
                    rwds_edges_seen <= rwds_edges_seen_next;

                    if (took_word && (rwds_edges_seen_next >= rwds_edges_needed)) begin
                        hb_clk_ce <= 1'b0;
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end
                end

                HB_TERM_HOLD: begin
                    // Keep CS# asserted with CK stopped before deasserting CS# (read termination).
                    hb_cs_n_q <= 1'b0;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    if (term_hold_cnt != 0) begin
                        term_hold_cnt <= term_hold_cnt - 3'd1;
                    end else begin
                        hb_state <= HB_TERM;
                    end
                end

                HB_TERM: begin
                    hb_cs_n_q <= 1'b1;
                    hb_clk_ce <= 1'b0;
                    dq_t <= 8'hFF;
                    rwds_t <= 1'b1;
                    if (cur_src_axil) begin
                        if (cur_is_write && !axil_rsp_fifo_full) begin
                            axil_rsp_fifo_din <= 32'h0000_0000;
                            axil_rsp_fifo_wr_en <= 1'b1;
                        end
                    end else if (cur_is_write && !b_fifo_full) begin
                        b_fifo_din <= 1'b0;
                        b_fifo_wr_en <= 1'b1;
                    end
                    hb_state <= HB_IDLE;
                end

                default: hb_state <= HB_IDLE;
            endcase
        end
    end

`ifndef SYNTHESIS
`ifndef NO_FIFO_TRACE
    // FIFO trace instrumentation (simulation-only).
    always @(posedge i_axi_aclk) begin
        if (i_axi_aresetn) begin
            if (cmd_fifo_wr_en_full) begin
                $display("[%0t][AXI] CMD_FIFO PUSH(full) data=0x%0h", $time, cmd_fifo_din_full);
            end
            if (cmd_fifo_wr_en_axil) begin
                $display("[%0t][AXI] CMD_FIFO PUSH(axil) data=0x%0h", $time, cmd_fifo_din_axil);
            end
            if (wr_fifo_wr_en) begin
                $display("[%0t][AXI] WR_FIFO PUSH data=0x%0h", $time, wr_fifo_din);
            end
            if (rd_fifo_rd_en) begin
                $display("[%0t][AXI] RD_FIFO POP_REQ", $time);
            end
            if (s_axi_rvalid && s_axi_rready) begin
                $display("[%0t][AXI] RD_FIFO POP_DATA data=0x%08h", $time, s_axi_rdata);
            end
            if (b_fifo_rd_en) begin
                $display("[%0t][AXI] B_FIFO POP_REQ", $time);
            end
            if (b_fifo_dout_valid) begin
                $display("[%0t][AXI] B_FIFO POP_DATA data=0x%0h", $time, b_fifo_dout);
            end
            if (axil_rsp_fifo_rd_en) begin
                $display("[%0t][AXI] AXIL_RSP_FIFO POP_REQ", $time);
            end
            if (axil_rsp_fifo_dout_valid) begin
                $display("[%0t][AXI] AXIL_RSP_FIFO POP_DATA data=0x%08h", $time, axil_rsp_fifo_dout);
            end
        end
    end

    always @(posedge i_hb_clk_200) begin
        if (i_hb_rstn) begin
            if (cmd_fifo_rd_en) begin
                $display("[%0t][HB ] CMD_FIFO POP_REQ", $time);
            end
            if (cmd_fifo_dout_valid) begin
                $display("[%0t][HB ] CMD_FIFO POP_DATA data=0x%0h", $time, cmd_fifo_dout);
            end
            if (wr_fifo_rd_en) begin
                $display("[%0t][HB ] WR_FIFO POP_REQ", $time);
                $display("[%0t][HB ] WR_FIFO POP_DATA data=0x%0h", $time, wr_fifo_dout);
            end
            if (rd_fifo_wr_en) begin
                $display("[%0t][HB ] RD_FIFO PUSH data=0x%08h", $time, rd_fifo_din);
            end
            if (b_fifo_wr_en) begin
                $display("[%0t][HB ] B_FIFO PUSH data=0x%0h", $time, b_fifo_din);
            end
            if (axil_rsp_fifo_wr_en) begin
                $display("[%0t][HB ] AXIL_RSP_FIFO PUSH data=0x%08h", $time, axil_rsp_fifo_din);
            end
        end
    end
`endif
`endif

endmodule
