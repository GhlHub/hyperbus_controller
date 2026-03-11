`timescale 1ns/1ps

module hyperbus_axi_lite_frontend #(
    parameter int AXIL_ADDR_WIDTH = 16,
    parameter int CMD_W = 75
) (
    input  wire                         i_axi_aclk,
    input  wire                         i_axi_aresetn,
    input  wire                         i_req_block,
    input  wire                         i_timeout_holdoff_active,

    input  wire                         i_aw_pending,
    input  wire                         i_s_axi_arvalid,
    input  wire                         i_s_axi_awvalid,
    input  wire                         i_cmd_fifo_full,

    input  wire [31:0]                  i_axil_rsp_fifo_dout,
    input  wire                         i_axil_rsp_fifo_empty,
    input  wire                         i_axil_rsp_fifo_dout_valid,
    input  wire [31:0]                  i_last_hb_read_word32,
    input  wire [5:0]                   i_axif_rwds_cntr,
    input  wire [5:0]                   i_axil_rwds_cntr,
    input  wire [8:0]                   i_odly_cntvalueout,
    input  wire                         i_idelayctrl_rdy_sync,
    output logic                        o_axil_rsp_fifo_rd_en,

    output logic                        o_odly_en_vtc,
    output logic                        o_odly_ce,
    output logic                        o_odly_inc,
    output logic                        o_odly_load,
    output logic [8:0]                  o_odly_cntvaluein,
    output logic                        o_idelayctrl_rst_req,
    output logic                        o_odelay_rst_req,
    output logic                        o_hb_clk_ce_force,

    output logic [CMD_W-1:0]            o_cmd_fifo_din_axil,
    output logic                        o_cmd_fifo_wr_en_axil,

    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_awaddr,
    input  wire                         s_axil_awvalid,
    output logic                        s_axil_awready,
    input  wire [31:0]                  s_axil_wdata,
    input  wire [3:0]                   s_axil_wstrb,
    input  wire                         s_axil_wvalid,
    output logic                        s_axil_wready,
    output logic [1:0]                  s_axil_bresp,
    output logic                        s_axil_bvalid,
    input  wire                         s_axil_bready,

    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_araddr,
    input  wire                         s_axil_arvalid,
    output logic                        s_axil_arready,
    output logic [31:0]                 s_axil_rdata,
    output logic [1:0]                  s_axil_rresp,
    output logic                        s_axil_rvalid,
    input  wire                         s_axil_rready
);
    typedef enum logic [2:0] {
        AXIL_IDLE,
        AXIL_WR_WAIT_B,
        AXIL_RD_WAIT_DATA,
        AXIL_RD_RESP
    } axil_state_t;
    axil_state_t axil_state;

    logic [AXIL_ADDR_WIDTH-1:0] axil_awaddr_q;
    logic axil_aw_seen;
    logic axil_rsp_pop_pending;
    logic axil_aw_can_accept;
    logic axil_w_can_accept;
    logic axil_ar_can_accept;

    assign axil_aw_can_accept = (axil_state == AXIL_IDLE) && !axil_aw_seen &&
                                !i_req_block &&
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;
    assign axil_w_can_accept  = (axil_state == AXIL_IDLE) && axil_aw_seen &&
                                !i_req_block &&
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;
    assign axil_ar_can_accept = (axil_state == AXIL_IDLE) && !i_cmd_fifo_full &&
                                !i_req_block &&
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;

    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_LAST_HB_READ32_ADDR      = 16'h0020;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_VERSION_ADDR             = 16'h0024;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_ERR_STATUS_ADDR          = 16'h0080;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_AXIF_RWDS_CNTR_ADDR      = 16'h0084;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_AXIL_RWDS_CNTR_ADDR      = 16'h0088;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_HB_CLK_CE_FORCE_ADDR     = 16'h008C;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_CK_P_ODELAY_CTRL_ADDR    = 16'h0100;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_CK_P_ODELAY_TIME_ADDR    = 16'h0104;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_CK_P_ODELAY_STATUS_ADDR  = 16'h0108;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_DELAY_RST_CTRL_ADDR      = 16'h0200;
    localparam logic [AXIL_ADDR_WIDTH-1:0] AXIL_IDELAYCTRL_STATUS_ADDR   = 16'h0204;

    logic        odly_en_vtc_q;
    logic        odly_inc_q;
    logic [8:0]  odly_time_value_q;
    logic [1:0]  delay_rst_ctrl_q;
    logic        hb_clk_ce_force_q;
    logic        timeout_status_q;
    logic        timeout_holdoff_d;

    function automatic logic axil_is_local_addr(input logic [AXIL_ADDR_WIDTH-1:0] a);
        begin
            unique case (a)
                AXIL_ERR_STATUS_ADDR,
                AXIL_VERSION_ADDR,
                AXIL_AXIF_RWDS_CNTR_ADDR,
                AXIL_AXIL_RWDS_CNTR_ADDR,
                AXIL_HB_CLK_CE_FORCE_ADDR,
                AXIL_LAST_HB_READ32_ADDR,
                AXIL_CK_P_ODELAY_CTRL_ADDR,
                AXIL_CK_P_ODELAY_TIME_ADDR,
                AXIL_CK_P_ODELAY_STATUS_ADDR,
                AXIL_DELAY_RST_CTRL_ADDR,
                AXIL_IDELAYCTRL_STATUS_ADDR: axil_is_local_addr = 1'b1;
                default:                    axil_is_local_addr = 1'b0;
            endcase
        end
    endfunction

    function automatic logic axil_is_hb_reg_addr(input logic [AXIL_ADDR_WIDTH-1:0] a);
        begin
            // Explicit HyperBus register-space decode only.
            unique case (a)
                16'h0000, // ID0
                16'h0002, // ID1 (16-bit alias)
                16'h0004, // ID1 (word-aligned alias)
                16'h0800, // CR0
                16'h0802, // CR1 (16-bit alias)
                16'h0804: // CR1 (word-aligned alias)
                    axil_is_hb_reg_addr = 1'b1;
                default:
                    axil_is_hb_reg_addr = 1'b0;
            endcase
        end
    endfunction

    function automatic [31:0] apply_wstrb32(
        input logic [31:0] prior,
        input logic [31:0] wdata,
        input logic [3:0]  wstrb
    );
        begin
            apply_wstrb32 = prior;
            if (wstrb[0]) apply_wstrb32[7:0]   = wdata[7:0];
            if (wstrb[1]) apply_wstrb32[15:8]  = wdata[15:8];
            if (wstrb[2]) apply_wstrb32[23:16] = wdata[23:16];
            if (wstrb[3]) apply_wstrb32[31:24] = wdata[31:24];
        end
    endfunction

    function automatic [31:0] axil_to_hb_addr(input logic [AXIL_ADDR_WIDTH-1:0] a);
        begin
            // Map HyperBus 16-bit registers into a 32-bit AXI-Lite address view.
            // This simplifies debug, since common debuggers can use 32-bit accesses
            // without forcing explicit 16-bit transactions.
            case (a)
                16'h0000: axil_to_hb_addr = 32'h0000_0000; // ID0
                16'h0002: axil_to_hb_addr = 32'h0000_0000; // ID1
                16'h0004: axil_to_hb_addr = 32'h0000_0002; // ID1 (word-aligned alias)
                16'h0800: axil_to_hb_addr = 32'h0000_0800; // CR0
                16'h0802: axil_to_hb_addr = 32'h0000_0800; // CR1
                16'h0804: axil_to_hb_addr = 32'h0000_0802; // CR1 (word-aligned alias)
                default:  axil_to_hb_addr = {30'h0, (a[2] | a[1]), 1'b0};
            endcase
        end
    endfunction

    function automatic logic [15:0] axil_wdata_to_word16(
        input logic [31:0] wdata,
        input logic [3:0]  wstrb
    );
        begin
            // 16-bit or 32-bit writes are accepted; for 32-bit writes use low halfword.
            // If only upper halfword strobes are asserted, use upper halfword.
            if (wstrb[1:0] != 2'b00) begin
                axil_wdata_to_word16 = wdata[15:0];
            end else if (wstrb[3:2] != 2'b00) begin
                axil_wdata_to_word16 = wdata[31:16];
            end else begin
                axil_wdata_to_word16 = 16'h0000;
            end
        end
    endfunction

    always_ff @(posedge i_axi_aclk) begin
        if (!i_axi_aresetn) begin
            s_axil_awready <= 1'b0;
            s_axil_wready  <= 1'b0;
            s_axil_bvalid  <= 1'b0;
            s_axil_bresp   <= 2'b00;
            s_axil_arready <= 1'b0;
            s_axil_rvalid  <= 1'b0;
            s_axil_rresp   <= 2'b00;
            s_axil_rdata   <= 32'h0;
            axil_awaddr_q  <= '0;
            axil_aw_seen   <= 1'b0;
            axil_state     <= AXIL_IDLE;
            o_axil_rsp_fifo_rd_en <= 1'b0;
            axil_rsp_pop_pending  <= 1'b0;
            o_cmd_fifo_wr_en_axil <= 1'b0;
            o_cmd_fifo_din_axil   <= '0;
`ifndef SYNTHESIS
            odly_en_vtc_q <= 1'b0;
