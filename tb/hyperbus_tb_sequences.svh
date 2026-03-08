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
            check_eq32(rd32, 32'h0C81_0C81, "AXI-Lite ARVALID-hold read @0x0000");
            axil_wait_no_rvalid(80, "AXI-Lite ARVALID-hold duplicate-R check");
            if ((axil_cmd_push_count - push_base) != 1) begin
                $fatal(1, "AXI-Lite ARVALID-hold saw delayed duplicate cmd push (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            $display("[%0t][ TB] TEST PASS: AXI-Lite AWVALID/ARVALID hold stress", $time);
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
                $fatal(1, "Same-cycle RW service-order failed: B @%0t, first R @%0t (AW @%0t ARacc @%0t)",
                       t_b_seen, t_r_seen, t_aw_hs, t_ar_acc);
            end
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;
            s_axi_rready <= 1'b0;

            axi_full_read_burst(wr_addr, 1, rd_one);
            if (rd_one[0] !== wr_data) begin
                $fatal(1, "Same-cycle RW write-commit mismatch: got=0x%08x exp=0x%08x", rd_one[0], wr_data);
            end

            $display("[%0t][ TB] TEST PASS: same-cycle AXI-full read+write arbitration and data integrity", $time);
        end
    endtask

    task automatic run_axil_self_checks;
        logic [31:0] rd32;
        logic [8:0]  odly_before;
        logic [8:0]  odly_target;
        int push_base;
        int poll_i;
        begin
            axil_read(16'h0000, rd32);
            check_eq32(rd32, 32'h0C81_0C81, "ID0 32-bit read duplicate @0x0000");
            axil_read(16'h0004, rd32);
            check_eq32(rd32, 32'h0001_0001, "ID1 32-bit read duplicate @0x0004");
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 default @0x0800");
            axil_expect_read16(16'h0802, 16'hFFC1, "CR1 default @0x0802");

            axil_write(16'h0800, 32'h0000_8F27);
            axil_expect_read16(16'h0800, 16'h8F27, "CR0 write/readback 0x8F27");
            axil_write(16'h0800, 32'h0000_8F2F);
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 write/readback 0x8F2F");

            // AXI-Lite local CK_P ODELAYE3 register interface checks @0x0100.
            odly_dbg_en = 1'b1;
            push_base = axil_cmd_push_count;
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0001, "CK_P_ODELAY_CTRL default @0x0100");
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local read @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            // ODELAYE3 TIME/VAR_LOAD dynamic-step path:
            // EN_VTC must be low for deterministic stepping behavior in simulation.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0000); // EN_VTC=0
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            repeat (10) @(posedge axi_aclk);
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL EN_VTC disabled @0x0100");

            // Read CLKCNTVALUEOUT before dynamic stepping; unknown is a test failure.
            axil_read(16'h0108, rd32);
            $display("[%0t][ TB] CLKCNTVALUEOUT read @0x0108 = 0x%03x", $time, rd32[8:0]);
            if (^rd32[8:0] === 1'bx) begin
                $fatal(1, "CK_P_ODELAY_STATUS @0x0108 returned X before CE/INC stepping: 0x%03x", rd32[8:0]);
            end

            // TIME mode dynamic-step control:
            // set INC=1 (sticky), then pulse CE and verify CE is non-sticky.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0002);
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

            // RST pulse is non-sticky in control register as well.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0010);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL sticky bits after RST pulse @0x0100");

            // STATUS register remains readable in TIME/VAR_LOAD dynamic-step mode.
            axil_read(16'h0108, rd32);
            $display("[%0t][ TB] CLKCNTVALUEOUT read @0x0108 = 0x%03x", $time, rd32[8:0]);
            if (^rd32[8:0] === 1'bx) begin
                $fatal(1, "CK_P_ODELAY_STATUS @0x0108 returned X: 0x%03x", rd32[8:0]);
            end
            $display("[%0t][ TB] TEST PASS: AXI-Lite CK_P ODELAY dynamic-step control", $time);

            // Return EN_VTC to 1 between dynamic-step and LOAD sub-tests.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0001);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0001, "CK_P_ODELAY_CTRL EN_VTC re-enabled between sub-tests @0x0100");

            // Separate LOAD testcase for TIME/VAR_LOAD:
            // program TIME value @0x0104, pulse LOAD, and verify CNTVALUEOUT updates.
            // Start this sub-test with EN_VTC=0.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0000);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            repeat (10) @(posedge axi_aclk);
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL EN_VTC disabled for LOAD sub-test @0x0100");

            axil_read(16'h0108, rd32);
            $display("[%0t][ TB] CLKCNTVALUEOUT read @0x0108 = 0x%03x", $time, rd32[8:0]);
            if (^rd32[8:0] === 1'bx) begin
                $fatal(1, "CK_P_ODELAY_STATUS @0x0108 returned X before LOAD testcase: 0x%03x", rd32[8:0]);
            end
            odly_before = rd32[8:0];
            odly_target = odly_before + 9'd1;

            push_base = axil_cmd_push_count;
            axil_write(16'h0104, {23'h0, odly_target});
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0104 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end

            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0008); // LOAD pulse
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0000, "CK_P_ODELAY_CTRL sticky bits after LOAD pulse @0x0100");

            for (poll_i = 0; poll_i < 32; poll_i++) begin
                axil_read(16'h0108, rd32);
                $display("[%0t][ TB] CLKCNTVALUEOUT read @0x0108 = 0x%03x", $time, rd32[8:0]);
                if (^rd32[8:0] === 1'bx) begin
                    $fatal(1, "CK_P_ODELAY_STATUS @0x0108 returned X during LOAD testcase: 0x%03x", rd32[8:0]);
                end
                if (rd32[8:0] == odly_target) begin
                    break;
                end
                @(posedge axi_aclk);
            end
            if (rd32[8:0] !== odly_target) begin
                $fatal(1, "CK_P_ODELAY_STATUS @0x0108 mismatch after LOAD: got=0x%03x exp=0x%03x",
                       rd32[8:0], odly_target);
            end
            $display("[%0t][ TB] TEST PASS: AXI-Lite CK_P ODELAY LOAD path", $time);

            // Return control register to default EN_VTC=1.
            push_base = axil_cmd_push_count;
            axil_write(16'h0100, 32'h0000_0001);
            if ((axil_cmd_push_count - push_base) != 0) begin
                $fatal(1, "ODELAY local write @0x0100 unexpectedly pushed cmd fifo (delta=%0d)",
                       (axil_cmd_push_count - push_base));
            end
            axil_read(16'h0100, rd32);
            check_eq32(rd32, 32'h0000_0001, "CK_P_ODELAY_CTRL EN_VTC re-enabled @0x0100");
            odly_dbg_en = 1'b0;

            $display("[%0t][ TB] TEST PASS: AXI-Lite CK_P ODELAY local register access @0x0100", $time);
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
                $fatal(1, "Timeout reset pulse too short: low for %0t", (t_reset_rise - t_reset_fall));
            end
            $display("[%0t][ TB] TEST PASS: timeout reset pulse low width=%0t", $time, (t_reset_rise - t_reset_fall));

            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b1) begin
                $fatal(1, "Timeout status bit not set after timeout, status=0x%08x", status32);
            end
            $display("[%0t][ TB] TEST PASS: timeout status bit set", $time);

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
                $fatal(1, "Holdoff too short: AR accepted after %0t (<450ns)", (t_ar_accept - t_resp_done));
            end
            $display("[%0t][ TB] TEST PASS: post-timeout AXI holdoff duration=%0t", $time, (t_ar_accept - t_resp_done));

            // Clear timeout sticky status by write-1-to-clear.
            axil_write(16'h0080, 32'h0000_0001);
            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b0) begin
                $fatal(1, "Timeout status bit clear failed, status=0x%08x", status32);
            end
            $display("[%0t][ TB] TEST PASS: timeout status clear via AXI-Lite @0x0080", $time);

            // AXI-full timeout should complete with all-ones read data beats.
            #500ns;
            force hb_rwds = 1'b0;
            axi_full_read_burst(32'h0000_0200, 2, rd_timeout);
            release hb_rwds;
            if (rd_timeout[0] !== 32'hFFFF_FFFF || rd_timeout[1] !== 32'hFFFF_FFFF) begin
                $fatal(1, "AXI-full timeout read mismatch: beat0=0x%08x beat1=0x%08x",
                       rd_timeout[0], rd_timeout[1]);
            end
            $display("[%0t][ TB] TEST PASS: AXI-full timeout read data 0xFFFFFFFF", $time);
            axil_read(16'h0080, status32);
            if (status32[0] !== 1'b1) begin
                $fatal(1, "Timeout status bit not set after AXI-full timeout, status=0x%08x", status32);
            end
            $display("[%0t][ TB] TEST PASS: timeout status bit set after AXI-full timeout", $time);
            #500ns;
        end
    endtask
