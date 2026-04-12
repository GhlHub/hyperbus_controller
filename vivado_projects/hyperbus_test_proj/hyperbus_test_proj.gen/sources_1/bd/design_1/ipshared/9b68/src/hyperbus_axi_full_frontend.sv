// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_axi_full_frontend #(
    parameter int AXI_ADDR_WIDTH = 32,
    parameter int AXI_DATA_WIDTH = 32,
    parameter int AXI_ID_WIDTH = 1,
    parameter int CMD_W = 59
) (
    input  wire                         i_axi_aclk,
    input  wire                         i_axi_aresetn,
    input  wire                         i_req_block,

    input  wire                         i_cmd_fifo_full,
    input  wire                         i_cmd_fifo_prog_full,
    output logic [CMD_W-1:0]            o_cmd_fifo_din_full,
    output logic                        o_cmd_fifo_wr_en_full,
    output logic                        o_aw_pending,

    output logic [35:0]                 o_wr_fifo_din,
    output logic                        o_wr_fifo_wr_en,
    input  wire                         i_wr_fifo_full,
    input  wire                         i_wr_fifo_prog_full,

    input  wire [31:0]                  i_rd_fifo_dout,
    input  wire                         i_rd_fifo_empty,
    input  wire                         i_rd_fifo_dout_valid,
    output logic                        o_rd_fifo_rd_en,

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
    localparam int WORD_ADDR_WIDTH = 30;

    logic [WORD_ADDR_WIDTH-1:0] aw_addr_q;
    logic [7:0]  aw_len_q;
    logic [1:0]  aw_burst_q;
    logic [7:0]  w_beats_rcvd;
    logic aw_can_accept;
    logic [7:0] aw_split_beats1_q;
    logic [7:0] aw_split_beats2_q;
    logic [WORD_ADDR_WIDTH-1:0] aw_wrap_base_q;
    logic aw_cmd2_pending_q;

    logic rd_active;
    logic [7:0] rd_beats_left;
    logic [31:0] rd_stage_mem [0:15];
    logic [3:0]  rd_stage_wr_ptr, rd_stage_rd_ptr;
    logic [4:0]  rd_stage_count;
    logic        rd_fetch_pending;
    logic        rd_streaming;
    logic [3:0]  rd_prefill_target;

    logic wr_proto_err;
    logic [1:0] bresp_q_mem [0:31];
    logic [AXI_ID_WIDTH-1:0] bid_q_mem [0:31];
    logic [4:0] bresp_q_wr_ptr, bresp_q_rd_ptr;
    logic [5:0] bresp_q_count;
    logic bresp_q_full;
    logic [AXI_ID_WIDTH-1:0] aw_id_q;
    logic [AXI_ID_WIDTH-1:0] ar_id_q;
    logic [WORD_ADDR_WIDTH-1:0] rd_cmd2_addr_q;
    logic [7:0]  rd_cmd2_beats_q;
    logic        rd_cmd2_pending_q;
    logic [WORD_ADDR_WIDTH-1:0] awaddr_word;
    logic [WORD_ADDR_WIDTH-1:0] araddr_word;

    function automatic logic f_is_wrap_len_legal(input logic [7:0] len);
        begin
            f_is_wrap_len_legal = (len == 8'd1) || (len == 8'd3) ||
                                  (len == 8'd7) || (len == 8'd15);
        end
    endfunction

    assign bresp_q_full = (bresp_q_count == 6'd32);
    assign awaddr_word = s_axi_awaddr[31:2];
    assign araddr_word = s_axi_araddr[31:2];

    assign aw_can_accept = (!i_req_block) && (!o_aw_pending) && (!i_cmd_fifo_prog_full) &&
                           (!i_wr_fifo_prog_full) &&
                           (!bresp_q_full) &&
                           (s_axi_awsize == 3'd2) &&
                           ((s_axi_awburst == 2'b01) ||
                            ((s_axi_awburst == 2'b10) && f_is_wrap_len_legal(s_axi_awlen))) &&
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
            aw_burst_q <= 2'b01;
            w_beats_rcvd <= '0;
            aw_split_beats1_q <= 8'd0;
            aw_split_beats2_q <= 8'd0;
            aw_wrap_base_q <= 32'd0;
            aw_cmd2_pending_q <= 1'b0;
            rd_active <= 1'b0;
            rd_beats_left <= '0;
            o_rd_fifo_rd_en <= 1'b0;
            o_cmd_fifo_wr_en_full <= 1'b0;
            o_cmd_fifo_din_full <= '0;
            wr_proto_err <= 1'b0;
            bresp_q_wr_ptr <= 5'd0;
            bresp_q_rd_ptr <= 5'd0;
            bresp_q_count <= 6'd0;
            aw_id_q <= '0;
            ar_id_q <= '0;
            rd_cmd2_addr_q <= 32'd0;
            rd_cmd2_beats_q <= 8'd0;
            rd_cmd2_pending_q <= 1'b0;
            rd_stage_wr_ptr <= 4'd0;
            rd_stage_rd_ptr <= 4'd0;
            rd_stage_count <= 5'd0;
            rd_fetch_pending <= 1'b0;
            rd_streaming <= 1'b0;
            rd_prefill_target <= 4'd0;
        end else begin
            logic bresp_push, bresp_pop;
            logic [1:0] bresp_push_data;
            logic [3:0] rd_stage_wr_ptr_n, rd_stage_rd_ptr_n;
            logic [4:0] rd_stage_count_n;
            logic rd_fetch_pending_n;
            logic rd_streaming_n;
            logic [3:0] rd_prefill_target_n;
            logic aw_accept;
            logic ar_can_accept, ar_accept;
            logic [8:0] aw_total_beats;
            logic [WORD_ADDR_WIDTH-1:0] aw_wrap_span_words;
            logic [WORD_ADDR_WIDTH-1:0] aw_wrap_mask_words;
            logic [WORD_ADDR_WIDTH-1:0] aw_wrap_base;
            logic [WORD_ADDR_WIDTH-1:0] aw_words_to_boundary;
            logic [7:0] aw_beats1_calc, aw_beats2_calc;
            logic [8:0] ar_total_beats;
            logic [WORD_ADDR_WIDTH-1:0] ar_wrap_span_words;
            logic [WORD_ADDR_WIDTH-1:0] ar_wrap_mask_words;
            logic [WORD_ADDR_WIDTH-1:0] ar_wrap_base;
            logic [WORD_ADDR_WIDTH-1:0] ar_words_to_boundary;
            logic [7:0] ar_beats1_calc, ar_beats2_calc;
            logic r_fire;
            logic [7:0] rd_beats_left_after_fire;
            logic rd_captured_this_cycle;

            bresp_push = 1'b0;
            bresp_pop = 1'b0;
            bresp_push_data = 2'b00;
            rd_stage_wr_ptr_n = rd_stage_wr_ptr;
            rd_stage_rd_ptr_n = rd_stage_rd_ptr;
            rd_stage_count_n = rd_stage_count;
            rd_fetch_pending_n = rd_fetch_pending;
            rd_streaming_n = rd_streaming;
            rd_prefill_target_n = rd_prefill_target;
            aw_accept = aw_can_accept && s_axi_awvalid;
            ar_can_accept = (!i_req_block) && (!rd_active) && (!o_aw_pending) && (!s_axi_awvalid) &&
                            (!i_cmd_fifo_prog_full) && (s_axi_arsize == 3'd2) &&
                            ((s_axi_arburst == 2'b01) ||
                             ((s_axi_arburst == 2'b10) && f_is_wrap_len_legal(s_axi_arlen))) &&
                            (s_axi_arlen <= 8'd31);
            ar_accept = ar_can_accept && s_axi_arvalid;
            r_fire = s_axi_rvalid && s_axi_rready;
            rd_beats_left_after_fire = rd_beats_left;
            rd_captured_this_cycle = 1'b0;
            if (r_fire && (rd_beats_left != 8'd0)) begin
                rd_beats_left_after_fire = rd_beats_left - 8'd1;
            end

            o_cmd_fifo_wr_en_full <= 1'b0;
            o_rd_fifo_rd_en <= 1'b0;

            // Only offer AWREADY once AWVALID is already present. This avoids
            // pre-asserting READY and accidentally handshaking AW and AR in
            // the same cycle. Internally, treat acceptance as a real AXI
            // handshake, not just "request looks acceptable".
            s_axi_awready <= aw_accept;
            if (aw_accept) begin
                o_aw_pending <= 1'b1;
                aw_addr_q <= awaddr_word;
                aw_id_q <= s_axi_awid;
                aw_len_q <= s_axi_awlen;
                aw_burst_q <= s_axi_awburst;
                w_beats_rcvd <= 8'd0;
                wr_proto_err <= 1'b0;
                aw_cmd2_pending_q <= 1'b0;
                aw_split_beats2_q <= 8'd0;
                aw_total_beats = {1'b0, s_axi_awlen} + 9'd1;
                if (s_axi_awburst == 2'b10) begin
                    aw_wrap_span_words = {{(WORD_ADDR_WIDTH-9){1'b0}}, aw_total_beats};
                    aw_wrap_mask_words = aw_wrap_span_words - WORD_ADDR_WIDTH'(1);
                    aw_wrap_base = awaddr_word & ~aw_wrap_mask_words;
                    aw_words_to_boundary = aw_wrap_span_words - (awaddr_word & aw_wrap_mask_words);
                    aw_beats1_calc = aw_words_to_boundary[7:0];
                    aw_beats2_calc = aw_total_beats[7:0] - aw_beats1_calc;
                    aw_split_beats1_q <= aw_beats1_calc;
                    aw_split_beats2_q <= aw_beats2_calc;
                    aw_wrap_base_q <= aw_wrap_base;
                end else begin
                    aw_split_beats1_q <= s_axi_awlen + 8'd1;
                    aw_split_beats2_q <= 8'd0;
                    aw_wrap_base_q <= '0;
                end
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
                    if ((aw_burst_q == 2'b10) && (aw_split_beats2_q != 8'd0)) begin
                        // First linear segment of WRAP burst; low field is trace/debug only.
                        o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, {aw_addr_q, 2'b00}, aw_split_beats1_q, 16'h8000};
                        aw_cmd2_pending_q <= 1'b1;
                    end else begin
                        o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, {aw_addr_q, 2'b00}, (aw_len_q + 8'd1), 16'h0};
                        bresp_push = 1'b1;
                        bresp_push_data =
                            (wr_proto_err ||
                             (((w_beats_rcvd == aw_len_q) && !s_axi_wlast) ||
                              ((w_beats_rcvd != aw_len_q) &&  s_axi_wlast))) ? 2'b10 : 2'b00;
                        o_aw_pending <= 1'b0;
                    end
                    o_cmd_fifo_wr_en_full <= 1'b1;
                end
            end
            // If all W beats are already accepted but cmd_fifo was full at final beat,
            // issue the command as soon as space becomes available.
            if (o_aw_pending && (w_beats_rcvd > aw_len_q) && !i_cmd_fifo_full && !bresp_q_full) begin
                if (aw_cmd2_pending_q) begin
                    // Second/final linear segment.
                    o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, {aw_wrap_base_q, 2'b00}, aw_split_beats2_q, 16'h0};
                    o_cmd_fifo_wr_en_full <= 1'b1;
                    aw_cmd2_pending_q <= 1'b0;
                    bresp_push = 1'b1;
                    bresp_push_data = wr_proto_err ? 2'b10 : 2'b00;
                    o_aw_pending <= 1'b0;
                end else begin
                    o_cmd_fifo_din_full <= {1'b0, 1'b1, 1'b0, {aw_addr_q, 2'b00}, (aw_len_q + 8'd1), 16'h0};
                    o_cmd_fifo_wr_en_full <= 1'b1;
                    bresp_push = 1'b1;
                    bresp_push_data = wr_proto_err ? 2'b10 : 2'b00;
                    o_aw_pending <= 1'b0;
                end
            end

            if (!s_axi_bvalid && (bresp_q_count != 0)) begin
                s_axi_bvalid <= 1'b1;
                s_axi_bresp <= bresp_q_mem[bresp_q_rd_ptr];
                s_axi_bid <= bid_q_mem[bresp_q_rd_ptr];
            end
            if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
                bresp_pop = 1'b1;
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
            s_axi_arready <= ar_accept;
            if (ar_accept) begin
                ar_total_beats = {1'b0, s_axi_arlen} + 9'd1;
                if (s_axi_arburst == 2'b10) begin
                    ar_wrap_span_words = {{(WORD_ADDR_WIDTH-9){1'b0}}, ar_total_beats};
                    ar_wrap_mask_words = ar_wrap_span_words - WORD_ADDR_WIDTH'(1);
                    ar_wrap_base = araddr_word & ~ar_wrap_mask_words;
                    ar_words_to_boundary = ar_wrap_span_words - (araddr_word & ar_wrap_mask_words);
                    ar_beats1_calc = ar_words_to_boundary[7:0];
                    ar_beats2_calc = ar_total_beats[7:0] - ar_beats1_calc;
                    if (ar_beats2_calc != 8'd0) begin
                        o_cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, {araddr_word, 2'b00}, ar_beats1_calc, 16'h8000};
                        rd_cmd2_addr_q <= ar_wrap_base;
                        rd_cmd2_beats_q <= ar_beats2_calc;
                        rd_cmd2_pending_q <= 1'b1;
                    end else begin
                        o_cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, {araddr_word, 2'b00}, (s_axi_arlen + 8'd1), 16'h0};
                        rd_cmd2_pending_q <= 1'b0;
                    end
                end else begin
                    o_cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, {araddr_word, 2'b00}, (s_axi_arlen + 8'd1), 16'h0};
                    rd_cmd2_pending_q <= 1'b0;
                end
                o_cmd_fifo_wr_en_full <= 1'b1;
                rd_active <= 1'b1;
                ar_id_q <= s_axi_arid;
                rd_beats_left <= s_axi_arlen + 8'd1;
                rd_stage_wr_ptr_n = 4'd0;
                rd_stage_rd_ptr_n = 4'd0;
                rd_stage_count_n = 5'd0;
                rd_fetch_pending_n = 1'b0;
                rd_streaming_n = 1'b0;
                if ((s_axi_arlen + 8'd1) >= 8) begin
                    rd_prefill_target_n = 4'd8;
                end else begin
                    rd_prefill_target_n = {1'b0, s_axi_arlen[2:0]} + 4'd1;
                end
                s_axi_rvalid <= 1'b0;
                s_axi_rlast <= 1'b0;
            end
            if (rd_active && rd_cmd2_pending_q && !i_cmd_fifo_full) begin
                o_cmd_fifo_din_full <= {1'b0, 1'b0, 1'b0, {rd_cmd2_addr_q, 2'b00}, rd_cmd2_beats_q, 16'h0};
                o_cmd_fifo_wr_en_full <= 1'b1;
                rd_cmd2_pending_q <= 1'b0;
            end

            if (!ar_accept) begin
                // Capture returned data only when the FIFO explicitly marks it
                // valid. In standard-read mode, each rd_en issued below produces
                // a later dout_valid pulse carrying exactly one word.
                if (rd_active && i_rd_fifo_dout_valid && (rd_stage_count_n < 5'd16)) begin
                    rd_stage_mem[rd_stage_wr_ptr_n] <= i_rd_fifo_dout;
                    rd_stage_wr_ptr_n = rd_stage_wr_ptr_n + 4'd1;
                    rd_stage_count_n = rd_stage_count_n + 5'd1;
                    rd_fetch_pending_n = 1'b0;
                    rd_captured_this_cycle = 1'b1;
                end

                if (!rd_streaming_n && rd_active && (rd_stage_count_n >= {1'b0, rd_prefill_target_n}) &&
                    (rd_prefill_target_n != 4'd0)) begin
                    rd_streaming_n = 1'b1;
                end

                // Drive AXI R channel from the local FIFO once the prefill target
                // has been met. Allow the output slot to be refilled in the same
                // cycle that the current beat is accepted.
                if (rd_active && rd_streaming_n && (rd_stage_count_n != 5'd0) &&
                    !((rd_stage_count == 5'd0) && rd_captured_this_cycle) &&
                    (!s_axi_rvalid || r_fire) &&
                    (rd_beats_left_after_fire != 8'd0)) begin
                    s_axi_rvalid <= 1'b1;
                    s_axi_rdata <= rd_stage_mem[rd_stage_rd_ptr_n];
                    s_axi_rid <= ar_id_q;
                    s_axi_rresp <= 2'b00;
                    s_axi_rlast <= (rd_beats_left_after_fire == 8'd1);
                    rd_stage_rd_ptr_n = rd_stage_rd_ptr_n + 4'd1;
                    rd_stage_count_n = rd_stage_count_n - 5'd1;
                end else if (r_fire) begin
                    s_axi_rvalid <= 1'b0;
                    s_axi_rlast <= 1'b0;
                end

                // Keep prefetching into the local AXI-domain FIFO. Before the
                // burst starts, this fills the FIFO to the prefill threshold.
                // After the burst starts, it keeps the local FIFO topped up.
                if (rd_active && !i_rd_fifo_empty && !rd_fetch_pending_n &&
                    (rd_stage_count_n < 5'd16) &&
                    ((rd_stage_count_n + (s_axi_rvalid && !r_fire ? 5'd1 : 5'd0)) < rd_beats_left_after_fire)) begin
                    o_rd_fifo_rd_en <= 1'b1;
                    rd_fetch_pending_n = 1'b1;
                end
            end

            rd_stage_wr_ptr <= rd_stage_wr_ptr_n;
            rd_stage_rd_ptr <= rd_stage_rd_ptr_n;
            rd_stage_count <= rd_stage_count_n;
            rd_fetch_pending <= rd_fetch_pending_n;
            rd_streaming <= rd_streaming_n;
            rd_prefill_target <= rd_prefill_target_n;

            if (r_fire) begin
                rd_beats_left <= rd_beats_left_after_fire;
                if (rd_beats_left_after_fire == 8'd0) begin
                    rd_active <= 1'b0;
                    rd_streaming <= 1'b0;
                    rd_prefill_target <= 4'd0;
                end
            end
        end
    end
endmodule
