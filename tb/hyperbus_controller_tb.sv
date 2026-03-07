`timescale 1ns/1ps

module hyperbus_controller_tb;

    localparam int AXI_ADDR_WIDTH  = 32;
    localparam int AXI_DATA_WIDTH  = 32;
    localparam int AXI_ID_WIDTH    = 4;
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
    logic ref_clk300;
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
        .HB_LATENCY_DEFAULT(7)
    ) dut (
        .i_axi_aclk(axi_aclk),
        .i_axi_aresetn(axi_aresetn),
        .i_hb_clk_200(hb_clk_200),
        .i_ref_clk300(ref_clk300),
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
        .o_hb_ck_p(hb_ck_p),
        .o_hb_ck_n(hb_ck_n),
        .io_hb_rwds(hb_rwds),
        .io_hb_dq(hb_dq),
        .o_hb_reset_n(hb_reset_n)
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
        ref_clk300 = 1'b0;
        forever #1.6666666667 ref_clk300 = ~ref_clk300; // 300 MHz
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

    int k;
    int beats;
    int axil_cmd_push_count;
    logic [1:0] bresp_chk;
    logic [31:0] burst_base;
    logic [31:0] rd_data [0:31];

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

        // AXI-Lite register path self-checks (fatal on first mismatch).
        run_axil_self_checks();
        run_axil_hold_valid_stress();

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

        // AXI-full malformed WLAST checks should return SLVERR.
        axi_full_write_burst_bad_wlast(32'h0000_01C0, 4, 32'hD00D_0000, 4'hF, 0, bresp_chk);
        if (bresp_chk !== 2'b10) begin
            $fatal(1, "Bad WLAST (early) expected SLVERR, got BRESP=0x%0h", bresp_chk);
        end
        $display("TEST PASS: bad WLAST early -> SLVERR");

        axi_full_write_burst_bad_wlast(32'h0000_01D0, 4, 32'hD00D_1000, 4'hF, 1, bresp_chk);
        if (bresp_chk !== 2'b10) begin
            $fatal(1, "Bad WLAST (missing final) expected SLVERR, got BRESP=0x%0h", bresp_chk);
        end
        $display("TEST PASS: bad WLAST missing-final -> SLVERR");

        // Simultaneous AW+AR request test: write must be serviced first.
        axi_full_write_burst(32'h0000_01A0, 1, 32'hCAFEBABE, 4'hF);
        axi_full_same_cycle_rw_check(
            32'h0000_01A0, // read old data
            32'h0000_01A4, // write new data
            32'h1234ABCD,
            32'hCAFEBABE
        );

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
