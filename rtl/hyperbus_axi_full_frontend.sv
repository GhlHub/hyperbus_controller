`timescale 1ns/1ps

module hyperbus_axi_full_frontend #(
    parameter int AXI_ADDR_WIDTH = 32,
    parameter int AXI_DATA_WIDTH = 32,
    parameter int AXI_ID_WIDTH = 1,
    parameter int CMD_W = 75
) (
    input  wire                         i_axi_aclk,
    input  wire                         i_axi_aresetn,
    input  wire                         i_req_block,

    input  wire                         i_cmd_fifo_full,
    output logic [CMD_W-1:0]            o_cmd_fifo_din_full,
    output logic                        o_cmd_fifo_wr_en_full,
    output logic                        o_aw_pending,

    output logic [35:0]                 o_wr_fifo_din,
    output logic                        o_wr_fifo_wr_en,
    input  wire                         i_wr_fifo_full,

    input  wire [31:0]                  i_rd_fifo_dout,
    input  wire                         i_rd_fifo_empty,
    output logic                        o_rd_fifo_rd_en,

    input  wire                         i_b_fifo_empty,
    input  wire                         i_b_fifo_dout_valid,
    output logic                        o_b_fifo_rd_en,

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
    input  wire                         s_axi_rready
);
    logic [31:0] aw_addr_q;
    logic [7:0]  aw_len_q;
    logic [7:0]  w_beats_rcvd;
    logic aw_can_accept;

    logic rd_active;
    logic [7:0] rd_beats_left;
    logic [31:0] rd_stage_mem [0:1];
    logic        rd_stage_wr_ptr, rd_stage_rd_ptr;
    logic [1:0]  rd_stage_count;
    logic        rd_pop_cooldown;

    logic b_pop_pending;
    logic wr_proto_err;
    logic [1:0] bresp_q_mem [0:31];
    logic [AXI_ID_WIDTH-1:0] bid_q_mem [0:31];
    logic [4:0] bresp_q_wr_ptr, bresp_q_rd_ptr;
    logic [5:0] bresp_q_count;
    logic bresp_q_full;
    logic [AXI_ID_WIDTH-1:0] aw_id_q;
    logic [AXI_ID_WIDTH-1:0] ar_id_q;

    assign bresp_q_full = (bresp_q_count == 6'd32);

    assign aw_can_accept = (!i_req_block) && (!o_aw_pending) && (!i_cmd_fifo_full) &&
                           (!bresp_q_full) &&
                           (s_axi_awsize == 3'd2) &&
                           (s_axi_awburst == 2'b01) &&
                           (s_axi_awlen <= 8'd31);

    // Drive write FIFO directly from AXI W-channel handshake to avoid
    // one-cycle skew between data and enqueue.
    assign o_wr_fifo_wr_en  = s_axi_wready && s_axi_wvalid && (w_beats_rcvd <= aw_len_q);
    assign o_wr_fifo_din    = {s_axi_wstrb, s_axi_wdata};

    always_ff @(posedge i_axi_aclk) begin
        if (!i_axi_aresetn) begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bvalid  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            s_axi_bid     <= '0;
            s_axi_arready <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            s_axi_rid     <= '0;
            s_axi_rresp   <= 2'b00;
            s_axi_rlast   <= 1'b0;
            s_axi_rdata   <= '0;
            o_aw_pending <= 1'b0;
            aw_addr_q <= '0;
            aw_len_q  <= '0;
            w_beats_rcvd <= '0;
            rd_active <= 1'b0;
            rd_beats_left <= '0;
            o_rd_fifo_rd_en <= 1'b0;
            o_b_fifo_rd_en <= 1'b0;
            o_cmd_fifo_wr_en_full <= 1'b0;
            o_cmd_fifo_din_full <= '0;
            b_pop_pending <= 1'b0;
            wr_proto_err <= 1'b0;
            bresp_q_wr_ptr <= 5'd0;
            bresp_q_rd_ptr <= 5'd0;
            bresp_q_count <= 6'd0;
            aw_id_q <= '0;
            ar_id_q <= '0;
            rd_stage_wr_ptr <= 1'b0;
            rd_stage_rd_ptr <= 1'b0;
            rd_stage_count <= 2'd0;
            rd_pop_cooldown <= 1'b0;
        end else begin
            logic bresp_push, bresp_pop;
            logic [1:0] bresp_push_data;
            logic rd_stage_wr_ptr_n, rd_stage_rd_ptr_n;
            logic [1:0] rd_stage_count_n;

            bresp_push = 1'b0;
            bresp_pop = 1'b0;
            bresp_push_data = 2'b00;
            rd_stage_wr_ptr_n = rd_stage_wr_ptr;
            rd_stage_rd_ptr_n = rd_stage_rd_ptr;
            rd_stage_count_n = rd_stage_count;

            o_cmd_fifo_wr_en_full <= 1'b0;
            o_rd_fifo_rd_en <= 1'b0;
            o_b_fifo_rd_en <= 1'b0;
            if (rd_pop_cooldown) rd_pop_cooldown <= 1'b0;

            // AW: only INCR, 32-bit beats, up to 32 beats
            s_axi_awready <= aw_can_accept;
            if (aw_can_accept && s_axi_awvalid) begin
                o_aw_pending <= 1'b1;
                aw_addr_q <= s_axi_awaddr;
                aw_id_q <= s_axi_awid;
                aw_len_q <= s_axi_awlen;
                w_beats_rcvd <= 8'd0;
                wr_proto_err <= 1'b0;
            end

            // Accept exactly AWLEN+1 beats; block extra cycles from duplicating writes.
            s_axi_wready <= o_aw_pending && (w_beats_rcvd <= aw_len_q);
            if (s_axi_wready && s_axi_wvalid && (w_beats_rcvd <= aw_len_q)) begin
                // AXI write protocol check:
                // WLAST must be high only on the final accepted beat.
                if (((w_beats_rcvd == aw_len_q) && !s_axi_wlast) ||
                    ((w_beats_rcvd != aw_len_q) &&  s_axi_wlast)) begin
                    wr_proto_err <= 1'b1;
                end
                w_beats_rcvd <= w_beats_rcvd + 8'd1;
                // Push write command at final beat when cmd_fifo has space.
                if ((w_beats_rcvd == aw_len_q) && !i_cmd_fifo_full && !bresp_q_full) begin
                    o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, aw_addr_q, (aw_len_q + 8'd1), 32'h0};
                    o_cmd_fifo_wr_en_full <= 1'b1;
                    bresp_push = 1'b1;
                    bresp_push_data =
                        (wr_proto_err ||
                         (((w_beats_rcvd == aw_len_q) && !s_axi_wlast) ||
                          ((w_beats_rcvd != aw_len_q) &&  s_axi_wlast))) ? 2'b10 : 2'b00;
                    o_aw_pending <= 1'b0;
                end
            end
            // If all W beats are already accepted but cmd_fifo was full at final beat,
            // issue the command as soon as space becomes available.
            if (o_aw_pending && (w_beats_rcvd > aw_len_q) && !i_cmd_fifo_full && !bresp_q_full) begin
                o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, aw_addr_q, (aw_len_q + 8'd1), 32'h0};
                o_cmd_fifo_wr_en_full <= 1'b1;
                bresp_push = 1'b1;
                bresp_push_data = wr_proto_err ? 2'b10 : 2'b00;
                o_aw_pending <= 1'b0;
            end

            if (!s_axi_bvalid && !i_b_fifo_empty && !b_pop_pending) begin
                o_b_fifo_rd_en <= 1'b1;
                b_pop_pending <= 1'b1;
            end
            if (b_pop_pending && i_b_fifo_dout_valid) begin
                s_axi_bvalid <= 1'b1;
                bresp_pop = 1'b1;
                if (bresp_q_count != 0) begin
                    s_axi_bresp <= bresp_q_mem[bresp_q_rd_ptr];
                    s_axi_bid <= bid_q_mem[bresp_q_rd_ptr];
                end else begin
                    // Safety fallback: completion token without matching queued response.
                    s_axi_bresp <= 2'b10;
                    s_axi_bid <= '0;
                end
                b_pop_pending <= 1'b0;
            end
            if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end

            // Write-response code queue tracking (preserves ordering across bursts).
            if (bresp_push) begin
                bresp_q_mem[bresp_q_wr_ptr] <= bresp_push_data;
                bid_q_mem[bresp_q_wr_ptr] <= aw_id_q;
                bresp_q_wr_ptr <= bresp_q_wr_ptr + 5'd1;
            end
            if (bresp_pop && (bresp_q_count != 0)) begin
                bresp_q_rd_ptr <= bresp_q_rd_ptr + 5'd1;
            end
            case ({bresp_push, bresp_pop && (bresp_q_count != 0)})
                2'b10: bresp_q_count <= bresp_q_count + 6'd1;
                2'b01: bresp_q_count <= bresp_q_count - 6'd1;
                default: bresp_q_count <= bresp_q_count;
            endcase

            // AR
            // Write-priority arbitration:
            // if AWVALID and ARVALID arrive together, service write first.
            s_axi_arready <= (!i_req_block) && (!rd_active) && (!o_aw_pending) && (!s_axi_awvalid) &&
                             (!i_cmd_fifo_full) && (s_axi_arsize == 3'd2) &&
                             (s_axi_arburst == 2'b01) && (s_axi_arlen <= 8'd31);
            if ((!i_req_block) && (!rd_active) && (!o_aw_pending) && (!s_axi_awvalid) &&
                (!i_cmd_fifo_full) && (s_axi_arsize == 3'd2) &&
                (s_axi_arburst == 2'b01) && (s_axi_arlen <= 8'd31) &&
                s_axi_arvalid) begin
                o_cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, s_axi_araddr, (s_axi_arlen + 8'd1), 32'h0};
                o_cmd_fifo_wr_en_full <= 1'b1;
                rd_active <= 1'b1;
                ar_id_q <= s_axi_arid;
                rd_beats_left <= s_axi_arlen + 8'd1;
                rd_stage_wr_ptr_n = 1'b0;
                rd_stage_rd_ptr_n = 1'b0;
                rd_stage_count_n = 2'd0;
                s_axi_rvalid <= 1'b0;
            end

            // Drive AXI R channel from local staging FIFO.
            if (!s_axi_rvalid && rd_active && (rd_stage_count_n != 2'd0)) begin
                s_axi_rvalid <= 1'b1;
                s_axi_rdata <= rd_stage_mem[rd_stage_rd_ptr_n];
                s_axi_rid <= ar_id_q;
                s_axi_rresp <= 2'b00;
                s_axi_rlast <= (rd_beats_left == 8'd1);
                rd_stage_rd_ptr_n = ~rd_stage_rd_ptr_n;
                rd_stage_count_n = rd_stage_count_n - 2'd1;
            end

            // Prefetch from FWFT RD FIFO into local 4-entry FF staging FIFO.
            if (rd_active && !rd_pop_cooldown && !i_rd_fifo_empty && (rd_stage_count_n < 2'd2) &&
                ((rd_stage_count_n + (s_axi_rvalid ? 2'd1 : 2'd0)) < rd_beats_left)) begin
                rd_stage_mem[rd_stage_wr_ptr_n] <= i_rd_fifo_dout;
                rd_stage_wr_ptr_n = ~rd_stage_wr_ptr_n;
                rd_stage_count_n = rd_stage_count_n + 2'd1;
                o_rd_fifo_rd_en <= 1'b1;
                rd_pop_cooldown <= 1'b1;
            end

            rd_stage_wr_ptr <= rd_stage_wr_ptr_n;
            rd_stage_rd_ptr <= rd_stage_rd_ptr_n;
            rd_stage_count <= rd_stage_count_n;

            if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
                if (rd_beats_left != 0) rd_beats_left <= rd_beats_left - 8'd1;
                if (rd_beats_left == 8'd1) begin
                    rd_active <= 1'b0;
                    s_axi_rlast <= 1'b0;
                end
            end
        end
    end
endmodule
