// SPDX-FileCopyrightText: 2026 Glen Lowe
// SPDX-License-Identifier: Apache-2.0
// Regression: no AXI W handshake may be dropped at a burst boundary.
`timescale 1ns/1ps
module tb_hyperbus_wready_probe;
  reg clk=0; always #5 clk=~clk;
  reg resetn=0, awvalid=0, wvalid=0, wlast=0;
  reg [31:0] awaddr=32'h80000000, wdata=0;
  reg [7:0] awlen=7;
  reg [1:0] burst=1;
  wire awready,wready,enqueue,bvalid,command;
  wire [35:0] fifo_data;
  wire [58:0] command_data;
  integer accepted=0,stored=0,responses=0,command_words=0,expected=0;
  hyperbus_axi_full_frontend dut (
    .i_axi_aclk(clk),.i_axi_aresetn(resetn),.i_req_block(1'b0),
    .i_cmd_fifo_full(1'b0),.i_cmd_fifo_prog_full(1'b0),
    .i_wr_fifo_full(1'b0),.i_wr_fifo_prog_full(1'b0),
    .i_rd_fifo_dout(32'b0),.i_rd_fifo_empty(1'b1),.i_rd_fifo_dout_valid(1'b0),
    .s_axi_awaddr(awaddr),.s_axi_awid(1'b0),.s_axi_awlen(awlen),
    .s_axi_awsize(3'd2),.s_axi_awburst(burst),
    .s_axi_awvalid(awvalid),.s_axi_awready(awready),
    .s_axi_wdata(wdata),.s_axi_wstrb(4'hf),.s_axi_wlast(wlast),
    .s_axi_wvalid(wvalid),.s_axi_wready(wready),.s_axi_bready(1'b1),.s_axi_bvalid(bvalid),
    .s_axi_araddr(32'b0),.s_axi_arid(1'b0),.s_axi_arlen(8'b0),
    .s_axi_arsize(3'd2),.s_axi_arburst(2'b01),.s_axi_arvalid(1'b0),
    .s_axi_rready(1'b1),.o_wr_fifo_wr_en(enqueue),.o_wr_fifo_din(fifo_data),
    .o_cmd_fifo_wr_en_full(command),.o_cmd_fifo_din_full(command_data)
  );
  always @(posedge clk) if(resetn) begin
    if(bvalid) responses=responses+1;
    if(command) command_words=command_words+command_data[23:16];
    if(enqueue) begin
      if(fifo_data[31:0] !== 32'ha0000000+stored) $fatal(1,"FIFO data ordering");
      stored=stored+1;
    end
    if(wvalid&&wready) begin
      accepted=accepted+1;
      if(!enqueue) begin
        $fatal(1,"LOST AXI BEAT: accepted=%0d stored=%0d",accepted,stored);
      end
    end
  end
  task automatic send_burst(input integer count,input bit wrap);
    awlen=count-1;burst=wrap?2:1;awaddr=32'h80000004;awvalid=1;wvalid=1;
    fork
      begin
        do @(posedge clk); while(!awready);
        @(negedge clk);awvalid=0;
      end
      begin
        for(integer i=0;i<count;i=i+1) begin
          wdata=32'ha0000000+expected;wlast=(i==count-1);
          do @(posedge clk); while(!wready);
          expected=expected+1;
          @(negedge clk);
        end
      end
    join
  endtask
  initial begin
    repeat(3) @(negedge clk);resetn=1;
    send_burst(8,0);send_burst(8,0);send_burst(1,0);send_burst(32,0);
    send_burst(2,1);send_burst(4,1);send_burst(8,1);send_burst(16,1);
    wvalid=0;wlast=0;
    repeat(15) @(negedge clk);
    if(accepted!=79||stored!=79||command_words!=79||responses!=8)
      $fatal(1,"Counts accepted=%0d stored=%0d command_words=%0d responses=%0d",accepted,stored,command_words,responses);
    $display("PASS: 79 AXI beats stored exactly once; 8 INCR/WRAP bursts completed");
    $finish;
  end
  initial begin #20000; $fatal(1,"Timeout"); end
endmodule