`else
            odly_en_vtc_q <= 1'b1;
`endif
            odly_inc_q        <= 1'b0;
            odly_time_value_q <= 9'd0;
            // Default asserted: keep IDELAYCTRL and ODELAY in reset until
            // software explicitly sequences release.
            delay_rst_ctrl_q  <= 2'b11;
            hb_clk_ce_force_q <= 1'b1;
            timeout_status_q  <= 1'b0;
            timeout_holdoff_d <= 1'b0;
            o_odly_ce         <= 1'b0;
            o_odly_load       <= 1'b0;
        end else begin
            o_axil_rsp_fifo_rd_en <= 1'b0;
            o_cmd_fifo_wr_en_axil <= 1'b0;
            o_odly_ce <= 1'b0;
            o_odly_load <= 1'b0;
            if (i_timeout_holdoff_active && !timeout_holdoff_d) begin
                timeout_status_q <= 1'b1;
            end
            timeout_holdoff_d <= i_timeout_holdoff_active;

            // Backpressure AXI-Lite command issuance when AXI-Full is actively
            // driving command-issue paths to prevent command FIFO write collisions.
            s_axil_awready <= axil_aw_can_accept;
            s_axil_wready  <= axil_w_can_accept;
            s_axil_arready <= axil_ar_can_accept;

            if (axil_aw_can_accept && s_axil_awvalid) begin
                axil_awaddr_q <= s_axil_awaddr;
                axil_aw_seen <= 1'b1;
            end

            if ((axil_state == AXIL_IDLE) && axil_aw_seen && axil_w_can_accept && s_axil_wvalid) begin
                if (axil_is_local_addr(axil_awaddr_q)) begin
                    logic [31:0] wr32;
                    unique case (axil_awaddr_q)
                        AXIL_ERR_STATUS_ADDR: begin
                            wr32 = apply_wstrb32({31'h0, timeout_status_q}, s_axil_wdata, s_axil_wstrb);
                            if (wr32[0]) timeout_status_q <= 1'b0; // write-1-to-clear
                        end
                        AXIL_CK_P_ODELAY_CTRL_ADDR: begin
                            // TIME/VAR_LOAD mode controls:
                            // bit[0]=EN_VTC (sticky), bit[1]=INC (sticky),
                            // bit[2]=CE (pulse), bit[3]=LOAD (pulse)
                            wr32 = apply_wstrb32({30'h0, odly_inc_q, odly_en_vtc_q}, s_axil_wdata, s_axil_wstrb);
                            odly_en_vtc_q <= wr32[0];
                            odly_inc_q <= wr32[1];
                            if (wr32[2]) o_odly_ce <= 1'b1;
                            if (wr32[3]) o_odly_load <= 1'b1;
                        end
                        AXIL_CK_P_ODELAY_TIME_ADDR: begin
                            wr32 = apply_wstrb32({23'h0, odly_time_value_q}, s_axil_wdata, s_axil_wstrb);
                            odly_time_value_q <= wr32[8:0];
                        end
                        AXIL_DELAY_RST_CTRL_ADDR: begin
                            wr32 = apply_wstrb32({30'h0, delay_rst_ctrl_q}, s_axil_wdata, s_axil_wstrb);
                            delay_rst_ctrl_q <= wr32[1:0];
                        end
                        AXIL_HB_CLK_CE_FORCE_ADDR: begin
                            wr32 = apply_wstrb32({31'h0, hb_clk_ce_force_q}, s_axil_wdata, s_axil_wstrb);
                            hb_clk_ce_force_q <= wr32[0];
                        end
                        default: begin
                            // Read-only local registers acknowledge writes with no side effects.
                        end
                    endcase
                    axil_aw_seen <= 1'b0;
                    s_axil_bresp <= 2'b00;
                    s_axil_bvalid <= 1'b1;
                    axil_state <= AXIL_WR_WAIT_B;
                end else if (axil_is_hb_reg_addr(axil_awaddr_q) && !i_cmd_fifo_full) begin
                    o_cmd_fifo_din_axil <= {1'b1, 1'b1, 1'b1, axil_to_hb_addr(axil_awaddr_q), 8'd1,
                                            {16'h0000, axil_wdata_to_word16(s_axil_wdata, s_axil_wstrb)}};
                    o_cmd_fifo_wr_en_axil <= 1'b1;
                    axil_aw_seen <= 1'b0;
                    axil_state <= AXIL_WR_WAIT_B;
                end else if (!axil_is_hb_reg_addr(axil_awaddr_q)) begin
                    // Unmapped addresses are handled locally with an OKAY response.
                    axil_aw_seen <= 1'b0;
                    s_axil_bresp <= 2'b00;
                    s_axil_bvalid <= 1'b1;
                    axil_state <= AXIL_WR_WAIT_B;
                end
            end

            if (axil_ar_can_accept && s_axil_arvalid) begin
                if (axil_is_local_addr(s_axil_araddr)) begin
                    unique case (s_axil_araddr)
                        AXIL_ERR_STATUS_ADDR:         s_axil_rdata <= {31'h0, timeout_status_q};
                        AXIL_VERSION_ADDR:            s_axil_rdata <= 32'h0100_0001;
                        AXIL_AXIF_RWDS_CNTR_ADDR:     s_axil_rdata <= {26'h0, i_axif_rwds_cntr};
                        AXIL_AXIL_RWDS_CNTR_ADDR:     s_axil_rdata <= {26'h0, i_axil_rwds_cntr};
                        AXIL_HB_CLK_CE_FORCE_ADDR:    s_axil_rdata <= {31'h0, hb_clk_ce_force_q};
                        AXIL_LAST_HB_READ32_ADDR:     s_axil_rdata <= i_last_hb_read_word32;
                        AXIL_CK_P_ODELAY_CTRL_ADDR:   s_axil_rdata <= {27'h0, 1'b0, 1'b0, 1'b0, odly_inc_q, odly_en_vtc_q};
                        AXIL_CK_P_ODELAY_TIME_ADDR:   s_axil_rdata <= {23'h0, odly_time_value_q};
                        AXIL_CK_P_ODELAY_STATUS_ADDR: s_axil_rdata <= {23'h0, i_odly_cntvalueout};
                        AXIL_DELAY_RST_CTRL_ADDR:     s_axil_rdata <= {30'h0, delay_rst_ctrl_q};
                        AXIL_IDELAYCTRL_STATUS_ADDR:  s_axil_rdata <= {31'h0, i_idelayctrl_rdy_sync};
                        default:                      s_axil_rdata <= 32'h0000_0000;
                    endcase
                    s_axil_rresp <= 2'b00;
                    s_axil_rvalid <= 1'b1;
                    axil_state <= AXIL_RD_RESP;
                end else if (axil_is_hb_reg_addr(s_axil_araddr)) begin
                    logic read_dup16;
                    // For AXI-Lite reads, carry:
                    // wdata[0] = lane select (legacy behavior)
                    // wdata[1] = duplicate control (disabled: return 16-bit data with upper bits zero).
                    read_dup16 = 1'b0;
                    o_cmd_fifo_din_axil <= {1'b1, 1'b0, 1'b1, axil_to_hb_addr(s_axil_araddr), 8'd1,
                                            {30'h0, read_dup16, s_axil_araddr[1]}};
                    o_cmd_fifo_wr_en_axil <= 1'b1;
                    axil_state <= AXIL_RD_WAIT_DATA;
                end else begin
                    // Unmapped addresses are handled locally with a zero read response.
                    s_axil_rdata <= 32'h0000_0000;
                    s_axil_rresp <= 2'b00;
                    s_axil_rvalid <= 1'b1;
                    axil_state <= AXIL_RD_RESP;
                end
            end

            if (axil_state == AXIL_WR_WAIT_B) begin
                if (!s_axil_bvalid && !i_axil_rsp_fifo_empty && !axil_rsp_pop_pending) begin
                    o_axil_rsp_fifo_rd_en <= 1'b1;
                    axil_rsp_pop_pending <= 1'b1;
                end
                if (axil_rsp_pop_pending && i_axil_rsp_fifo_dout_valid) begin
                    s_axil_bvalid <= 1'b1;
                    s_axil_bresp <= 2'b00;
                    axil_rsp_pop_pending <= 1'b0;
                end
                if (s_axil_bvalid && s_axil_bready) begin
                    s_axil_bvalid <= 1'b0;
                    axil_state <= AXIL_IDLE;
                end
            end

            if (axil_state == AXIL_RD_WAIT_DATA) begin
                if (!i_axil_rsp_fifo_empty && !axil_rsp_pop_pending) begin
                    o_axil_rsp_fifo_rd_en <= 1'b1;
                    axil_rsp_pop_pending <= 1'b1;
                end
                if (axil_rsp_pop_pending && i_axil_rsp_fifo_dout_valid) begin
                    s_axil_rdata <= i_axil_rsp_fifo_dout;
                    s_axil_rresp <= 2'b00;
                    s_axil_rvalid <= 1'b1;
                    axil_rsp_pop_pending <= 1'b0;
                    axil_state <= AXIL_RD_RESP;
                end
            end

            if (axil_state == AXIL_RD_RESP && s_axil_rvalid && s_axil_rready) begin
                s_axil_rvalid <= 1'b0;
                axil_state <= AXIL_IDLE;
            end
        end
    end

    assign o_odly_en_vtc        = odly_en_vtc_q;
    assign o_odly_inc           = odly_inc_q;
    assign o_odly_cntvaluein    = odly_time_value_q;
    assign o_idelayctrl_rst_req = delay_rst_ctrl_q[0];
    assign o_odelay_rst_req     = delay_rst_ctrl_q[1];
    assign o_hb_clk_ce_force    = hb_clk_ce_force_q;

endmodule
