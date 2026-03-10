    // Common check/util tasks
    function automatic logic [31:0] axil_lane16(input logic [15:0] addr, input logic [15:0] value16);
        begin
            // AXI-Lite 16-bit accesses are returned in low lane for addr[1]=0, high lane for addr[1]=1.
            axil_lane16 = addr[1] ? {value16, 16'h0000} : {16'h0000, value16};
        end
    endfunction

    task automatic check_eq32(
        input logic [31:0] got,
        input logic [31:0] exp,
        input string       label
    );
        begin
            if (got !== exp) begin
                $fatal(1, "CHECK FAILED (%s): got=0x%08x exp=0x%08x", label, got, exp);
            end else begin
                $display("[%0d][ TB] TEST PASS: %s got=0x%08x", ns_time(), label, got);
            end
        end
    endtask

    task automatic axil_expect_read16(
        input logic [15:0] addr,
        input logic [15:0] exp16,
        input string       label
    );
        logic [31:0] rd32;
        begin
            axil_read(addr, rd32);
            check_eq32(rd32, axil_lane16(addr, exp16), label);
        end
    endtask

    task automatic axil_wait_no_bvalid(
        input int    cycles,
        input string label
    );
        int i;
        begin
            for (i = 0; i < cycles; i++) begin
                @(posedge axi_aclk);
                if (s_axil_bvalid) begin
                    $fatal(1, "Unexpected AXI-Lite BVALID during %s at cycle %0d", label, i);
                end
            end
        end
    endtask

    task automatic axil_wait_no_rvalid(
        input int    cycles,
        input string label
    );
        int i;
        begin
            for (i = 0; i < cycles; i++) begin
                @(posedge axi_aclk);
                if (s_axil_rvalid) begin
                    $fatal(1, "Unexpected AXI-Lite RVALID during %s at cycle %0d", label, i);
                end
            end
        end
    endtask
