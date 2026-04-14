`timescale 1ns/1ps

module axi_clk_wiz_phase_ctrl #(
    parameter integer AXI_ADDR_WIDTH = 6,
    parameter integer AXI_DATA_WIDTH = 32,
    parameter integer NUM_OUTPUTS    = 7
) (
    input  wire                         s_axi_aclk,
    input  wire                         s_axi_aresetn,
    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  wire                         s_axi_awvalid,
    output reg                          s_axi_awready,
    input  wire [AXI_DATA_WIDTH-1:0]    s_axi_wdata,
    input  wire [(AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input  wire                         s_axi_wvalid,
    output reg                          s_axi_wready,
    output reg  [1:0]                   s_axi_bresp,
    output reg                          s_axi_bvalid,
    input  wire                         s_axi_bready,
    input  wire [AXI_ADDR_WIDTH-1:0]    s_axi_araddr,
    input  wire                         s_axi_arvalid,
    output reg                          s_axi_arready,
    output reg  [AXI_DATA_WIDTH-1:0]    s_axi_rdata,
    output reg  [1:0]                   s_axi_rresp,
    output reg                          s_axi_rvalid,
    input  wire                         s_axi_rready,
    input  wire                         clk_wiz_locked,
    input  wire                         psdone,
    output wire                         psclk,
    output reg                          psen,
    output reg                          psincdec,
    output reg  [2:0]                   phase_target_sel,
    output reg  [NUM_OUTPUTS-1:0]       phase_target_onehot,
    output wire                         irq
);

localparam [AXI_ADDR_WIDTH-1:0] ADDR_CONTROL     = 6'h00;
localparam [AXI_ADDR_WIDTH-1:0] ADDR_STATUS      = 6'h04;
localparam [AXI_ADDR_WIDTH-1:0] ADDR_STEP_COUNT  = 6'h08;
localparam [AXI_ADDR_WIDTH-1:0] ADDR_APPLIED     = 6'h0C;
localparam [AXI_ADDR_WIDTH-1:0] ADDR_INFO        = 6'h10;

localparam [1:0] STATE_IDLE      = 2'd0;
localparam [1:0] STATE_ASSERT_PS = 2'd1;
localparam [1:0] STATE_WAIT_DONE = 2'd2;

localparam [31:0] CORE_VERSION   = 32'h0001_0000;

reg [AXI_ADDR_WIDTH-1:0] awaddr_reg;
reg [AXI_ADDR_WIDTH-1:0] araddr_reg;
reg [AXI_DATA_WIDTH-1:0] wdata_reg;
reg [(AXI_DATA_WIDTH/8)-1:0] wstrb_reg;
reg awaddr_pending;
reg wdata_pending;

reg [31:0] step_count_reg;
reg signed [31:0] last_applied_steps_reg;
reg [31:0] steps_remaining;
reg [2:0]  active_target_sel;
reg        busy_reg;
reg        done_sticky;
reg        error_sticky;
reg        irq_enable;
reg        start_pulse;
reg        psdone_d1;
reg [1:0]  phase_state;

wire psdone_rise;
wire target_in_range;
wire [31:0] info_reg;
wire [31:0] control_reg_value;
wire [31:0] control_reg_write;
integer onehot_idx;

assign psclk = s_axi_aclk;
assign psdone_rise = psdone & ~psdone_d1;
assign target_in_range = ({29'd0, phase_target_sel} < NUM_OUTPUTS);
assign irq = irq_enable & (done_sticky | error_sticky);
assign info_reg = CORE_VERSION | {16'd0, 8'd0, 4'd0, NUM_OUTPUTS[3:0]};
assign control_reg_value = {15'd0, irq_enable, 5'd0, phase_target_sel, 8'd0};
assign control_reg_write = apply_wstrb(control_reg_value, wdata_reg, wstrb_reg);

function [31:0] apply_wstrb;
    input [31:0] current_value;
    input [31:0] write_data;
    input [3:0]  write_strobes;
    integer idx;
    begin
        apply_wstrb = current_value;
        for (idx = 0; idx < 4; idx = idx + 1) begin
            if (write_strobes[idx]) begin
                apply_wstrb[idx*8 +: 8] = write_data[idx*8 +: 8];
            end
        end
    end
endfunction

always @(*) begin
    phase_target_onehot = {NUM_OUTPUTS{1'b0}};
    for (onehot_idx = 0; onehot_idx < NUM_OUTPUTS; onehot_idx = onehot_idx + 1) begin
        if (phase_target_sel == onehot_idx[2:0]) begin
            phase_target_onehot[onehot_idx] = 1'b1;
        end
    end
end

always @(*) begin
    s_axi_rdata = {AXI_DATA_WIDTH{1'b0}};
    case (araddr_reg)
        ADDR_CONTROL: begin
            s_axi_rdata[16]    = irq_enable;
            s_axi_rdata[10:8]  = phase_target_sel;
        end
        ADDR_STATUS: begin
            s_axi_rdata[0]     = busy_reg;
            s_axi_rdata[1]     = done_sticky;
            s_axi_rdata[2]     = error_sticky;
            s_axi_rdata[3]     = clk_wiz_locked;
            s_axi_rdata[4]     = psdone;
            s_axi_rdata[5]     = psincdec;
            s_axi_rdata[10:8]  = active_target_sel;
            s_axi_rdata[31:16] = steps_remaining[15:0];
        end
        ADDR_STEP_COUNT: begin
            s_axi_rdata = step_count_reg;
        end
        ADDR_APPLIED: begin
            s_axi_rdata = last_applied_steps_reg;
        end
        ADDR_INFO: begin
            s_axi_rdata = info_reg;
        end
        default: begin
            s_axi_rdata = {AXI_DATA_WIDTH{1'b0}};
        end
    endcase
end

always @(posedge s_axi_aclk) begin
    if (!s_axi_aresetn) begin
        s_axi_awready           <= 1'b0;
        s_axi_wready            <= 1'b0;
        s_axi_bresp             <= 2'b00;
        s_axi_bvalid            <= 1'b0;
        s_axi_arready           <= 1'b0;
        s_axi_rresp             <= 2'b00;
        s_axi_rvalid            <= 1'b0;
        awaddr_reg              <= {AXI_ADDR_WIDTH{1'b0}};
        araddr_reg              <= {AXI_ADDR_WIDTH{1'b0}};
        wdata_reg               <= {AXI_DATA_WIDTH{1'b0}};
        wstrb_reg               <= {(AXI_DATA_WIDTH/8){1'b0}};
        awaddr_pending          <= 1'b0;
        wdata_pending           <= 1'b0;
        step_count_reg          <= 32'd0;
        last_applied_steps_reg  <= 32'sd0;
        steps_remaining         <= 32'd0;
        phase_target_sel        <= 3'd0;
        active_target_sel       <= 3'd0;
        busy_reg                <= 1'b0;
        done_sticky             <= 1'b0;
        error_sticky            <= 1'b0;
        irq_enable              <= 1'b0;
        start_pulse             <= 1'b0;
        psen                    <= 1'b0;
        psincdec                <= 1'b1;
        psdone_d1               <= 1'b0;
        phase_state             <= STATE_IDLE;
    end else begin
        start_pulse <= 1'b0;
        psdone_d1   <= psdone;

        s_axi_awready <= !awaddr_pending;
        s_axi_wready  <= !wdata_pending;
        s_axi_arready <= !s_axi_rvalid;

        if (!awaddr_pending && s_axi_awvalid) begin
            awaddr_reg     <= {s_axi_awaddr[AXI_ADDR_WIDTH-1:2], 2'b00};
            awaddr_pending <= 1'b1;
        end

        if (!wdata_pending && s_axi_wvalid) begin
            wdata_reg     <= s_axi_wdata;
            wstrb_reg     <= s_axi_wstrb;
            wdata_pending <= 1'b1;
        end

        if (awaddr_pending && wdata_pending && !s_axi_bvalid) begin
            s_axi_bvalid <= 1'b1;
            s_axi_bresp  <= 2'b00;

            case (awaddr_reg)
                ADDR_CONTROL: begin
                    phase_target_sel <= control_reg_write[10:8];
                    irq_enable       <= control_reg_write[16];

                    if (wstrb_reg[0] && wdata_reg[0]) begin
                        start_pulse <= 1'b1;
                    end
                end
                ADDR_STATUS: begin
                    if (wstrb_reg[0] && wdata_reg[1]) begin
                        done_sticky <= 1'b0;
                    end
                    if (wstrb_reg[0] && wdata_reg[2]) begin
                        error_sticky <= 1'b0;
                    end
                end
                ADDR_STEP_COUNT: begin
                    step_count_reg <= apply_wstrb(step_count_reg, wdata_reg, wstrb_reg);
                end
                default: begin
                end
            endcase

            awaddr_pending <= 1'b0;
            wdata_pending  <= 1'b0;
        end

        if (s_axi_bvalid && s_axi_bready) begin
            s_axi_bvalid <= 1'b0;
        end

        if (!s_axi_rvalid && s_axi_arvalid) begin
            araddr_reg    <= {s_axi_araddr[AXI_ADDR_WIDTH-1:2], 2'b00};
            s_axi_rvalid  <= 1'b1;
            s_axi_rresp   <= 2'b00;
        end

        if (s_axi_rvalid && s_axi_rready) begin
            s_axi_rvalid <= 1'b0;
        end

        if (start_pulse) begin
            if (busy_reg) begin
                error_sticky <= 1'b1;
            end else if (!clk_wiz_locked) begin
                error_sticky <= 1'b1;
            end else if (!target_in_range) begin
                error_sticky <= 1'b1;
            end else if (step_count_reg == 32'h8000_0000) begin
                error_sticky <= 1'b1;
            end else if (step_count_reg == 32'd0) begin
                done_sticky            <= 1'b1;
                last_applied_steps_reg <= 32'sd0;
                active_target_sel      <= phase_target_sel;
            end else begin
                busy_reg           <= 1'b1;
                done_sticky        <= 1'b0;
                active_target_sel  <= phase_target_sel;
                psincdec           <= !step_count_reg[31];
                phase_state        <= STATE_ASSERT_PS;
                steps_remaining    <= step_count_reg[31] ? (~step_count_reg + 32'd1) : step_count_reg;
                last_applied_steps_reg <= step_count_reg;
            end
        end

        case (phase_state)
            STATE_IDLE: begin
                psen <= 1'b0;
            end
            STATE_ASSERT_PS: begin
                psen       <= 1'b1;
                phase_state <= STATE_WAIT_DONE;
            end
            STATE_WAIT_DONE: begin
                psen <= 1'b0;
                if (psdone_rise) begin
                    if (steps_remaining <= 32'd1) begin
                        steps_remaining <= 32'd0;
                        busy_reg        <= 1'b0;
                        done_sticky     <= 1'b1;
                        phase_state     <= STATE_IDLE;
                    end else begin
                        steps_remaining <= steps_remaining - 32'd1;
                        phase_state     <= STATE_ASSERT_PS;
                    end
                end
            end
            default: begin
                psen        <= 1'b0;
                phase_state <= STATE_IDLE;
            end
        endcase

    end
end

endmodule
