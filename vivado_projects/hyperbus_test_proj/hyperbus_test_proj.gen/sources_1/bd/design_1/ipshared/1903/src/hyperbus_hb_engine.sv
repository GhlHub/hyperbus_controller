// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_hb_engine #(
    parameter int CMD_W = 59,
    parameter int HB_LATENCY_DEFAULT = 7,
    parameter int ODDRE1_TX_PIPE_CYCLES = 1,
    parameter int HB_READ_CS_DEASSERT_DELAY = 2,
    parameter int HB_READ_STROBE_GATE_CYCLES = 15,
    parameter int RWDS_TIMEOUT_CYCLES = 24,
    parameter int TIMEOUT_HOLDOFF_CYCLES = 92,
    parameter int PHY_IO_STYLE = 0
) (
    input  wire                 i_hb_clk_200,
    input  wire                 i_hb_rstn,

    input  wire [CMD_W-1:0]     i_cmd_fifo_dout,
    input  wire                 i_cmd_fifo_empty,
    input  wire                 i_cmd_fifo_dout_valid,
    output logic                o_cmd_fifo_rd_en,

    input  wire [35:0]          i_wr_fifo_dout,
    output logic                o_wr_fifo_rd_en,

    input  wire                 i_rd_fifo_full,
    input  wire                 i_rd_fifo_prog_full,
    output logic [31:0]         o_rd_fifo_din,
    output logic                o_rd_fifo_wr_en,

    input  wire                 i_axil_rsp_fifo_full,
    output logic [31:0]         o_axil_rsp_fifo_din,
    output logic                o_axil_rsp_fifo_wr_en,
    output logic [31:0]         o_last_read_word32,
    output logic                o_rd_half_dbg,
    output logic [5:0]          o_axif_rwds_cntr,
    output logic [5:0]          o_axil_rwds_cntr,
    output logic [7:0]          o_dq_q1_dly_dbg,
    output logic [7:0]          o_dq_q2_dly_dbg,
    output logic                o_rwds_q1_dly_dbg,
    output logic                o_rwds_q2_dly_dbg,

    input  wire [7:0]           i_dq_q1,
    input  wire [7:0]           i_dq_q2,
    input  wire                 i_rwds_q1,
    input  wire                 i_rwds_q2,

    output logic                o_hb_clk_ce,
    output logic                o_timeout_pulse_hb,
    output logic                o_timeout_holdoff_active,
    output wire                 o_hb_cs_n_q,
    output wire                 o_dbg_hb_cs_n_q,
    output logic [7:0]          o_dq_t,
    output logic [7:0]          o_dq_o_d1,
    output logic [7:0]          o_dq_o_d2,
    output logic                o_rwds_t,
    output logic                o_rwds_o_d1,
    output logic                o_rwds_o_d2
);
    typedef enum logic [4:0] {
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
        HB_TIMEOUT_FULL_RSP,
        HB_TIMEOUT_AXIL_RSP,
        HB_TERM_HOLD,
        HB_TERM
    } hb_state_t;

    hb_state_t hb_state;

    logic [CMD_W-1:0] cur_cmd;
    logic cur_src_axil, cur_is_write, cur_is_reg;
    logic [31:0] cur_addr;
    logic [7:0] cur_axi_beats;
    logic [15:0] cur_wdata;

    logic [47:0] ca_shift;
    logic [2:0]  ca_cycle;
    logic latency_2x;
    logic [7:0] latency_left;
    logic [7:0] base_latency;
    logic [1:0] wr_rwds_wait_cnt;
    logic [1:0] cs_preclk_cnt;
    logic [2:0] term_hold_cnt;

    logic [15:0] cr0_shadow, cr1_shadow;
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
    logic [31:0] last_read_pack;
    logic        last_read_half;

    logic [15:0] hb_word16;
    logic [15:0] hb_word16_le;
    logic [15:0] hb_word16_read;
    (* IOB = "true" *) logic hb_cs_n_pad_q;
    logic hb_cs_n_dbg_q;
    logic [15:0] hb_word16_read_le;
    logic [7:0] dq_q1_dly;
    logic [7:0] dq_q2_dly;
    logic rwds_q1_dly;
    logic rwds_q2_dly;
    logic [5:0] rwds_timeout_cnt;
    logic [7:0] rd_beats_pushed;
    logic [7:0] read_strobe_gate_cnt;
    logic [7:0] timeout_full_beats_left;
    logic timeout_tripped_cur;
    logic [7:0] timeout_holdoff_cnt;
    logic cmd_loaded;

    assign hb_word16    = {dq_q1_dly, dq_q2_dly};
    assign hb_word16_le = {hb_word16[7:0], hb_word16[15:8]};
    // Read data must be packed from the same registered sampling stage that
    // qualifies RWDS. This avoids dropping the first accepted beat in
    // IO_DELAY mode while preserving the existing EXT_CLK_PHASE_SHIFT path,
    // which already relied on the registered DQ stage.
    assign hb_word16_read    = hb_word16;
    assign hb_word16_read_le = hb_word16_le;
    assign o_dq_q1_dly_dbg = dq_q1_dly;
    assign o_dq_q2_dly_dbg = dq_q2_dly;
    assign o_rwds_q1_dly_dbg = rwds_q1_dly;
    assign o_rwds_q2_dly_dbg = rwds_q2_dly;
    assign o_rd_half_dbg = rd_half;
    assign o_hb_cs_n_q = hb_cs_n_pad_q;
    assign o_dbg_hb_cs_n_q = hb_cs_n_dbg_q;

    always_ff @(posedge i_hb_clk_200) begin
        if (!i_hb_rstn) begin
            hb_state <= HB_IDLE;
            o_cmd_fifo_rd_en <= 1'b0;
            hb_cs_n_pad_q <= 1'b1;
            hb_cs_n_dbg_q <= 1'b1;
            o_hb_clk_ce <= 1'b0;
            o_timeout_pulse_hb <= 1'b0;
            o_timeout_holdoff_active <= 1'b0;
            o_dq_t <= 8'hFF;
            o_dq_o_d1 <= 8'h00;
            o_dq_o_d2 <= 8'h00;
            o_rwds_t <= 1'b1;
            o_rwds_o_d1 <= 1'b0;
            o_rwds_o_d2 <= 1'b0;
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
            o_wr_fifo_rd_en <= 1'b0;
            wrbuf_valid <= 1'b0;
            wrbuf <= 32'h0;
            wrbuf_strb <= 4'h0;
            wrbuf_high_half <= 1'b0;
            wrnext_valid <= 1'b0;
            wrnext <= 32'h0;
            wrnext_strb <= 4'h0;
            wr_words_reqd <= 8'd0;
            o_rd_fifo_wr_en <= 1'b0;
            o_rd_fifo_din <= 32'h0;
            rd_pack <= 32'h0;
            rd_half <= 1'b0;
            o_axil_rsp_fifo_wr_en <= 1'b0;
            o_axil_rsp_fifo_din <= 32'h0;
            o_last_read_word32 <= 32'h0;
            o_axif_rwds_cntr <= 6'd0;
            o_axil_rwds_cntr <= 6'd0;
            dq_q1_dly <= 8'h00;
            dq_q2_dly <= 8'h00;
            rwds_q1_dly <= 1'b0;
            rwds_q2_dly <= 1'b0;
            last_read_pack <= 32'h0;
            last_read_half <= 1'b0;
            rwds_timeout_cnt <= 6'd0;
            rd_beats_pushed <= 8'd0;
            read_strobe_gate_cnt <= 8'd0;
            timeout_full_beats_left <= 8'd0;
            timeout_tripped_cur <= 1'b0;
            timeout_holdoff_cnt <= 8'd0;
            cmd_loaded <= 1'b0;
        end else begin
            // Keep DQ and RWDS qualifiers phase-aligned in this domain.
            dq_q1_dly <= i_dq_q1;
            dq_q2_dly <= i_dq_q2;
            rwds_q1_dly <= i_rwds_q1;
            rwds_q2_dly <= i_rwds_q2;
            o_cmd_fifo_rd_en <= 1'b0;
            o_wr_fifo_rd_en <= 1'b0;
            o_rd_fifo_wr_en <= 1'b0;
            o_axil_rsp_fifo_wr_en <= 1'b0;
            o_timeout_pulse_hb <= 1'b0;
            if (timeout_holdoff_cnt != 0) begin
                timeout_holdoff_cnt <= timeout_holdoff_cnt - 8'd1;
            end
            o_timeout_holdoff_active <= (timeout_holdoff_cnt != 0);

            case (hb_state)
                HB_IDLE: begin
                    hb_cs_n_pad_q <= 1'b1;
                    hb_cs_n_dbg_q <= 1'b1;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (!i_cmd_fifo_empty) begin
                        o_cmd_fifo_rd_en <= 1'b1;
                        hb_state <= HB_GET_CMD;
                    end
                end

                HB_GET_CMD: begin
                    hb_cs_n_pad_q <= 1'b1;
                    hb_cs_n_dbg_q <= 1'b1;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;

                    if (!cmd_loaded && i_cmd_fifo_dout_valid) begin
                        cur_cmd <= i_cmd_fifo_dout;
                        cur_src_axil <= i_cmd_fifo_dout[58];
                        cur_is_write <= i_cmd_fifo_dout[57];
                        cur_is_reg <= i_cmd_fifo_dout[56];
                        cur_addr <= i_cmd_fifo_dout[55:24];
                        cur_axi_beats <= i_cmd_fifo_dout[23:16];
                        cur_wdata <= i_cmd_fifo_dout[15:0];

                        // Build CA (linear burst, memory/register selection)
                        // AXI-full memory space uses HyperBus word addressing (byte_addr >> 1).
                        // AXI-lite/register space keeps the existing unshifted mapping.
                        ca_shift[47]   <= ~i_cmd_fifo_dout[57]; // RW#: 1=read
                        ca_shift[46]   <= i_cmd_fifo_dout[56];  // AS
                        ca_shift[45]   <= 1'b1;                 // linear burst
                        if (i_cmd_fifo_dout[58]) begin
                            // AXI-lite: keep unshifted register-space addressing.
                            ca_shift[44:16] <= i_cmd_fifo_dout[55:27];
                            ca_shift[2:0]  <= i_cmd_fifo_dout[27:25];
                        end else begin
                            // AXI-full: internal frontend alignment guarantees byte_addr[1:0] = 2'b00.
                            // That makes the lowest HyperBus word-address bit constant zero.
                            ca_shift[44:16] <= {1'b0, i_cmd_fifo_dout[55:28]};
                            ca_shift[2:1]  <= i_cmd_fifo_dout[27:26];
                            ca_shift[0]    <= 1'b0;
                        end
                        ca_shift[15:3] <= 13'h0;

                        if (i_cmd_fifo_dout[58]) begin
                            words_total <= 9'd1;
                            rwds_edges_needed <= 11'd2; // 16-bit read/write uses 2 RWDS transitions
                        end else begin
                            words_total <= {i_cmd_fifo_dout[23:16], 1'b0}; // beats * 2 words
                            rwds_edges_needed <= {i_cmd_fifo_dout[23:16], 2'b00}; // beats * 4 bytes/transitions
                        end
                        words_done <= 9'd0;
                        rwds_edges_seen <= 11'd0;
                        ca_cycle <= 3'd0;
                        latency_2x <= 1'b0;
                        base_latency <= HB_LATENCY_DEFAULT[7:0];
                        wr_rwds_wait_cnt <= 2'd0;
                        // With the forwarded CK generated as 100 MHz from the 200 MHz
                        // ODDRE1 source clock, a zero count here yields ~10 ns from
                        // CS# assertion to the first forwarded CK edge.
                        cs_preclk_cnt <= 2'd0;
                        term_hold_cnt <= ODDRE1_TX_PIPE_CYCLES[2:0];

                        wrbuf_valid <= 1'b0;
                        wrbuf_strb <= 4'h0;
                        wrbuf_high_half <= 1'b0;
                        wrnext_valid <= 1'b0;
                        wrnext_strb <= 4'h0;
                        wr_words_reqd <= 8'd0;
                        rd_half <= 1'b0;
                        last_read_half <= 1'b0;
                        rwds_timeout_cnt <= 6'd0;
                        rd_beats_pushed <= 8'd0;
                        timeout_full_beats_left <= 8'd0;
                        timeout_tripped_cur <= 1'b0;
                        cmd_loaded <= 1'b1;
                        if (i_cmd_fifo_dout[57] || i_cmd_fifo_dout[58] || !i_rd_fifo_prog_full) begin
                            cmd_loaded <= 1'b0;
                            hb_cs_n_pad_q <= 1'b0;
                            hb_cs_n_dbg_q <= 1'b0;
                            o_hb_clk_ce <= 1'b0;
                            hb_state <= HB_CS_SETUP;
                        end
                    end else if (cmd_loaded && (cur_is_write || cur_src_axil || !i_rd_fifo_prog_full)) begin
                        cmd_loaded <= 1'b0;
                        hb_cs_n_pad_q <= 1'b0;
                        hb_cs_n_dbg_q <= 1'b0;
                        o_hb_clk_ce <= 1'b0;
                        hb_state <= HB_CS_SETUP;
                    end
                end

                HB_CS_SETUP: begin
                    // Keep CS# asserted for 10 ns before enabling the forwarded CK.
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (cs_preclk_cnt != 0) begin
                        cs_preclk_cnt <= cs_preclk_cnt - 2'd1;
                    end else begin
                        hb_state <= HB_CA_PRIME;
                    end
                end

                HB_CA_PRIME: begin
                    // Prime CA while CK is gated, then enable CK so first CA appears on first active edge.
                    $display("[%0d][ HB]                 CA bytes=%02x %02x %02x %02x %02x %02x | RW=%s AS=%s BURST=LINEAR AXI_ADDR=0x%08x HB_WORD_ADDR=0x%08x SRC=%s BEATS=%0d",
                             int'($rtoi(($realtime / 1ns) + 0.5)),
                             ca_shift[47:40], ca_shift[39:32], ca_shift[31:24],
                             ca_shift[23:16], ca_shift[15:8],  ca_shift[7:0],
                             cur_is_write ? "WRITE" : "READ",
                             cur_is_reg ? "REG" : "MEM",
                             cur_addr,
                             {ca_shift[44:16], ca_shift[2:0]},
                             cur_src_axil ? "AXIL" : "AXIF",
                             cur_axi_beats);
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'h00;
                    o_rwds_t <= 1'b1;
                    o_dq_o_d1 <= ca_shift[47:40];
                    o_dq_o_d2 <= ca_shift[39:32];
                    ca_shift <= {ca_shift[31:0], 16'h0000};
                    ca_cycle <= 3'd1;
                    o_hb_clk_ce <= 1'b1;
                    hb_state <= HB_CA;
                end

                HB_CA: begin
                    o_dq_t <= 8'h00;
                    o_rwds_t <= 1'b1;
                    o_dq_o_d1 <= ca_shift[47:40];
                    o_dq_o_d2 <= ca_shift[39:32];
                    ca_shift <= {ca_shift[31:0], 16'h0000};
                    ca_cycle <= ca_cycle + 3'd1;

                    // decide 1x/2x latency after second CK cycle
                    if (ca_cycle == 3'd2) begin
                        latency_2x <= i_rwds_q1;
                    end

                    if (ca_cycle == 3'd3) begin
                        if (cur_is_reg && cur_is_write) begin
                            // Dedicated register-write path:
                            // preload 16-bit register value immediately after CA for contiguous stream.
                            o_dq_o_d1 <= cur_wdata[15:8];
                            o_dq_o_d2 <= cur_wdata[7:0];
                            o_rwds_o_d1 <= 1'b0;
                            o_rwds_o_d2 <= 1'b0;
                            if (cur_addr[3:2] == 2'b00) cr0_shadow <= cur_wdata[15:0];
                            if (cur_addr[3:2] == 2'b01) cr1_shadow <= cur_wdata[15:0];
                            wr_rwds_wait_cnt <= 2'd0;
                            latency_left <= 8'd0;
                            hb_state <= HB_REG_WRITE_DATA;
                        end else begin
                            // AXI-full writes and all reads honor RWDS-selected latency.
                            // Compensate write path by ODDRE1 TX pipeline cycles so first emitted
                            // write beat aligns to target latency.
                            latency_left = latency_2x ? ((base_latency - ODDRE1_TX_PIPE_CYCLES[7:0]) << 1) - 1 :
                                                     (base_latency - ODDRE1_TX_PIPE_CYCLES[7:0]);
                            wr_rwds_wait_cnt <= cur_is_write ? 2'd2 : 2'd0;
                            read_strobe_gate_cnt <= cur_is_write ? 8'd0 :
                                                     HB_READ_STROBE_GATE_CYCLES[7:0];
                            hb_state <= cur_src_axil ? HB_AXIL_LAT : HB_FULL_LAT;
                        end
                    end
                end

                HB_REG_WRITE_DATA: begin
                    // Emit register write data beat directly after CA (no idle/Z gap on DQ).
                    o_dq_t <= 8'h00;
                    // AXI-Lite/register writes do not drive RWDS.
                    o_rwds_t <= 1'b1;
                    o_rwds_o_d1 <= 1'b0;
                    o_rwds_o_d2 <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    hb_state <= HB_REG_WRITE_STOP;
                end

                HB_REG_WRITE_STOP: begin
                    // Keep CK stopped before terminating transaction.
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'h00;
                    o_rwds_t <= 1'b1;
                    o_rwds_o_d1 <= 1'b0;
                    o_rwds_o_d2 <= 1'b0;
                    term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                    hb_state <= HB_TERM_HOLD;
                end

                HB_FULL_LAT: begin
                    o_dq_t <= 8'hFF;
                    if (read_strobe_gate_cnt != 0) begin
                        read_strobe_gate_cnt <= read_strobe_gate_cnt - 8'd1;
                    end
                    if (cur_is_write) begin
                        // For AXI-full bursts, all write beats are present before command issue.
                        // Pop exactly when emit/next pipeline has space.
                        // Check for wr_fifo_rd_en == 1 so we don't pop twice in a row.
                        if (((wr_words_reqd < cur_axi_beats) && (o_wr_fifo_rd_en == 1'b0)) &&
                            (!wrnext_valid || !wrbuf_valid)) begin
                            o_wr_fifo_rd_en <= 1'b1;
                            wr_words_reqd <= wr_words_reqd + 8'd1;
                            if (!wrbuf_valid) begin
                                wrbuf <= i_wr_fifo_dout[31:0];
                                wrbuf_strb <= i_wr_fifo_dout[35:32];
                                wrbuf_valid <= 1'b1;
                                wrbuf_high_half <= 1'b0;
                            end else if (!wrnext_valid) begin
                                wrnext <= i_wr_fifo_dout[31:0];
                                wrnext_strb <= i_wr_fifo_dout[35:32];
                                wrnext_valid <= 1'b1;
                            end
                        end
                    end
                    // For writes, keep RWDS undriven for 2 clocks after CA completion,
                    // then drive it high until the real byte mask is presented.
                    if (cur_is_write && (wr_rwds_wait_cnt != 0)) begin
                        o_rwds_t <= 1'b1;
                        o_rwds_o_d1 <= 1'b0;
                        o_rwds_o_d2 <= 1'b0;
                        wr_rwds_wait_cnt <= wr_rwds_wait_cnt - 2'd1;
                    end else begin
                        o_rwds_t <= cur_is_write ? 1'b0 : 1'b1;
                        o_rwds_o_d1 <= cur_is_write ? 1'b1 : 1'b0;
                        o_rwds_o_d2 <= cur_is_write ? 1'b1 : 1'b0;
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
                    o_dq_t <= 8'hFF;
                    if (read_strobe_gate_cnt != 0) begin
                        read_strobe_gate_cnt <= read_strobe_gate_cnt - 8'd1;
                    end
                    o_rwds_t <= 1'b1;
                    o_rwds_o_d1 <= 1'b0;
                    o_rwds_o_d2 <= 1'b0;
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
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    o_rwds_o_d1 <= 1'b0;
                    o_rwds_o_d2 <= 1'b0;

                    if ((wr_words_reqd < cur_axi_beats) &&
                        (!wrnext_valid || !wrbuf_valid)) begin
                        o_wr_fifo_rd_en <= 1'b1;
                        wr_words_reqd <= wr_words_reqd + 8'd1;
                        if (!wrbuf_valid) begin
                            wrbuf <= i_wr_fifo_dout[31:0];
                            wrbuf_strb <= i_wr_fifo_dout[35:32];
                            wrbuf_valid <= 1'b1;
                            wrbuf_high_half <= 1'b0;
                        end else if (!wrnext_valid) begin
                            wrnext <= i_wr_fifo_dout[31:0];
                            wrnext_strb <= i_wr_fifo_dout[35:32];
                            wrnext_valid <= 1'b1;
                        end
                    end
                    if (wrbuf_valid) begin
                        o_dq_t <= 8'h00;
                        o_rwds_t <= 1'b0;
                        o_dq_o_d1 <= wrbuf[7:0];
                        o_dq_o_d2 <= wrbuf[15:8];
                        o_rwds_o_d1 <= ~wrbuf_strb[0];
                        o_rwds_o_d2 <= ~wrbuf_strb[1];
                        wrbuf_high_half <= 1'b1;
                        words_done <= words_done + 9'd1;
                        hb_state <= HB_WRITE;
                    end
                end

                HB_WRITE: begin
                    logic [8:0] words_done_next;
                    logic       did_emit;
                    logic       wrbuf_valid_n, wrnext_valid_n, wrbuf_high_half_n;
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

                    o_dq_t <= 8'h00;
                    o_rwds_t <= 1'b0;

                    if (!cur_src_axil) begin
                        // Keep next stage filled while streaming.
                        if ((wr_words_reqd < cur_axi_beats) &&
                            (!wrnext_valid_n)) begin
                            o_wr_fifo_rd_en <= 1'b1;
                            wr_words_reqd <= wr_words_reqd + 8'd1;
                            if (!wrbuf_valid_n) begin
                                wrbuf_n = i_wr_fifo_dout[31:0];
                                wrbuf_strb_n = i_wr_fifo_dout[35:32];
                                wrbuf_valid_n = 1'b1;
                                wrbuf_high_half_n = 1'b0;
                            end else if (!wrnext_valid_n) begin
                                wrnext_n = i_wr_fifo_dout[31:0];
                                wrnext_strb_n = i_wr_fifo_dout[35:32];
                                wrnext_valid_n = 1'b1;
                            end
                        end

                        if (wrbuf_valid_n) begin
                            did_emit = 1'b1;
                            words_done_next = words_done + 9'd1;
                            if (!wrbuf_high_half_n) begin
                                o_dq_o_d1 <= wrbuf_n[7:0];
                                o_dq_o_d2 <= wrbuf_n[15:8];
                                o_rwds_o_d1 <= ~wrbuf_strb_n[0];
                                o_rwds_o_d2 <= ~wrbuf_strb_n[1];
                                wrbuf_high_half_n = 1'b1;
                            end else begin
                                o_dq_o_d1 <= wrbuf_n[23:16];
                                o_dq_o_d2 <= wrbuf_n[31:24];
                                o_rwds_o_d1 <= ~wrbuf_strb_n[2];
                                o_rwds_o_d2 <= ~wrbuf_strb_n[3];
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
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'h00;
                    o_rwds_t <= 1'b0;
                    o_rwds_o_d1 <= 1'b1;
                    o_rwds_o_d2 <= 1'b1;
                    term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                    hb_state <= HB_TERM_HOLD;
                end

                HB_FULL_READ: begin
                    logic [8:0] words_done_next;
                    logic       took_word;
                    logic [10:0] rwds_edges_seen_next;
                    logic        rwds_data_valid;
                    logic        read_strobe_gate_active;
                    logic [7:0]  rd_beats_pushed_next;

                    words_done_next = words_done;
                    took_word = 1'b0;
                    rwds_edges_seen_next = rwds_edges_seen;
                    rd_beats_pushed_next = rd_beats_pushed;
                    read_strobe_gate_active = (read_strobe_gate_cnt != 0);
                    // RWDS transition-aligned data: treat RWDS edge activity as data valid qualifier.
                    rwds_data_valid = !read_strobe_gate_active && (rwds_q1_dly ^ rwds_q2_dly);

                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;

                    if (read_strobe_gate_active) begin
                        read_strobe_gate_cnt <= read_strobe_gate_cnt - 8'd1;
                    end

                    if (rwds_data_valid && !rd_half) begin
                        o_axif_rwds_cntr <= o_axif_rwds_cntr + 6'd1;
                        rd_pack[15:0] <= hb_word16_read_le;
                        rd_half <= 1'b1;
                        if (!last_read_half) begin
                            last_read_pack[15:0] <= hb_word16_read_le;
                            last_read_half <= 1'b1;
                        end else begin
                            last_read_pack[31:16] <= hb_word16_read_le;
                            o_last_read_word32 <= {hb_word16_read_le, last_read_pack[15:0]};
                            last_read_half <= 1'b0;
                        end
                        words_done_next = words_done + 9'd1;
                        took_word = 1'b1;
                        rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                    end else if (rwds_data_valid) begin
                        o_axif_rwds_cntr <= o_axif_rwds_cntr + 6'd1;
                        rd_pack[31:16] <= hb_word16_read_le;
                        if (!last_read_half) begin
                            last_read_pack[15:0] <= hb_word16_read_le;
                            last_read_half <= 1'b1;
                        end else begin
                            last_read_pack[31:16] <= hb_word16_read_le;
                            o_last_read_word32 <= {hb_word16_read_le, last_read_pack[15:0]};
                            last_read_half <= 1'b0;
                        end
                        // rd_fifo_full guard intentionally omitted:
                        // rd_fifo depth (256) >> max AXI-full read burst (32 beats), and
                        // only one AXI-full read is outstanding at a time.
                        o_rd_fifo_din <= {hb_word16_read_le, rd_pack[15:0]};
                        o_rd_fifo_wr_en <= 1'b1;
                        rd_half <= 1'b0;
                        words_done_next = words_done + 9'd1;
                        took_word = 1'b1;
                        rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                        rd_beats_pushed_next = rd_beats_pushed + 8'd1;
                    end

                    words_done <= words_done_next;
                    rwds_edges_seen <= rwds_edges_seen_next;
                    rd_beats_pushed <= rd_beats_pushed_next;
                    if (rwds_data_valid) begin
                        rwds_timeout_cnt <= 6'd0;
                    end else if (read_strobe_gate_active) begin
                        rwds_timeout_cnt <= 6'd0;
                    end else if (rwds_timeout_cnt < RWDS_TIMEOUT_CYCLES) begin
                        rwds_timeout_cnt <= rwds_timeout_cnt + 6'd1;
                    end

                    // Terminate read once required RWDS transitions have been sampled.
                    if (took_word && (rwds_edges_seen_next >= rwds_edges_needed)) begin
                        o_hb_clk_ce <= 1'b0;
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end else if (!rwds_data_valid && (rwds_timeout_cnt >= (RWDS_TIMEOUT_CYCLES-1))) begin
                        o_timeout_pulse_hb <= 1'b1;
                        timeout_tripped_cur <= 1'b1;
                        timeout_full_beats_left <= (cur_axi_beats > rd_beats_pushed_next) ?
                                                   (cur_axi_beats - rd_beats_pushed_next) : 8'd0;
                        hb_state <= HB_TIMEOUT_FULL_RSP;
                    end
                end

                HB_AXIL_READ: begin
                    logic [8:0] words_done_next;
                    logic       took_word;
                    logic [10:0] rwds_edges_seen_next;
                    logic        rwds_data_valid;
                    logic        read_strobe_gate_active;

                    words_done_next = words_done;
                    took_word = 1'b0;
                    rwds_edges_seen_next = rwds_edges_seen;
                    read_strobe_gate_active = (read_strobe_gate_cnt != 0);
                    rwds_data_valid = !read_strobe_gate_active && (rwds_q1_dly ^ rwds_q2_dly);

                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;

                    if (read_strobe_gate_active) begin
                        read_strobe_gate_cnt <= read_strobe_gate_cnt - 8'd1;
                    end

                    // AXI-Lite 16-bit read support:
                    // cur_wdata[0] mirrors ARADDR[1], selecting return halfword lane.
                    // cur_wdata[1] requests duplication into both halfwords for 32-bit readback.
                    if (cur_wdata[1]) begin
                        o_axil_rsp_fifo_din <= {hb_word16_read, hb_word16_read};
                    end else if (cur_wdata[0]) begin
                        o_axil_rsp_fifo_din <= {hb_word16_read, 16'h0};
                    end else begin
                        o_axil_rsp_fifo_din <= {16'h0, hb_word16_read};
                    end
                    if (rwds_data_valid) begin
                        o_axil_rwds_cntr <= o_axil_rwds_cntr + 6'd1;
                        if (!last_read_half) begin
                            last_read_pack[15:0] <= hb_word16_read_le;
                            last_read_half <= 1'b1;
                        end else begin
                            last_read_pack[31:16] <= hb_word16_read_le;
                            o_last_read_word32 <= {hb_word16_read_le, last_read_pack[15:0]};
                            last_read_half <= 1'b0;
                        end
                    end
                    if (rwds_data_valid && !i_axil_rsp_fifo_full) begin
                        o_axil_rsp_fifo_wr_en <= 1'b1;
                        words_done_next = words_done + 9'd1;
                        took_word = 1'b1;
                        rwds_edges_seen_next = rwds_edges_seen + 11'd2;
                    end

                    words_done <= words_done_next;
                    rwds_edges_seen <= rwds_edges_seen_next;
                    if (rwds_data_valid) begin
                        rwds_timeout_cnt <= 6'd0;
                    end else if (read_strobe_gate_active) begin
                        rwds_timeout_cnt <= 6'd0;
                    end else if (rwds_timeout_cnt < RWDS_TIMEOUT_CYCLES) begin
                        rwds_timeout_cnt <= rwds_timeout_cnt + 6'd1;
                    end

                    if (took_word && (rwds_edges_seen_next >= rwds_edges_needed)) begin
                        o_hb_clk_ce <= 1'b0;
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end else if (!rwds_data_valid && (rwds_timeout_cnt >= (RWDS_TIMEOUT_CYCLES-1))) begin
                        o_timeout_pulse_hb <= 1'b1;
                        timeout_tripped_cur <= 1'b1;
                        hb_state <= HB_TIMEOUT_AXIL_RSP;
                    end
                end

                HB_TIMEOUT_FULL_RSP: begin
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (timeout_full_beats_left != 0) begin
                        o_rd_fifo_din <= 32'hFFFF_FFFF;
                        o_rd_fifo_wr_en <= 1'b1;
                        timeout_full_beats_left <= timeout_full_beats_left - 8'd1;
                    end else begin
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end
                end

                HB_TIMEOUT_AXIL_RSP: begin
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (!i_axil_rsp_fifo_full) begin
                        o_axil_rsp_fifo_din <= 32'hFFFF_FFFF;
                        o_axil_rsp_fifo_wr_en <= 1'b1;
                        term_hold_cnt <= HB_READ_CS_DEASSERT_DELAY[2:0];
                        hb_state <= HB_TERM_HOLD;
                    end
                end

                HB_TERM_HOLD: begin
                    // Keep CS# asserted with CK stopped before deasserting CS# (read termination).
                    hb_cs_n_pad_q <= 1'b0;
                    hb_cs_n_dbg_q <= 1'b0;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (term_hold_cnt != 0) begin
                        term_hold_cnt <= term_hold_cnt - 3'd1;
                    end else begin
                        hb_state <= HB_TERM;
                    end
                end

                HB_TERM: begin
                    hb_cs_n_pad_q <= 1'b1;
                    hb_cs_n_dbg_q <= 1'b1;
                    o_hb_clk_ce <= 1'b0;
                    o_dq_t <= 8'hFF;
                    o_rwds_t <= 1'b1;
                    if (cur_src_axil) begin
                        if (cur_is_write && !i_axil_rsp_fifo_full) begin
                            o_axil_rsp_fifo_din <= 32'h0000_0000;
                            o_axil_rsp_fifo_wr_en <= 1'b1;
                        end
                    end
                    if (timeout_tripped_cur) begin
                        timeout_holdoff_cnt <= TIMEOUT_HOLDOFF_CYCLES;
                        timeout_tripped_cur <= 1'b0;
                    end
                    hb_state <= HB_IDLE;
                end

                default: hb_state <= HB_IDLE;
            endcase
        end
    end

endmodule
