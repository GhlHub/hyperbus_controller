`timescale 1ns/1ps

module hyperbus_axi_lite_frontend #(
    parameter int AXIL_ADDR_WIDTH = 16,
    parameter int CMD_W = 75
) (
    input  wire                         i_axi_aclk,
    input  wire                         i_axi_aresetn,

    input  wire                         i_aw_pending,
    input  wire                         i_s_axi_arvalid,
    input  wire                         i_s_axi_awvalid,
    input  wire                         i_cmd_fifo_full,

    input  wire [31:0]                  i_axil_rsp_fifo_dout,
    input  wire                         i_axil_rsp_fifo_empty,
    input  wire                         i_axil_rsp_fifo_dout_valid,
    output logic                        o_axil_rsp_fifo_rd_en,

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
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;
    assign axil_w_can_accept  = (axil_state == AXIL_IDLE) && axil_aw_seen &&
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;
    assign axil_ar_can_accept = (axil_state == AXIL_IDLE) && !i_cmd_fifo_full &&
                                !i_aw_pending && !i_s_axi_arvalid && !i_s_axi_awvalid;

    function automatic [31:0] axil_to_hb_addr(input logic [AXIL_ADDR_WIDTH-1:0] a);
        begin
            case (a)
                16'h0000: axil_to_hb_addr = 32'h0000_0000; // ID0
                16'h0002: axil_to_hb_addr = 32'h0000_0002; // ID1
                16'h0800: axil_to_hb_addr = 32'h0000_0800; // CR0
                16'h0802: axil_to_hb_addr = 32'h0000_0802; // CR1
                default:  axil_to_hb_addr = {30'h0, (a[2] | a[1]), 1'b0};
            endcase
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
            axil_awaddr_q <= '0;
            axil_aw_seen <= 1'b0;
            axil_state <= AXIL_IDLE;
            o_axil_rsp_fifo_rd_en <= 1'b0;
            axil_rsp_pop_pending <= 1'b0;
            o_cmd_fifo_wr_en_axil <= 1'b0;
            o_cmd_fifo_din_axil <= '0;
        end else begin
            o_axil_rsp_fifo_rd_en <= 1'b0;
            o_cmd_fifo_wr_en_axil <= 1'b0;

            // Backpressure AXI-Lite command issuance when AXI-Full is actively
            // driving command-issue paths to prevent command FIFO write collisions.
            s_axil_awready <= axil_aw_can_accept;
            s_axil_wready  <= axil_w_can_accept;
            s_axil_arready <= axil_ar_can_accept;

            if (axil_aw_can_accept && s_axil_awvalid) begin
                axil_awaddr_q <= s_axil_awaddr;
                axil_aw_seen <= 1'b1;
            end

            if ((axil_state == AXIL_IDLE) && axil_aw_seen && axil_w_can_accept && s_axil_wvalid && !i_cmd_fifo_full) begin
                o_cmd_fifo_din_axil <= {1'b1, 1'b1, 1'b1, axil_to_hb_addr(axil_awaddr_q), 8'd1, s_axil_wdata};
                o_cmd_fifo_wr_en_axil <= 1'b1;
                axil_aw_seen <= 1'b0;
                axil_state <= AXIL_WR_WAIT_B;
            end

            if (axil_ar_can_accept && s_axil_arvalid) begin
                // For AXI-Lite reads, carry ARADDR[1] in wdata[0] to select return halfword lane.
                o_cmd_fifo_din_axil <= {1'b1, 1'b0, 1'b1, axil_to_hb_addr(s_axil_araddr), 8'd1, {31'h0, s_axil_araddr[1]}};
                o_cmd_fifo_wr_en_axil <= 1'b1;
                axil_state <= AXIL_RD_WAIT_DATA;
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

endmodule
