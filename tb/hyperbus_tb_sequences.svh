// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
    // Higher-level scenario sequences
    task automatic run_axil_hold_valid_stress;
        logic [31:0] rd32;
        int push_base;
        begin
            // 1) Held-AWVALID write request must enqueue exactly one AXI-Lite cmd.
            push_base = axil_cmd_push_count;
            axil_write_hold_awvalid(16'h0800, 32'h0000_8F2F, 3);
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite AWVALID-hold expected exactly 1 cmd push, got %0d",
                       (axil_cmd_push_count - push_base));
            end
            axil_wait_no_bvalid(80, "AXI-Lite AWVALID-hold duplicate-B check");
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite AWVALID-hold saw delayed duplicate cmd push (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            // 2) Readback request is a separate command and should enqueue exactly one cmd.
            push_base = axil_cmd_push_count;
            axil_expect_read16(16'h0800, 16'h8F2F, "AXI-Lite AWVALID-hold write/readback @0x0800");
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite AWVALID-hold readback expected exactly 1 cmd push, got %0d",
                       (axil_cmd_push_count - push_base));
            end
            axil_wait_no_rvalid(80, "AXI-Lite AWVALID-hold readback duplicate-R check");
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite AWVALID-hold readback saw delayed duplicate cmd push (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            // 3) Held-ARVALID read request must enqueue exactly one AXI-Lite cmd.
            push_base = axil_cmd_push_count;
            axil_read_hold_arvalid(16'h0000, 3, rd32);
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite ARVALID-hold expected exactly 1 cmd push, got %0d",
                       (axil_cmd_push_count - push_base));
            end
            check_eq32(rd32, 32'h0000_0C81, "AXI-Lite ARVALID-hold read @0x0000");
            axil_wait_no_rvalid(80, "AXI-Lite ARVALID-hold duplicate-R check");
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite ARVALID-hold saw delayed duplicate cmd push (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            $display("[%0d][ TB] TEST PASS: AXI-Lite AWVALID/ARVALID hold stress", ns_time());
        end
    endtask

    task automatic axi_full_same_cycle_rw_check(
        input logic [31:0] rd_addr,
        input logic [31:0] wr_addr,
        input logic [31:0] wr_data,
        input logic [31:0] exp_rd_data
    );
        time t_aw_hs;
        time t_ar_acc;
        time t_b_seen;
        time t_r_seen;
        logic aw_hs;
        logic ar_acc;
        logic b_seen;
        logic r_seen;
        logic [31:0] rd_one [0:31];
        begin
            t_aw_hs = 0;
            t_ar_acc = 0;
            t_b_seen = 0;
            t_r_seen = 0;
            aw_hs = 1'b0;
            ar_acc = 1'b0;
            b_seen = 1'b0;
            r_seen = 1'b0;

            @(posedge axi_aclk);
            s_axi_awaddr  <= wr_addr;
            s_axi_awlen   <= 8'd0;
            s_axi_awsize  <= 3'd2;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b1;

            s_axi_araddr  <= rd_addr;
            s_axi_arlen   <= 8'd0;
            s_axi_arsize  <= 3'd2;
            s_axi_arburst <= 2'b01;
            s_axi_arvalid <= 1'b1;

            s_axi_wdata   <= wr_data;
            s_axi_wstrb   <= 4'hF;
            s_axi_wlast   <= 1'b1;
            s_axi_wvalid  <= 1'b0;

            while (!aw_hs) begin
                @(posedge axi_aclk);
                if (!aw_hs && s_axi_awvalid && s_axi_awready) begin
                    aw_hs = 1'b1;
                    t_aw_hs = $time;
                    s_axi_awvalid <= 1'b0;
                    s_axi_wvalid  <= 1'b1;
                end
            end

            `WAIT_AXI_COND(s_axi_wready && s_axi_wvalid, "same-cycle test W handshake")
            @(negedge axi_aclk);
            s_axi_wvalid <= 1'b0;
            s_axi_wlast  <= 1'b0;

            while (!ar_acc) begin
                @(posedge axi_aclk);
                if (s_axi_arvalid && s_axi_arready && !s_axi_awvalid) begin
                    ar_acc = 1'b1;
                    t_ar_acc = $time;
                    s_axi_arvalid <= 1'b0;
                end
            end

            s_axi_bready <= 1'b1;
            s_axi_rready <= 1'b1;
            while (!(b_seen && r_seen)) begin
                @(posedge axi_aclk);
                if (!b_seen && s_axi_bvalid) begin
                    b_seen = 1'b1;
                    t_b_seen = $time;
                end
                if (!r_seen && s_axi_rvalid) begin
                    r_seen = 1'b1;
                    t_r_seen = $time;
                    if (s_axi_rdata !== exp_rd_data) begin
                        $fatal(1, "Same-cycle RW readback mismatch: got=0x%08x exp=0x%08x", s_axi_rdata, exp_rd_data);
                    end
                    if (!s_axi_rlast) begin
                        $fatal(1, "Same-cycle RW missing RLAST on single-beat read");
                    end
                end
            end

            if (!(t_b_seen <= t_r_seen)) begin
                $fatal(1, "Same-cycle RW service-order failed: B @%0d ns, first R @%0d ns (AW @%0d ns ARacc @%0d ns)",
                       int'($rtoi(((t_b_seen / 1ns)) + 0.5)),
                       int'($rtoi(((t_r_seen / 1ns)) + 0.5)),
                       int'($rtoi(((t_aw_hs / 1ns)) + 0.5)),
                       int'($rtoi(((t_ar_acc / 1ns)) + 0.5)));
            end
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;
            s_axi_rready <= 1'b0;

            axi_full_read_burst(wr_addr, 1, rd_one);
            if (rd_one[0] !== wr_data) begin
                $fatal(1, "Same-cycle RW write-commit mismatch: got=0x%08x exp=0x%08x", rd_one[0], wr_data);
            end

            $display("[%0d][ TB] TEST PASS: same-cycle AXI-full read+write arbitration and data integrity", ns_time());
        end
    endtask

    task automatic run_posted_write_overlap_axif_checks;
        logic [31:0] rd_one [0:31];
        logic overlap_aw;
        logic overlap_w;
        logic overlap_ar;
        begin
            overlap_aw = 1'b0;
            overlap_w  = 1'b0;
            overlap_ar = 1'b0;

            axi_full_write_burst(32'h0000_0300, 32, 32'h5A00_0000, 4'hF);
            wait_axif_write_in_progress(32'h0000_0300);

            @(posedge axi_aclk);
            s_axi_awaddr  <= 32'h0000_0380;
            s_axi_awid    <= 4'h2;
            s_axi_awlen   <= 8'd0;
            s_axi_awsize  <= 3'd2;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b1;
            while (!(s_axi_awvalid && s_axi_awready)) begin
                @(posedge axi_aclk);
            end
            overlap_aw = axif_write_in_progress(32'h0000_0300);
            @(posedge axi_aclk);
            s_axi_awvalid <= 1'b0;

            @(negedge axi_aclk);
            s_axi_wdata  <= 32'hC0DE_0380;
            s_axi_wstrb  <= 4'hF;
            s_axi_wlast  <= 1'b1;
            s_axi_wvalid <= 1'b1;
            while (!(s_axi_wready && s_axi_wvalid)) begin
                @(posedge axi_aclk);
            end
            overlap_w = axif_write_in_progress(32'h0000_0300);
            @(negedge axi_aclk);
            s_axi_wvalid <= 1'b0;
            s_axi_wlast  <= 1'b0;

            @(posedge axi_aclk);
            s_axi_araddr  <= 32'h0000_0300;
            s_axi_arid    <= 4'h3;
            s_axi_arlen   <= 8'd0;
            s_axi_arsize  <= 3'd2;
            s_axi_arburst <= 2'b01;
            s_axi_arvalid <= 1'b1;
            while (!(s_axi_arvalid && s_axi_arready)) begin
                @(posedge axi_aclk);
            end
            overlap_ar = axif_write_in_progress(32'h0000_0300);
            @(posedge axi_aclk);
            s_axi_arvalid <= 1'b0;

            s_axi_bready <= 1'b1;
            `WAIT_AXI_COND(s_axi_bvalid, "posted-write overlap AXI-full BVALID")
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;

            s_axi_rready <= 1'b1;
            `WAIT_AXI_COND(s_axi_rvalid, "posted-write overlap AXI-full RVALID")
            if (s_axi_rdata !== 32'h5A00_0000) begin
                $fatal(1, "AXI-full overlap readback mismatch: got=0x%08x exp=0x5A000000", s_axi_rdata);
            end
            if (!s_axi_rlast) begin
                $fatal(1, "AXI-full overlap read missing RLAST");
            end
            @(posedge axi_aclk);
            s_axi_rready <= 1'b0;

            if (!(overlap_aw && overlap_w && overlap_ar)) begin
                $fatal(1, "AXI-full overlap request was not accepted while prior write was still draining: AW=%0d W=%0d AR=%0d",
                       overlap_aw, overlap_w, overlap_ar);
            end

            axi_full_read_burst(32'h0000_0380, 1, rd_one);
            check_eq32(rd_one[0], 32'hC0DE_0380, "AXI-full overlap posted write committed @0x0380");

            $display("[%0d][ TB] TEST PASS: AXI-full read/write accepted while prior write still drained from WR_FIFO", ns_time());
        end
    endtask

    task automatic run_posted_write_overlap_axil_checks;
        logic [31:0] rd32;
        int push_base;
        logic overlap_write_push;
        logic overlap_read_push;
        begin
            overlap_write_push = 1'b0;
            overlap_read_push  = 1'b0;

            axi_full_write_burst(32'h0000_0340, 32, 32'h6B00_0000, 4'hF);
            wait_axif_write_in_progress(32'h0000_0340);

            push_base = axil_cmd_push_count;
            @(posedge axi_aclk);
            s_axil_awaddr  <= 16'h0800;
            s_axil_awvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_awready, "posted-write overlap AXI-Lite AWREADY")
            @(posedge axi_aclk);
            s_axil_awvalid <= 1'b0;

            s_axil_wdata  <= 32'h0000_8F27;
            s_axil_wstrb  <= 4'hF;
            s_axil_wvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_wready, "posted-write overlap AXI-Lite WREADY")
            @(posedge axi_aclk);
            s_axil_wvalid <= 1'b0;

            while (axil_cmd_push_count == push_base) begin
                @(posedge axi_aclk);
            end
            overlap_write_push = axif_write_in_progress(32'h0000_0340);

            s_axil_bready <= 1'b1;
            `WAIT_AXI_COND(s_axil_bvalid, "posted-write overlap AXI-Lite BVALID")
            @(posedge axi_aclk);
            s_axil_bready <= 1'b0;

            axi_full_write_burst(32'h0000_03C0, 32, 32'h6C00_0000, 4'hF);
            wait_axif_write_in_progress(32'h0000_03C0);

            push_base = axil_cmd_push_count;
            @(posedge axi_aclk);
            s_axil_araddr  <= 16'h0800;
            s_axil_arvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_arready, "posted-write overlap AXI-Lite ARREADY")
            @(posedge axi_aclk);
            s_axil_arvalid <= 1'b0;

            while (axil_cmd_push_count == push_base) begin
                @(posedge axi_aclk);
            end
            overlap_read_push = axif_write_in_progress(32'h0000_03C0);

            s_axil_rready <= 1'b1;
            `WAIT_AXI_COND(s_axil_rvalid, "posted-write overlap AXI-Lite RVALID")
            rd32 = s_axil_rdata;
            @(posedge axi_aclk);
            s_axil_rready <= 1'b0;
            check_eq32(rd32, 32'h0000_8F27, "AXI-Lite overlap CR0 readback @0x0800");

            if (!(overlap_write_push && overlap_read_push)) begin
                $fatal(1, "AXI-Lite overlap cmd push did not occur while AXI-full write was still draining: write=%0d read=%0d",
                       overlap_write_push, overlap_read_push);
            end

            axil_write(16'h0800, 32'h0000_8F2F);

            $display("[%0d][ TB] TEST PASS: AXI-Lite read/write accepted while AXI-full write still drained from WR_FIFO", ns_time());
        end
    endtask

    task automatic run_wr_fifo_prog_full_backpressure_check;
        logic [31:0] rd_one [0:31];
        int stall_cycles;
        begin
            $display("[%0d][ TB] Forcing WR FIFO prog_full high", ns_time());
            force dut.u_fifo_bank.o_wr_fifo_prog_full = 1'b1;

            @(posedge axi_aclk);
            s_axi_awaddr  <= 32'h0000_0240;
            s_axi_awid    <= 4'h4;
            s_axi_awlen   <= 8'd0;
            s_axi_awsize  <= 3'd2;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b1;

            for (stall_cycles = 0; stall_cycles < 6; stall_cycles++) begin
                @(posedge axi_aclk);
                if (s_axi_awready) begin
                    $fatal(1, "AXI-full AW accepted while WR FIFO prog_full asserted at cycle %0d", stall_cycles);
                end
                if (dut.aw_pending) begin
                    $fatal(1, "AXI-full aw_pending asserted while WR FIFO prog_full blocked AW at cycle %0d", stall_cycles);
                end
            end

            $display("[%0d][ TB] Forcing WR FIFO prog_full low to release backpressure", ns_time());
            force dut.u_fifo_bank.o_wr_fifo_prog_full = 1'b0;
            `WAIT_AXI_COND(s_axi_awready, "AXI-full AWREADY after WR FIFO prog_full release")
            @(posedge axi_aclk);
            s_axi_awvalid <= 1'b0;
            $display("[%0d][ TB] Releasing WR FIFO prog_full force", ns_time());
            release dut.u_fifo_bank.o_wr_fifo_prog_full;

            @(negedge axi_aclk);
            s_axi_wdata  <= 32'hFACE_0240;
            s_axi_wstrb  <= 4'hF;
            s_axi_wlast  <= 1'b1;
            s_axi_wvalid <= 1'b1;
            `WAIT_AXI_COND(s_axi_wready && s_axi_wvalid, "AXI-full WREADY after WR FIFO prog_full release")
            @(negedge axi_aclk);
            s_axi_wvalid <= 1'b0;
            s_axi_wlast  <= 1'b0;

            s_axi_bready <= 1'b1;
            `WAIT_AXI_COND(s_axi_bvalid, "AXI-full BVALID after WR FIFO prog_full release")
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;

            axi_full_read_burst(32'h0000_0240, 1, rd_one);
            check_eq32(rd_one[0], 32'hFACE_0240, "AXI-full write accepted after WR FIFO prog_full clears @0x0240");
            $display("[%0d][ TB] TEST PASS: AXI-full writes blocked until WR FIFO prog_full cleared", ns_time());
        end
    endtask

    task automatic run_rd_fifo_prog_full_launch_block_check;
        int hold_cycles;
        logic [31:0] rd_word;
        begin
            axi_full_write_burst(32'h0000_0260, 1, 32'hFACE_0260, 4'hF);

            $display("[%0d][ TB] Forcing RD FIFO prog_full high", ns_time());
            force dut.u_fifo_bank.o_rd_fifo_prog_full = 1'b1;

            @(posedge axi_aclk);
            s_axi_araddr  <= 32'h0000_0260;
            s_axi_arid    <= 4'h5;
            s_axi_arlen   <= 8'd0;
            s_axi_arsize  <= 3'd2;
            s_axi_arburst <= 2'b01;
            s_axi_arvalid <= 1'b1;
            `WAIT_AXI_COND(s_axi_arready, "AXI-full ARREADY with RD FIFO prog_full asserted")
            @(posedge axi_aclk);
            s_axi_arvalid <= 1'b0;

            wait_axif_read_cmd_loaded(32'h0000_0260);

            for (hold_cycles = 0; hold_cycles < 8; hold_cycles++) begin
                @(posedge hb_clk_200);
                if (!dut.u_hb_engine.cmd_loaded) begin
                    $fatal(1, "AXI-full read command was not held while RD FIFO prog_full remained asserted");
                end
                if (hb_cs_n !== 1'b1) begin
                    $fatal(1, "HyperBus read launched while RD FIFO prog_full asserted at HB cycle %0d", hold_cycles);
                end
            end

            $display("[%0d][ TB] Releasing RD FIFO prog_full force", ns_time());
            release dut.u_fifo_bank.o_rd_fifo_prog_full;
            wait_axif_read_launch(32'h0000_0260);

            s_axi_rready <= 1'b1;
            `WAIT_AXI_COND(s_axi_rvalid, "AXI-full RVALID after RD FIFO prog_full release")
            rd_word = s_axi_rdata;
            if (!s_axi_rlast) begin
                $fatal(1, "AXI-full read gated by RD FIFO prog_full missing RLAST");
            end
            @(posedge axi_aclk);
            s_axi_rready <= 1'b0;

            check_eq32(rd_word, 32'hFACE_0260, "AXI-full read launched after RD FIFO prog_full clears @0x0260");
            $display("[%0d][ TB] TEST PASS: HyperBus read launch blocked until RD FIFO prog_full cleared", ns_time());
        end
    endtask

    task automatic run_delay_reset_self_checks;
        logic [31:0] rd32;
        int push_base;
        int rdy_poll;
        begin
            // Delay-control reset path checks:
            // 0x0200[0] -> IDELAYCTRL reset request
            // 0x0200[1] -> CK_P ODELAYE3 reset request
            // 0x0200[2] -> RWDS IDELAYE3 reset request
            // 0x0204[0] -> IDELAYCTRL RDY status
            push_base = axil_cmd_push_count;
            axil_read(16'h0200, rd32);
            check_eq32(rd32, 32'h0000_0007, "DELAY_RST_CTRL default asserted @0x0200");
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "Delay local read @0x0200 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            // Assert IDELAYCTRL + CK_P ODELAY + RWDS IDELAY resets together first.
            push_base = axil_cmd_push_count;
            axil_write(16'h0200, 32'h0000_0007);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "Delay local write @0x0200 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0200, rd32);
            check_eq32(rd32, 32'h0000_0007, "DELAY_RST_CTRL all reset controls asserted @0x0200");

            // Keep IDELAYCTRL reset asserted for >= 80ns before deassert.
            // AXI clock is 50MHz, so 4 cycles = 80ns.
            repeat (4) @(posedge axi_aclk);

            // Deassert IDELAYCTRL reset, keep CK_P ODELAY and RWDS IDELAY resets asserted.
            push_base = axil_cmd_push_count;
            axil_write(16'h0200, 32'h0000_0006);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "Delay local write @0x0200 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0200, rd32);
            check_eq32(rd32, 32'h0000_0006, "DELAY_RST_CTRL IDELAYCTRL deasserted, CK_P/RWDS delays held reset @0x0200");

            // Poll IDELAYCTRL RDY status @0x0204 until high.
            rd32 = 32'h0;
            for (rdy_poll = 0; rdy_poll < 256; rdy_poll++) begin
                axil_read(16'h0204, rd32);
                if (^rd32[0] === 1'bx) begin
                    $fatal(1, "IDELAYCTRL_STATUS @0x0204 returned X at poll=%0d", rdy_poll);
                end
                if (rd32[0]) begin
                    break;
                end
                repeat (2) @(posedge axi_aclk);
            end
            if (!rd32[0]) begin
                $fatal(1, "IDELAYCTRL_STATUS @0x0204 did not assert RDY within poll window");
            end
            $display("[%0d][ TB] TEST PASS: IDELAYCTRL RDY poll via AXI-Lite @0x0204", ns_time());

            // After IDELAYCTRL RDY is high, deassert CK_P ODELAY and RWDS IDELAY resets.
            push_base = axil_cmd_push_count;
            axil_write(16'h0200, 32'h0000_0000);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "Delay local write @0x0200 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0200, rd32);
            check_eq32(rd32, 32'h0000_0000, "DELAY_RST_CTRL CK_P/RWDS delay resets deasserted after IDELAYCTRL RDY @0x0200");

            $display("[%0d][ TB] TEST PASS: AXI-Lite delay reset control @0x0200/0x0204", ns_time());
        end
    endtask

    task automatic run_hb_clk_ce_force_clear_check;
        logic [31:0] rd32;
        int push_base;
        begin
            // First testcase requirement: clear HB_CLK_CE_FORCE.bit0.
            // This is a local AXI-Lite register access and must not enqueue HB commands.
            push_base = axil_cmd_push_count;
            axil_write(16'h008C, 32'h0000_0000);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "HB_CLK_CE_FORCE local write @0x008C unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h008C, rd32);
            check_eq32(rd32, 32'h0000_0000, "HB_CLK_CE_FORCE cleared @0x008C");
        end
    endtask

    task automatic run_axil_self_checks;
        logic [31:0] rd32;
        int push_base;
        int poll_i;
        begin
            axil_read(16'h0024, rd32);
            check_eq32(rd32, 32'h0100_0004, "VERSION read @0x0024");

            axil_read(16'h0000, rd32);
            check_eq32(rd32, 32'h0000_0C81, "ID0 32-bit read zero-extended @0x0000");
            axil_read(16'h0004, rd32);
            check_eq32(rd32, 32'h0000_0001, "ID1 32-bit read zero-extended @0x0004");
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 default @0x0800");
            axil_expect_read16(16'h0804, 16'hFFC1, "CR1 default @0x0804");

            axil_write(16'h0800, 32'h0000_8F27);
            axil_expect_read16(16'h0800, 16'h8F27, "CR0 write/readback 0x8F27");
            axil_write(16'h0800, 32'h0000_8F2F);
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 write/readback 0x8F2F");

            // EN_VTC reset default should be 0.
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL reset default EN_VTC=0 @0x0100");

            // Keep EN_VTC=0 for all ODELAYE3 simulation tests.
            // Unisim ODELAYE3 TIME-mode can drive CNTVALUEOUT to X when EN_VTC=1,
            // so sims must leave EN_VTC off.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0000);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            repeat (10) @(posedge axi_aclk);
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL EN_VTC held low for sim @0x0100");

            // Dynamic-step path: INC sticky, CE pulse non-sticky.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0002); // INC=1
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0002, "CK_P_ODELAY_CTRL INC set @0x0100");

            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0006); // INC=1 + CE pulse
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0002, "CK_P_ODELAY_CTRL CE pulse non-sticky @0x0100");

            // Program TIME register to 10 (changed from prior 372 test value).
            push_base = axil_cmd_push_count;
            axil_write(16'h0104, 32'h0000_000A);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0104 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0104, rd32);
            check_eq32(rd32, 32'h0000_000A, "CK_P_ODELAY_TIME set/readback 10 @0x0104");

            // LOAD pulse path with EN_VTC still low.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_000A); // INC=1 + LOAD pulse
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0002, "CK_P_ODELAY_CTRL LOAD pulse non-sticky @0x0100");

            for (poll_i = 0; poll_i < 32; poll_i++) begin
                axil_read(16'h0108, rd32);
                $display("[%0d][ TB] CLKCNTVALUEOUT read @0x0108 = 0x%03x", ns_time(), rd32[8:0]);
                if (^rd32[8:0] === 1'bx) begin
                    $fatal(1, "CK_P_ODELAY_STATUS @0x0108 returned X while EN_VTC=0: 0x%03x", rd32[8:0]);
                end
                if (rd32[8:0] == 9'd10) begin
                    break;
                end
                @(posedge axi_aclk);
            end
            if (rd32[8:0] !== 9'd10) begin
                $fatal(1, "CK_P_ODELAY_STATUS @0x0108 mismatch after LOAD: got=0x%03x exp=0x00a", rd32[8:0]);
            end
            $display("[%0d][ TB] TEST PASS: AXI-Lite CK_P ODELAY dynamic-step/LOAD with EN_VTC=0", ns_time());
        end
    endtask

    task automatic run_timeout_recovery_checks;
        logic [31:0] rd32;
        logic [31:0] status32;
        logic [31:0] rd_timeout [0:31];
        time t_reset_fall;
        time t_reset_rise;
        time t_resp_done;
        time t_ar_accept;
        int  wait_cycles;
        begin
            t_reset_fall = 0;
            t_reset_rise = 0;

            fork
                begin
                    @(negedge hb_reset_n);
                    t_reset_fall = $time;
                    @(posedge hb_reset_n);
                    t_reset_rise = $time;
                end
            join_none

            force hb_rwds = 1'b0;
            axil_read(16'h0000, rd32);
            release hb_rwds;

            check_eq32(rd32, 32'hFFFF_FFFF, "AXI-Lite timeout read data @0x0000");
            t_resp_done = $time;

            wait_cycles = 0;
            while ((t_reset_fall == 0 || t_reset_rise == 0) && (wait_cycles < 200)) begin
                @(posedge hb_clk_200);
                wait_cycles = wait_cycles + 1;
            end
            if (t_reset_fall == 0 || t_reset_rise == 0) begin
                $fatal(1, "Timeout reset pulse was not observed");
            end
            if ((t_reset_rise - t_reset_fall) < 220ns) begin
                $fatal(1, "Timeout reset pulse too short: low for %0d ns",
                       int'($rtoi((((t_reset_rise - t_reset_fall) / 1ns)) + 0.5)));
            end
            $display("[%0d][ TB] TEST PASS: timeout reset pulse low width=%0d ns",
                     ns_time(), int'($rtoi((((t_reset_rise - t_reset_fall) / 1ns)) + 0.5)));

            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b1) begin
                $fatal(1, "Timeout status bit not set after timeout, status=0x%08x", status32);
            end
            $display("[%0d][ TB] TEST PASS: timeout status bit set", ns_time());

            // Hold ARVALID high and ensure new command acceptance is blocked for >=450ns.
            @(posedge axi_aclk);
            s_axil_araddr  <= 16'h0000;
            s_axil_arvalid <= 1'b1;
            while (!s_axil_arready) begin
                @(posedge axi_aclk);
            end
            t_ar_accept = $time;
            @(posedge axi_aclk);
            s_axil_arvalid <= 1'b0;

            s_axil_rready <= 1'b1;
            `WAIT_AXI_COND(s_axil_rvalid, "s_axil_rvalid (holdoff check)")
            rd32 = s_axil_rdata;
            @(posedge axi_aclk);
            s_axil_rready <= 1'b0;

            if ((t_ar_accept - t_resp_done) < 450ns) begin
                $fatal(1, "Holdoff too short: AR accepted after %0d ns (<450ns)",
                       int'($rtoi((((t_ar_accept - t_resp_done) / 1ns)) + 0.5)));
            end
            $display("[%0d][ TB] TEST PASS: post-timeout AXI holdoff duration=%0d ns",
                     ns_time(), int'($rtoi((((t_ar_accept - t_resp_done) / 1ns)) + 0.5)));

            // Clear timeout sticky status by write-1-to-clear.
            axil_write(16'h0080, 32'h0000_0001);
            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b0) begin
                $fatal(1, "Timeout status bit clear failed, status=0x%08x", status32);
            end
            $display("[%0d][ TB] TEST PASS: timeout status clear via AXI-Lite @0x0080", ns_time());

            // AXI-full timeout should complete with all-ones read data beats.
            #500ns;
            force hb_rwds = 1'b0;
            axi_full_read_burst(32'h0000_0200, 2, rd_timeout);
            release hb_rwds;
            if (rd_timeout[0] !== 32'hFFFF_FFFF || rd_timeout[1] !== 32'hFFFF_FFFF) begin
                $fatal(1, "AXI-full timeout read mismatch: beat0=0x%08x beat1=0x%08x",
                       rd_timeout[0], rd_timeout[1]);
            end
            $display("[%0d][ TB] TEST PASS: AXI-full timeout read data 0xFFFFFFFF", ns_time());
            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b1) begin
                $fatal(1, "Timeout status bit not set after AXI-full timeout, status=0x%08x", status32);
            end
            $display("[%0d][ TB] TEST PASS: timeout status bit set after AXI-full timeout", ns_time());
            #500ns;
        end
    endtask
