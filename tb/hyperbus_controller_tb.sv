// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
`timescale 1ns/1ps

module hyperbus_controller_tb;

`ifndef TB_PHY_FAMILY
`define TB_PHY_FAMILY 0
`endif

`ifndef TB_SAMP_OFFSET_PS
`define TB_SAMP_OFFSET_PS 1250
`endif

    localparam int AXI_ADDR_WIDTH  = 32;
    localparam int AXI_DATA_WIDTH  = 32;
    localparam int AXI_ID_WIDTH    = 4;
    localparam int AXIL_ADDR_WIDTH = 16;
    localparam int MAX_WAIT_AXI_CYCLES = 20000;
    localparam int PHY_FAMILY = `TB_PHY_FAMILY;
    localparam time HB_SAMP_CLK_OFFSET = `TB_SAMP_OFFSET_PS * 1ps;

`define WAIT_AXI_COND(_cond, _msg) \
    begin \
        int __wait_cycles; \
        __wait_cycles = 0; \
        while (!(_cond)) begin \
            @(posedge axi_aclk); \
            __wait_cycles = __wait_cycles + 1; \
            if (__wait_cycles > MAX_WAIT_AXI_CYCLES) begin \
                $fatal(1, {"Timeout waiting for ", _msg}); \
            end \
        end \
    end

    function automatic int unsigned ns_time;
        begin
            ns_time = int'($rtoi(($realtime / 1ns) + 0.5));
        end
    endfunction

    // Clocks and reset
    logic axi_aclk;
    logic hb_clk_200;
    wire  hb_clk_200_gated;
    wire  hb_clk_ce;
    logic ref_clk_300;
    logic idelayctrl_rst;
    logic iddre1_rst;
    logic hb_clk_200_samp_90;
    logic axi_aresetn;
    logic hb_rstn;

    // AXI4 full
    logic [AXI_ADDR_WIDTH-1:0] s_axi_awaddr;
    logic [AXI_ID_WIDTH-1:0]   s_axi_awid;
    logic [7:0]                s_axi_awlen;
    logic [2:0]                s_axi_awsize;
    logic [1:0]                s_axi_awburst;
    logic                      s_axi_awvalid;
    wire                       s_axi_awready;

    logic [AXI_DATA_WIDTH-1:0] s_axi_wdata;
    logic [3:0]                s_axi_wstrb;
    logic                      s_axi_wlast;
    logic                      s_axi_wvalid;
    wire                       s_axi_wready;

    wire [1:0]                 s_axi_bresp;
    wire [AXI_ID_WIDTH-1:0]    s_axi_bid;
    wire                       s_axi_bvalid;
    logic                      s_axi_bready;

    logic [AXI_ADDR_WIDTH-1:0] s_axi_araddr;
    logic [AXI_ID_WIDTH-1:0]   s_axi_arid;
    logic [7:0]                s_axi_arlen;
    logic [2:0]                s_axi_arsize;
    logic [1:0]                s_axi_arburst;
    logic                      s_axi_arvalid;
    wire                       s_axi_arready;

    wire [AXI_DATA_WIDTH-1:0]  s_axi_rdata;
    wire [AXI_ID_WIDTH-1:0]    s_axi_rid;
    wire [1:0]                 s_axi_rresp;
    wire                       s_axi_rlast;
    wire                       s_axi_rvalid;
    logic                      s_axi_rready;

    // AXI4-Lite
    logic [AXIL_ADDR_WIDTH-1:0] s_axil_awaddr;
    logic                       s_axil_awvalid;
    wire                        s_axil_awready;
    logic [31:0]                s_axil_wdata;
    logic [3:0]                 s_axil_wstrb;
    logic                       s_axil_wvalid;
    wire                        s_axil_wready;
    wire [1:0]                  s_axil_bresp;
    wire                        s_axil_bvalid;
    logic                       s_axil_bready;

    logic [AXIL_ADDR_WIDTH-1:0] s_axil_araddr;
    logic                       s_axil_arvalid;
    wire                        s_axil_arready;
    wire [31:0]                 s_axil_rdata;
    wire [1:0]                  s_axil_rresp;
    wire                        s_axil_rvalid;
    logic                       s_axil_rready;

    // HyperBus wires
    wire        hb_cs_n;
    wire        hb_ck_p;
    wire        hb_ck_n;
    tri         hb_rwds;
    tri [7:0]   hb_dq;
    wire        hb_reset_n;

    // DUT
    hyperbus_controller #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .AXI_ID_WIDTH(AXI_ID_WIDTH),
        .AXIL_ADDR_WIDTH(AXIL_ADDR_WIDTH),
        .PHY_FAMILY(PHY_FAMILY),
        .HB_LATENCY_DEFAULT(7)
    ) dut (
        .i_axi_aclk(axi_aclk),
        .i_axi_aresetn(axi_aresetn),
        .i_hb_clk_200(hb_clk_200),
        .i_hb_clk_200_gated(hb_clk_200_gated),
        .i_ref_clk_300(ref_clk_300),
        .i_idelayctrl_rst(idelayctrl_rst),
        .i_hb_clk_200_samp_90(hb_clk_200_samp_90),
        .i_iddre1_rst(iddre1_rst),
        .i_hb_rstn(hb_rstn),

        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),

        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),

        .s_axi_bresp(s_axi_bresp),
        .s_axi_bid(s_axi_bid),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),

        .s_axi_araddr(s_axi_araddr),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),

        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),

        .s_axil_awaddr(s_axil_awaddr),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_awready(s_axil_awready),
        .s_axil_wdata(s_axil_wdata),
        .s_axil_wstrb(s_axil_wstrb),
        .s_axil_wvalid(s_axil_wvalid),
        .s_axil_wready(s_axil_wready),
        .s_axil_bresp(s_axil_bresp),
        .s_axil_bvalid(s_axil_bvalid),
        .s_axil_bready(s_axil_bready),

        .s_axil_araddr(s_axil_araddr),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_arready(s_axil_arready),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rresp(s_axil_rresp),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_rready(s_axil_rready),

        .o_hb_cs_n(hb_cs_n),
        .o_hb_clk_ce(hb_clk_ce),
        .o_hb_ck_p(hb_ck_p),
        .o_hb_ck_n(hb_ck_n),
        .io_hb_rwds(hb_rwds),
        .io_hb_dq(hb_dq),
        .o_hb_reset_n(hb_reset_n)
    );

    // Source the HyperBus forwarded-clock gate externally.
    BUFGCE u_tb_hb_ck_gating (
        .I(hb_clk_200),
        .CE(hb_clk_ce),
        .O(hb_clk_200_gated)
    );

    // HyperRAM model (Infineon)
    s27kl0642 u_hyperram (
        .DQ7(hb_dq[7]),
        .DQ6(hb_dq[6]),
        .DQ5(hb_dq[5]),
        .DQ4(hb_dq[4]),
        .DQ3(hb_dq[3]),
        .DQ2(hb_dq[2]),
        .DQ1(hb_dq[1]),
        .DQ0(hb_dq[0]),
        .RWDS(hb_rwds),
        .CSNeg(hb_cs_n),
        .CK(hb_ck_p),
        .CKn(hb_ck_n),
        .RESETNeg(hb_reset_n)
    );

    // Clocks
    initial begin
        axi_aclk = 1'b0;
        forever #10 axi_aclk = ~axi_aclk; // 50 MHz
    end

    initial begin
        hb_clk_200 = 1'b0;
        forever #2.5 hb_clk_200 = ~hb_clk_200; // 200 MHz
    end

    initial begin
        ref_clk_300 = 1'b0;
        forever #1.6666666667 ref_clk_300 = ~ref_clk_300; // 300 MHz
    end

    // 200 MHz sampling clock. Default is 90-degree shifted for UltraScale+ runs.
    initial begin
        hb_clk_200_samp_90 = 1'b0;
        #HB_SAMP_CLK_OFFSET;
        forever #2.5 hb_clk_200_samp_90 = ~hb_clk_200_samp_90;
    end

    // Basic timeout guard
    initial begin
        #5_000_000;
        $fatal(1, "TB timeout");
    end

    int k;
    int beats;
    int mask_idx;
    int axil_cmd_push_count;
    logic [1:0] bresp_chk;
    logic [31:0] burst_base;
    logic [31:0] rd_data [0:31];
    logic [31:0] axil_rd32;
    logic [31:0] axif_rwds_before;
    logic [31:0] axif_rwds_after;
    logic [31:0] axil_rwds_before;
    logic [31:0] axil_rwds_after;
    logic [31:0] mask_base_word;
    logic [31:0] mask_write_word;
    logic [31:0] mask_exp_word;
    logic [3:0]  mask_wstrb;
    logic [5:0]  exp_axif_rwds_after;
    logic odly_dbg_en;
    logic [8:0] odly_cnt_prev;
    logic odly_envtc_x_prev;

    `include "hyperbus_tb_axi_tasks.svh"
    `include "hyperbus_tb_checks.svh"
    `include "hyperbus_tb_sequences.svh"

    // Count AXI-Lite command FIFO push pulses from DUT for explicit
    // "exactly one command accepted per request" checks.
    always @(posedge axi_aclk or negedge axi_aresetn) begin
        if (!axi_aresetn) begin
            axil_cmd_push_count <= 0;
        end else if (dut.cmd_fifo_wr_en_axil) begin
            axil_cmd_push_count <= axil_cmd_push_count + 1;
        end
    end

    // Focused ODELAYE3 monitor for INC/CE debug windows.
    always @(posedge axi_aclk or negedge axi_aresetn) begin
        if (!axi_aresetn) begin
            odly_cnt_prev <= 9'h000;
            odly_envtc_x_prev <= 1'b0;
        end else begin
            logic odly_ctrl_has_x;
            logic odly_cntin_has_x;
            logic odly_cntout_has_x;
            logic odly_envtc_forced_x;

            odly_ctrl_has_x   = $isunknown({dut.odly_en_vtc, dut.odly_load, dut.odly_ce, dut.odly_inc, dut.odelay_rst_req});
            odly_cntin_has_x  = $isunknown(dut.odly_cntvaluein);
            odly_cntout_has_x = $isunknown(dut.odly_cntvalueout);
            // Unisim ODELAYE3 forces CNTVALUEOUT to X when EN_VTC=1 in TIME mode.
            odly_envtc_forced_x = (dut.odly_en_vtc === 1'b1) && odly_cntout_has_x;

            if (odly_ctrl_has_x || odly_cntin_has_x || (odly_cntout_has_x && !odly_envtc_forced_x)) begin
                $display("[%0d][ TB] [ODELAY-MON] UNKNOWN detected: EN_VTC=%b LOAD=%b CE=%b INC=%b RST_REQ=%b CNTVALUEIN=0x%03x CNTVALUEOUT=0x%03x",
                         ns_time(),
                         dut.odly_en_vtc,
                         dut.odly_load,
                         dut.odly_ce,
                         dut.odly_inc,
                         dut.odelay_rst_req,
                         dut.odly_cntvaluein,
                         dut.odly_cntvalueout);
            end

            if (odly_envtc_forced_x && !odly_envtc_x_prev) begin
                $display("[%0d][ TB] [ODELAY-MON] CNTVALUEOUT is X while EN_VTC=1 (expected Unisim ODELAYE3 TIME-mode behavior)",
                         ns_time());
            end

            if (odly_dbg_en) begin
                $display("[%0d][ TB] [    ODELAY] EN_VTC=%0b LOAD=%0b CE=%0b INC=%0b RST_REQ=%0b CNTVALUEOUT=0x%03x",
                         ns_time(),
                         dut.odly_en_vtc,
                         dut.odly_load,
                         dut.odly_ce,
                         dut.odly_inc,
                         dut.odelay_rst_req,
                         dut.odly_cntvalueout);
                if (dut.odly_cntvalueout !== odly_cnt_prev) begin
                    $display("[%0d][ TB] [    ODELAY] CNTVALUEOUT change: 0x%03x -> 0x%03x",
                             ns_time(), odly_cnt_prev, dut.odly_cntvalueout);
                end
            end
            odly_cnt_prev <= dut.odly_cntvalueout;
            odly_envtc_x_prev <= odly_envtc_forced_x;
        end
    end

    initial begin
        // Defaults
        s_axi_awaddr  = '0;
        s_axi_awid    = '0;
        s_axi_awlen   = '0;
        s_axi_awsize  = '0;
        s_axi_awburst = '0;
        s_axi_awvalid = 1'b0;
        s_axi_wdata   = '0;
        s_axi_wstrb   = '0;
        s_axi_wlast   = 1'b0;
        s_axi_wvalid  = 1'b0;
        s_axi_bready  = 1'b0;
        s_axi_araddr  = '0;
        s_axi_arid    = '0;
        s_axi_arlen   = '0;
        s_axi_arsize  = '0;
        s_axi_arburst = '0;
        s_axi_arvalid = 1'b0;
        s_axi_rready  = 1'b0;

        s_axil_awaddr  = '0;
        s_axil_awvalid = 1'b0;
        s_axil_wdata   = '0;
        s_axil_wstrb   = '0;
        s_axil_wvalid  = 1'b0;
        s_axil_bready  = 1'b0;
        s_axil_araddr  = '0;
        s_axil_arvalid = 1'b0;
        s_axil_rready  = 1'b0;
        odly_dbg_en    = 1'b0;

        axi_aresetn = 1'b0;
        hb_rstn     = 1'b0;
        idelayctrl_rst = 1'b1;
        iddre1_rst = 1'b1;

        repeat (20) @(posedge axi_aclk);
        hb_rstn     = 1'b1;
        axi_aresetn = 1'b1;
        idelayctrl_rst = 1'b0;
        // IDDRE1 reset is synchronous to i_hb_clk_200_samp_90.
        repeat (2) @(posedge hb_clk_200_samp_90);
        iddre1_rst = 1'b0;

        // Let HyperRAM model finish POR interval.
        #160_000;

        // First testcase: clear HB clock-force register bit.
        run_hb_clk_ce_force_clear_check();

        // AXI-Lite delay-reset control path.
        run_delay_reset_self_checks();

        // AXI-Lite register path self-checks (fatal on first mismatch).
        run_axil_self_checks();
        run_axil_hold_valid_stress();
        run_timeout_recovery_checks();

        // Partial-byte write check using WSTRB -> RWDS byte masks.
        axil_read(16'h0084, axif_rwds_before);
        axil_read(16'h0088, axil_rwds_before);
        axi_full_write_burst(32'h0000_0180, 1, 32'h1122_3344, 4'hF);
        axi_full_read_burst (32'h0000_0180, 1, rd_data);
        axil_read(16'h0084, axif_rwds_after);
        axil_read(16'h0088, axil_rwds_after);
        exp_axif_rwds_after = axif_rwds_before[5:0] + 6'd2; // 1 beat read -> 2 RWDS-qualified halfwords
        if (axif_rwds_after[5:0] !== exp_axif_rwds_after) begin
            $fatal(1, "AXI-FULL RWDS counter mismatch (single-beat read): got=0x%02x exp=0x%02x",
                   axif_rwds_after[5:0], exp_axif_rwds_after);
        end
        if (axil_rwds_after[5:0] !== axil_rwds_before[5:0]) begin
            $fatal(1, "AXI-LITE RWDS counter changed during AXI-full read: before=0x%02x after=0x%02x",
                   axil_rwds_before[5:0], axil_rwds_after[5:0]);
        end
        $display("[%0d][ TB]                 TEST PASS: RWDS counters after single-beat AXI-full read axif=0x%02x axil=0x%02x",
                 ns_time(), axif_rwds_after[5:0], axil_rwds_after[5:0]);
        if (rd_data[0] !== 32'h1122_3344) begin
            $fatal(1, "WSTRB mask test failed: got 0x%08x exp 0x1122_3344", rd_data[0]);
        end
        $display("[%0d][ TB]                 TEST PASS: single-beat full write/read 0x11223344", ns_time());

        // Exhaustive single-beat byte-mask coverage, including 4'h0 no-op writes.
        mask_base_word = 32'h1122_3344;
        mask_write_word = 32'hAA55_FF00;
        for (mask_idx = 0; mask_idx < 16; mask_idx++) begin
            mask_wstrb = mask_idx[3:0];
            mask_exp_word = apply_wstrb32(mask_base_word, mask_write_word, mask_wstrb);
            axi_full_write_burst(32'h0000_0180, 1, mask_base_word, 4'hF);
            axil_read(16'h0084, axif_rwds_before);
            axil_read(16'h0088, axil_rwds_before);
            axi_full_write_burst(32'h0000_0180, 1, mask_write_word, mask_wstrb);
            axi_full_read_burst (32'h0000_0180, 1, rd_data);
            axil_read(16'h0084, axif_rwds_after);
            axil_read(16'h0088, axil_rwds_after);
            exp_axif_rwds_after = axif_rwds_before[5:0] + 6'd2; // 1 beat read -> 2 RWDS-qualified halfwords
            if (axif_rwds_after[5:0] !== exp_axif_rwds_after) begin
                $fatal(1, "AXI-FULL RWDS counter mismatch (WSTRB=0x%1x): got=0x%02x exp=0x%02x",
                       mask_wstrb, axif_rwds_after[5:0], exp_axif_rwds_after);
            end
            if (axil_rwds_after[5:0] !== axil_rwds_before[5:0]) begin
                $fatal(1, "AXI-LITE RWDS counter changed during AXI-full readback (WSTRB=0x%1x): before=0x%02x after=0x%02x",
                       mask_wstrb, axil_rwds_before[5:0], axil_rwds_after[5:0]);
            end
            if (rd_data[0] !== mask_exp_word) begin
                $fatal(1, "WSTRB mask test failed (WSTRB=0x%1x): got 0x%08x exp 0x%08x",
                       mask_wstrb, rd_data[0], mask_exp_word);
            end
            $display("[%0d][ TB]                 TEST PASS: WSTRB masked write/read strb=0x%1x got=0x%08x",
                     ns_time(), mask_wstrb, rd_data[0]);
        end

        // AXI-full malformed WLAST checks should return SLVERR.
        axi_full_write_burst_bad_wlast(32'h0000_01C0, 4, 32'hD00D_0000, 4'hF, 0, bresp_chk);
        if (bresp_chk !== 2'b10) begin
            $fatal(1, "Bad WLAST (early) expected SLVERR, got BRESP=0x%0h", bresp_chk);
        end
        $display("[%0d][ TB]                 TEST PASS: bad WLAST early -> SLVERR", ns_time());

        axi_full_write_burst_bad_wlast(32'h0000_01D0, 4, 32'hD00D_1000, 4'hF, 1, bresp_chk);
        if (bresp_chk !== 2'b10) begin
            $fatal(1, "Bad WLAST (missing final) expected SLVERR, got BRESP=0x%0h", bresp_chk);
        end
        $display("[%0d][ TB]                 TEST PASS: bad WLAST missing-final -> SLVERR", ns_time());

        // Simultaneous AW+AR request test: write must be serviced first.
        axi_full_write_burst(32'h0000_01A0, 1, 32'hCAFEBABE, 4'hF);
        axi_full_same_cycle_rw_check(
            32'h0000_01A0, // read old data
            32'h0000_01A4, // write new data
            32'h1234ABCD,
            32'hCAFEBABE
        );
        run_posted_write_overlap_axif_checks();
        run_posted_write_overlap_axil_checks();
        run_wr_fifo_prog_full_backpressure_check();
        run_rd_fifo_prog_full_launch_block_check();

        // AXI-full WRAP write/read checks:
        // WRAP commands are expected to be converted into two linear HyperBus commands.
        // 4-beat WRAP write starting at the last word in a 16-byte group.
        axi_full_write_burst_mode(32'h0000_020C, 4, 2'b10, 32'hBEEF_1000, 4'hF);
        axi_full_read_burst(32'h0000_0200, 1, rd_data);
        check_eq32(rd_data[0], 32'hBEEF_1001, "AXI WRAP write mapped @0x0200");
        // HyperBus model uses 16-bit word addressing, so model index = (AXI byte address >> 1).
        // This WRAP write updates around 0x0100..0x0107, dump 8 entries before/after.
        $display("[%0d][ TB]                 HyperRAM Mem dump around WRAP write @0x020C (AXI>>1 entries 0x%0h..0x%0h)",
                 ns_time(), 25'h000F8, 25'h0010F);
        for (k = 25'h000F8; k <= 25'h0010F; k++) begin
            $display("[%0d][ TB]                   u_hyperram.Mem[0x%0h] = 0x%04h",
                     ns_time(), k[24:0], u_hyperram.Mem[k][15:0]);
        end
        axi_full_read_burst(32'h0000_0204, 1, rd_data);
        check_eq32(rd_data[0], 32'hBEEF_1002, "AXI WRAP write mapped @0x0204");
        axi_full_read_burst(32'h0000_0208, 1, rd_data);
        check_eq32(rd_data[0], 32'hBEEF_1003, "AXI WRAP write mapped @0x0208");
        axi_full_read_burst(32'h0000_020C, 1, rd_data);
        check_eq32(rd_data[0], 32'hBEEF_1000, "AXI WRAP write mapped @0x020C");
        $display("[%0d][ TB]                 TEST PASS: AXI-full 4-beat WRAP write split into linear HyperBus writes", ns_time());

        // 4-beat WRAP read should return wrapped AXI order from the same 16-byte group.
        axi_full_read_burst_mode(32'h0000_020C, 4, 2'b10, rd_data);
        check_eq32(rd_data[0], 32'hBEEF_1000, "AXI WRAP read beat0 @0x020C");
        check_eq32(rd_data[1], 32'hBEEF_1001, "AXI WRAP read beat1 @0x0200");
        check_eq32(rd_data[2], 32'hBEEF_1002, "AXI WRAP read beat2 @0x0204");
        check_eq32(rd_data[3], 32'hBEEF_1003, "AXI WRAP read beat3 @0x0208");
        $display("[%0d][ TB]                 TEST PASS: AXI-full 4-beat WRAP read split into linear HyperBus reads", ns_time());

        // 2-beat WRAP write/read over an 8-byte boundary.
        axi_full_write_burst_mode(32'h0000_0224, 2, 2'b10, 32'hCAFE_2000, 4'hF);
        axi_full_read_burst(32'h0000_0220, 1, rd_data);
        check_eq32(rd_data[0], 32'hCAFE_2001, "AXI WRAP write mapped @0x0220");
        axi_full_read_burst(32'h0000_0224, 1, rd_data);
        check_eq32(rd_data[0], 32'hCAFE_2000, "AXI WRAP write mapped @0x0224");
        axi_full_read_burst_mode(32'h0000_0224, 2, 2'b10, rd_data);
        check_eq32(rd_data[0], 32'hCAFE_2000, "AXI WRAP read beat0 @0x0224");
        check_eq32(rd_data[1], 32'hCAFE_2001, "AXI WRAP read beat1 @0x0220");
        $display("[%0d][ TB]                 TEST PASS: AXI-full 2-beat WRAP write/read split into linear HyperBus commands", ns_time());

        // AXI-full multi-beat burst sweep (self-checking): 2..32 beats.
        for (beats = 2; beats <= 32; beats++) begin
            burst_base = 32'hA5A5_0000 + (beats << 8);
            axil_read(16'h0084, axif_rwds_before);
            axil_read(16'h0088, axil_rwds_before);
            axi_full_write_burst(32'h0000_0100, beats, burst_base, 4'hF);
            axi_full_read_burst (32'h0000_0100, beats, rd_data);
            axil_read(16'h0084, axif_rwds_after);
            axil_read(16'h0088, axil_rwds_after);
            exp_axif_rwds_after = axif_rwds_before[5:0] + (beats * 2); // beats * 2 halfwords (mod 64)
            if (axif_rwds_after[5:0] !== exp_axif_rwds_after) begin
                $fatal(1, "AXI-FULL RWDS counter mismatch beats=%0d: got=0x%02x exp=0x%02x",
                       beats, axif_rwds_after[5:0], exp_axif_rwds_after);
            end
            if (axil_rwds_after[5:0] !== axil_rwds_before[5:0]) begin
                $fatal(1, "AXI-LITE RWDS counter changed during AXI-full burst read beats=%0d: before=0x%02x after=0x%02x",
                       beats, axil_rwds_before[5:0], axil_rwds_after[5:0]);
            end
            $display("[%0d][ TB]                 TEST PASS: RWDS counters after %0d-beat AXI-full read axif=0x%02x axil=0x%02x",
                     ns_time(), beats, axif_rwds_after[5:0], axil_rwds_after[5:0]);

            for (k = 0; k < beats; k++) begin
                if (rd_data[k] !== (burst_base + k)) begin
                    $fatal(1, "Multi-beat readback failed beats=%0d beat=%0d: got 0x%08x exp 0x%08x",
                           beats, k, rd_data[k], (burst_base + k));
                end
            end
            $display("[%0d][ TB]                 TEST PASS: %0d-beat full burst write/read", ns_time(), beats);
        end


        $display("TB PASS");
        #1000;
        $finish;
    end

endmodule
