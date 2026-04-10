
// /////////////////////////////////////////////////////////////////
// (c) Copyright 2015 - 2016 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE, and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// ////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------
// design_1_pmcbridge_0_0.v  design_1_pmcbridge_0_0.v
//-----------------------------------------------------------------------------
//
// Filename        : design_1_pmcbridge_0_0.v
// Version         : v1.0
// Description     : AXI32 top module. This module consists logic for............
//
// Verilog-Standard Verilog'2001
//-----------------------------------------------------------------------------
//-- Structure: SWAP
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x"
//      reset signals:                          "rst", "rst_n"
//      parameters:                             "C_*"
//      user defined types:                     "*_TYPE"
//      state machine next state:               "*_ns"
//      state machine current state:            "*_cs"
//      combinatorial signals:                  "*_com"
//      pipelined or register delay signals:    "*_d#"
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce"
//      internal version of output port         "*_i"
//      device pins:                            "*_pin"
//      component instantiations:               "<MODULE>I_<#|FUNC>
//-----------------------------------------------------------------------------

(* HW_HANDOFF = "design_1_pmcbridge_0_0.hwdef" *)
(* DONT_TOUCH = "TRUE" *)
///////////////////////////////////////////////////////////////////////////////
// Module Declaration
///////////////////////////////////////////////////////////////////////////////

module pmcbridge_v1_0_0 (
  input [31:0] S_AXI_araddr,
  input [1:0] S_AXI_arburst,
  input [3:0] S_AXI_arcache,
  input [7:0] S_AXI_arlen,
  input [0:0] S_AXI_arlock,
  input [2:0] S_AXI_arprot,
  input [3:0] S_AXI_arqos,
  input [2:0] S_AXI_arsize,
  input S_AXI_arvalid,
  input S_AXI_clk,
  input [31:0] S_AXI_awaddr,
  input [1:0] S_AXI_awburst,
  input [3:0] S_AXI_awcache,
  input [7:0] S_AXI_awlen,
  input [0:0] S_AXI_awlock,
  input [2:0] S_AXI_awprot,
  input [3:0] S_AXI_awqos,
  input [2:0] S_AXI_awsize,
  input S_AXI_awvalid,
  input S_AXI_bready,
  input S_AXI_rready,
  input [31:0] S_AXI_wdata,
  input S_AXI_wlast,
  input [3:0] S_AXI_wstrb,
  input S_AXI_wvalid,
  input [7:0] ARID,
  input [7:0] WID,
  input [7:0] AWID,

  
  output S_AXI_arready,
  output S_AXI_awready,
  output [1:0] S_AXI_bresp,
  output S_AXI_bvalid,
  output [31:0] S_AXI_rdata,
  output S_AXI_rlast,
  output [1:0] S_AXI_rresp,
  output S_AXI_rvalid,
  output S_AXI_wready
);
 
   AXI32 PMC_AXI32_0 ( 
    .ARREADY (S_AXI_arready),
    .AWREADY (S_AXI_awready),
    .BRESP   (S_AXI_bresp),
    .BVALID  (S_AXI_bvalid),
    .RDATA   (S_AXI_rdata),
    .RLAST   (S_AXI_rlast),
    .RRESP   (S_AXI_rresp),
    .RVALID  (S_AXI_rvalid),
    .WREADY  (S_AXI_wready),
    .ARADDR  (S_AXI_araddr),
    .ARBURST (S_AXI_arburst),
    .ARCACHE (S_AXI_arcache),
    .ARLEN   (S_AXI_arlen),
    .ARLOCK  (S_AXI_arlock),
    .ARPROT  (S_AXI_arprot),
    .ARQOS   (S_AXI_arqos),
    .ARSIZE  (S_AXI_arsize),
    .ARVALID (S_AXI_arvalid),
    .AWADDR  (S_AXI_awaddr),
    .AWBURST (S_AXI_awburst),
    .AWCACHE (S_AXI_awcache),
    .AWLEN   (S_AXI_awlen),
    .AWLOCK  (S_AXI_awlock),
    .AWPROT  (S_AXI_awprot),
    .AWQOS   (S_AXI_awqos), 
    .AWSIZE  (S_AXI_awsize),
    .AWVALID (S_AXI_awvalid),
    .AXICLK  (S_AXI_clk),
    .BREADY  (S_AXI_bready),
    .RREADY  (S_AXI_rready),
    .WDATA   (S_AXI_wdata),
    .WLAST   (S_AXI_wlast),
    .WSTRB   (S_AXI_wstrb),
    .WVALID  (S_AXI_wvalid),
    .WID     ('d0),
    .AWID     ('d0),
    .ARID     ('d0)
);

endmodule

