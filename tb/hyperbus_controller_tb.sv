`timescale 1ns/1ps

module hyperbus_controller_tb;

    localparam int AXI_ADDR_WIDTH  = 32;
    localparam int AXI_DATA_WIDTH  = 32;
    localparam int AXIL_ADDR_WIDTH = 16;
    localparam int MAX_WAIT_AXI_CYCLES = 20000;

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

    // Clocks and reset
    logic axi_aclk;
    logic hb_clk_200;
    logic hb_clk_200_samp_90;
    logic axi_aresetn;
    logic hb_rstn;

    // AXI4 full
    logic [AXI_ADDR_WIDTH-1:0] s_axi_awaddr;
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
    wire                       s_axi_bvalid;
    logic                      s_axi_bready;

    logic [AXI_ADDR_WIDTH-1:0] s_axi_araddr;
    logic [7:0]                s_axi_arlen;
    logic [2:0]                s_axi_arsize;
    logic [1:0]                s_axi_arburst;
    logic                      s_axi_arvalid;
    wire                       s_axi_arready;

    wire [AXI_DATA_WIDTH-1:0]  s_axi_rdata;
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
        .AXIL_ADDR_WIDTH(AXIL_ADDR_WIDTH),
        .HB_LATENCY_DEFAULT(7)
    ) dut (
        .i_axi_aclk(axi_aclk),
        .i_axi_aresetn(axi_aresetn),
        .i_hb_clk_200(hb_clk_200),
        .i_hb_clk_200_samp_90(hb_clk_200_samp_90),
        .i_hb_rstn(hb_rstn),

        .s_axi_awaddr(s_axi_awaddr),
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
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),

        .s_axi_araddr(s_axi_araddr),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),

        .s_axi_rdata(s_axi_rdata),
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
        .o_hb_ck_p(hb_ck_p),
        .o_hb_ck_n(hb_ck_n),
        .io_hb_rwds(hb_rwds),
        .io_hb_dq(hb_dq),
        .o_hb_reset_n(hb_reset_n)
    );

    // HyperRAM model (Infineon)
    s70kl1282 u_hyperram (
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

    // 200 MHz sampling clock, 90-degree shifted from hb_clk_200.
    initial begin
        hb_clk_200_samp_90 = 1'b0;
        #1.25;
        forever #2.5 hb_clk_200_samp_90 = ~hb_clk_200_samp_90;
    end

    // Basic timeout guard
    initial begin
        #5_000_000;
        $fatal(1, "TB timeout");
    end

    // AXI tasks
    task automatic axi_full_write_burst(
        input logic [31:0] addr,
        input int          beats,
        input logic [31:0] base_data,
        input logic [3:0]  strb
    );
        int i;
        begin
            // AW
            @(posedge axi_aclk);
            s_axi_awaddr  <= addr;
            s_axi_awlen   <= beats-1;
            s_axi_awsize  <= 3'd2;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b1;
            $display("[%0t][TB][AXI-WR] AW addr=0x%08x beats=%0d awlen=%0d", $time, addr, beats, beats-1);
            `WAIT_AXI_COND(s_axi_awready, "s_axi_awready")
            @(posedge axi_aclk);
            s_axi_awvalid <= 1'b0;

            // W
            for (i = 0; i < beats; i++) begin
                @(negedge axi_aclk);
                s_axi_wdata  <= base_data + i;
                s_axi_wstrb  <= strb;
                s_axi_wlast  <= (i == beats-1);
                s_axi_wvalid <= 1'b1;
                $display("[%0t][TB][AXI-WR] W  addr=0x%08x beat=%0d data=0x%08x strb=0x%1x last=%0d",
                         $time, (addr + (i*4)), i, (base_data + i), strb, (i == beats-1));
                // Wait for exactly one W handshake, then deassert on the next
                // falling edge so the same beat cannot be accepted twice.
                while (!(s_axi_wready && s_axi_wvalid)) begin
                    @(posedge axi_aclk);
                end
                @(negedge axi_aclk);
                s_axi_wvalid <= 1'b0;
            end
            s_axi_wlast <= 1'b0;

            // B
            s_axi_bready <= 1'b1;
            `WAIT_AXI_COND(s_axi_bvalid, "s_axi_bvalid")
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;
        end
    endtask

    task automatic axi_full_read_burst(
        input  logic [31:0] addr,
        input  int          beats,
        output logic [31:0] rd_buf [0:31]
    );
        int i;
        begin
            @(posedge axi_aclk);
            s_axi_araddr  <= addr;
            s_axi_arlen   <= beats-1;
            s_axi_arsize  <= 3'd2;
            s_axi_arburst <= 2'b01;
            s_axi_arvalid <= 1'b1;
            $display("[%0t][TB][AXI-RD] AR addr=0x%08x beats=%0d arlen=%0d", $time, addr, beats, beats-1);
            `WAIT_AXI_COND(s_axi_arready, "s_axi_arready")
            @(posedge axi_aclk);
            s_axi_arvalid <= 1'b0;

            s_axi_rready <= 1'b1;
            i = 0;
            while (i < beats) begin
                `WAIT_AXI_COND(s_axi_rvalid, "s_axi_rvalid")
                rd_buf[i] = s_axi_rdata;
                $display("[%0t][TB][AXI-RD] R  addr=0x%08x beat=%0d data=0x%08x last=%0d",
                         $time, (addr + (i*4)), i, s_axi_rdata, s_axi_rlast);
                if ((i == beats-1) && !s_axi_rlast) begin
                    $fatal(1, "Missing RLAST on final beat");
                end
                @(posedge axi_aclk);
                i = i + 1;
            end
            s_axi_rready <= 1'b0;
        end
    endtask

    task automatic axil_write(
        input logic [15:0] addr,
        input logic [31:0] data
    );
        begin
            @(posedge axi_aclk);
            s_axil_awaddr  <= addr;
            s_axil_awvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_awready, "s_axil_awready")
            @(posedge axi_aclk);
            s_axil_awvalid <= 1'b0;

            s_axil_wdata  <= data;
            s_axil_wstrb  <= 4'hF;
            s_axil_wvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_wready, "s_axil_wready")
            @(posedge axi_aclk);
            s_axil_wvalid <= 1'b0;

            s_axil_bready <= 1'b1;
            `WAIT_AXI_COND(s_axil_bvalid, "s_axil_bvalid")
            @(posedge axi_aclk);
            s_axil_bready <= 1'b0;
        end
    endtask

    task automatic axil_read(
        input  logic [15:0] addr,
        output logic [31:0] data
    );
        begin
            @(posedge axi_aclk);
            s_axil_araddr  <= addr;
            s_axil_arvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_arready, "s_axil_arready")
            @(posedge axi_aclk);
            s_axil_arvalid <= 1'b0;

            s_axil_rready <= 1'b1;
            `WAIT_AXI_COND(s_axil_rvalid, "s_axil_rvalid")
            data = s_axil_rdata;
            @(posedge axi_aclk);
            s_axil_rready <= 1'b0;
        end
    endtask

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
                $display("[%0t][TB] TEST PASS: %s got=0x%08x", $time, label, got);
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

    task automatic run_axil_self_checks;
        begin
            // Identification and configuration register defaults.
            axil_expect_read16(16'h0000, 16'h0C81, "ID0 default @0x0000");
            axil_expect_read16(16'h0002, 16'h0001, "ID1 default @0x0002");
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 default @0x0800");
            axil_expect_read16(16'h0802, 16'hFFC1, "CR1 default @0x0802");

            // CR0 write/readback checks.
            axil_write(16'h0800, 32'h0000_8F27);
            axil_expect_read16(16'h0800, 16'h8F27, "CR0 write/readback 0x8F27");
            axil_write(16'h0800, 32'h0000_8F2F);
            axil_expect_read16(16'h0800, 16'h8F2F, "CR0 write/readback 0x8F2F");
        end
    endtask

    int k;
    int beats;
    logic [31:0] burst_base;
    logic [31:0] rd_data [0:31];

    initial begin
        // Defaults
        s_axi_awaddr  = '0;
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

        axi_aresetn = 1'b0;
        hb_rstn     = 1'b0;

        repeat (20) @(posedge axi_aclk);
        hb_rstn     = 1'b1;
        axi_aresetn = 1'b1;

        // Let HyperRAM model finish POR interval.
        #160_000;

        // AXI-Lite register path self-checks (fatal on first mismatch).
        run_axil_self_checks();

        // Partial-byte write check using WSTRB -> RWDS byte masks.
        axi_full_write_burst(32'h0000_0180, 1, 32'h1122_3344, 4'hF);
        axi_full_read_burst (32'h0000_0180, 1, rd_data);
        if (rd_data[0] !== 32'h1122_3344) begin
            $fatal(1, "WSTRB mask test failed: got 0x%08x exp 0x1122_3344", rd_data[0]);
        end
        $display("TEST PASS: single-beat full write/read 0x11223344");
        
        axi_full_write_burst(32'h0000_0180, 1, 32'hAA55_FF00, 4'b0101); // update byte0 + byte2 only (expect 0x11553300)
        axi_full_read_burst (32'h0000_0180, 1, rd_data);

        if (rd_data[0] !== 32'h1155_3300) begin
            $fatal(1, "WSTRB mask test failed: got 0x%08x exp 0x11553300", rd_data[0]);
        end
        $display("TEST PASS: WSTRB masked write/read 0x11553300");

        // AXI-full multi-beat burst sweep (self-checking): 2..32 beats.
        for (beats = 2; beats <= 32; beats++) begin
            burst_base = 32'hA5A5_0000 + (beats << 8);
            axi_full_write_burst(32'h0000_0100, beats, burst_base, 4'hF);
            axi_full_read_burst (32'h0000_0100, beats, rd_data);

            for (k = 0; k < beats; k++) begin
                if (rd_data[k] !== (burst_base + k)) begin
                    $fatal(1, "Multi-beat readback failed beats=%0d beat=%0d: got 0x%08x exp 0x%08x",
                           beats, k, rd_data[k], (burst_base + k));
                end
            end
            $display("TEST PASS: %0d-beat full burst write/read", beats);
        end


        $display("TB PASS");
        #1000;
        $finish;
    end

endmodule
