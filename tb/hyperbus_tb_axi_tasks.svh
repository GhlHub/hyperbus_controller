    // AXI transactor tasks
    task automatic axi_full_write_burst(
        input logic [31:0] addr,
        input int          beats,
        input logic [31:0] base_data,
        input logic [3:0]  strb
    );
        int i;
        begin
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

            for (i = 0; i < beats; i++) begin
                @(negedge axi_aclk);
                s_axi_wdata  <= base_data + i;
                s_axi_wstrb  <= strb;
                s_axi_wlast  <= (i == beats-1);
                s_axi_wvalid <= 1'b1;
                $display("[%0t][TB][AXI-WR] W  addr=0x%08x beat=%0d data=0x%08x strb=0x%1x last=%0d",
                         $time, (addr + (i*4)), i, (base_data + i), strb, (i == beats-1));
                while (!(s_axi_wready && s_axi_wvalid)) begin
                    @(posedge axi_aclk);
                end
                @(negedge axi_aclk);
                s_axi_wvalid <= 1'b0;
            end
            s_axi_wlast <= 1'b0;

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

    // bad_mode:
    // 0 -> assert WLAST one beat early (and deassert on final beat)
    // 1 -> never assert WLAST
    task automatic axi_full_write_burst_bad_wlast(
        input  logic [31:0] addr,
        input  int          beats,
        input  logic [31:0] base_data,
        input  logic [3:0]  strb,
        input  int          bad_mode,
        output logic [1:0]  bresp
    );
        int i;
        logic bad_last;
        begin
            @(posedge axi_aclk);
            s_axi_awaddr  <= addr;
            s_axi_awlen   <= beats-1;
            s_axi_awsize  <= 3'd2;
            s_axi_awburst <= 2'b01;
            s_axi_awvalid <= 1'b1;
            $display("[%0t][TB][AXI-WR-BAD] AW addr=0x%08x beats=%0d mode=%0d", $time, addr, beats, bad_mode);
            `WAIT_AXI_COND(s_axi_awready, "s_axi_awready (bad wlast)")
            @(posedge axi_aclk);
            s_axi_awvalid <= 1'b0;

            for (i = 0; i < beats; i++) begin
                @(negedge axi_aclk);
                s_axi_wdata  <= base_data + i;
                s_axi_wstrb  <= strb;
                case (bad_mode)
                    0: bad_last = (i == (beats - 2));
                    1: bad_last = 1'b0;
                    default: bad_last = (i == beats-1);
                endcase
                s_axi_wlast  <= bad_last;
                s_axi_wvalid <= 1'b1;
                while (!(s_axi_wready && s_axi_wvalid)) begin
                    @(posedge axi_aclk);
                end
                @(negedge axi_aclk);
                s_axi_wvalid <= 1'b0;
            end
            s_axi_wlast <= 1'b0;

            s_axi_bready <= 1'b1;
            `WAIT_AXI_COND(s_axi_bvalid, "s_axi_bvalid (bad wlast)")
            bresp = s_axi_bresp;
            @(posedge axi_aclk);
            s_axi_bready <= 1'b0;
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

    task automatic axil_write_hold_awvalid(
        input logic [15:0] addr,
        input logic [31:0] data,
        input int          hold_cycles
    );
        begin
            @(posedge axi_aclk);
            s_axil_awaddr  <= addr;
            s_axil_awvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_awready, "s_axil_awready (hold-awvalid)")
            repeat (hold_cycles) @(posedge axi_aclk);
            s_axil_awvalid <= 1'b0;

            s_axil_wdata  <= data;
            s_axil_wstrb  <= 4'hF;
            s_axil_wvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_wready, "s_axil_wready (hold-awvalid)")
            @(posedge axi_aclk);
            s_axil_wvalid <= 1'b0;

            s_axil_bready <= 1'b1;
            `WAIT_AXI_COND(s_axil_bvalid, "s_axil_bvalid (hold-awvalid)")
            @(posedge axi_aclk);
            s_axil_bready <= 1'b0;
        end
    endtask

    task automatic axil_read_hold_arvalid(
        input  logic [15:0] addr,
        input  int          hold_cycles,
        output logic [31:0] data
    );
        begin
            @(posedge axi_aclk);
            s_axil_araddr  <= addr;
            s_axil_arvalid <= 1'b1;
            `WAIT_AXI_COND(s_axil_arready, "s_axil_arready (hold-arvalid)")
            repeat (hold_cycles) @(posedge axi_aclk);
            s_axil_arvalid <= 1'b0;

            s_axil_rready <= 1'b1;
            `WAIT_AXI_COND(s_axil_rvalid, "s_axil_rvalid (hold-arvalid)")
            data = s_axil_rdata;
            @(posedge axi_aclk);
            s_axil_rready <= 1'b0;
        end
    endtask
