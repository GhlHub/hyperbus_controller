// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Apr 11 13:56:24 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_e_uart_0_0 -prefix
//               design_1_e_uart_0_0_ design_1_e_uart_0_0_sim_netlist.v
// Design      : design_1_e_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_e_uart_0_0,e_uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "e_uart,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_e_uart_0_0
   (txd,
    rxd,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    intr,
    int_status);
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) (* X_INTERFACE_MODE = "master" *) output txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input rxd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output intr;
  output [4:0]int_status;

  wire \<const0> ;
  wire [4:0]int_status;
  wire intr;
  wire rxd;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire txd;
  wire [1:0]NLW_inst_s00_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s00_axi_rresp_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S00_AXI_ADDR_WIDTH = "6" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  design_1_e_uart_0_0_e_uart inst
       (.int_status(int_status),
        .intr(intr),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr({s00_axi_araddr[5:2],1'b0,1'b0}),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr({s00_axi_awaddr[5:2],1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(NLW_inst_s00_axi_bresp_UNCONNECTED[1:0]),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(NLW_inst_s00_axi_rresp_UNCONNECTED[1:0]),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .txd(txd));
endmodule

(* C_S00_AXI_ADDR_WIDTH = "6" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
module design_1_e_uart_0_0_e_uart
   (txd,
    rxd,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    intr,
    int_status);
  output txd;
  input rxd;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output intr;
  output [4:0]int_status;

  wire \<const0> ;
  wire [12:0]baud_clk_cnt;
  wire [10:10]byte_time_cntr;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_1;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_100;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_101;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_85;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_86;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_88;
  wire e_uart_slave_lite_v1_0_S00_AXI_inst_n_99;
  wire [4:0]int_status;
  wire intr;
  wire [9:0]over_sample_clk_cnt;
  wire [10:0]rx_byte_count;
  wire [7:0]rx_byte_host;
  wire rx_byte_host_rd;
  wire rx_empty;
  wire rx_en;
  wire [10:0]rx_int_holdoff_byte_cnt;
  wire [10:0]rx_int_holdoff_byte_time_cnt;
  wire rx_time_coal_intr_clr;
  wire rxd;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [4:0]slv_reg5;
  wire [10:0]tx_byte_count;
  wire [7:0]tx_byte_host;
  wire tx_byte_host_dv;
  wire tx_en;
  wire txd;
  wire [3:3]\uart_rx/p_0_in ;
  wire uart_top_n_35;
  wire uart_top_n_38;
  wire uart_top_n_40;
  wire [3:3]\uart_tx/p_0_in ;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI e_uart_slave_lite_v1_0_S00_AXI_inst
       (.D(rx_byte_host),
        .Q(slv_reg5),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_99),
        .SR(\uart_tx/p_0_in ),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_bvalid_reg_0(s00_axi_bvalid),
        .axi_rvalid_reg_0(s00_axi_rvalid),
        .byte_time_cntr_en2_carry(byte_time_cntr),
        .data_count(rx_byte_count),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_38),
        .int_status({int_status[3],int_status[1:0]}),
        .intr(intr),
        .intr_reg_0(uart_top_n_40),
        .p_0_in(\uart_rx/p_0_in ),
        .rd_en(rx_byte_host_rd),
        .rx_empty(rx_empty),
        .rx_samples_reg_s_2(uart_top_n_35),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .rx_time_coal_intr_clr_reg_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_88),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(e_uart_slave_lite_v1_0_S00_AXI_inst_n_85),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_rdata(s00_axi_rdata),
        .\s00_axi_rdata[10] (tx_byte_count),
        .s00_axi_rdata_4_sp_1(int_status[4]),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg10_reg[26]_0 ({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .\slv_reg10_reg[26]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_100),
        .\slv_reg6_reg[1]_0 ({rx_en,tx_en}),
        .\slv_reg6_reg[1]_1 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_86),
        .\slv_reg6_reg[1]_2 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_101),
        .\slv_reg8_reg[12]_0 (baud_clk_cnt),
        .\slv_reg9_reg[9]_0 (over_sample_clk_cnt),
        .srst(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .\tx_byte_host_reg[7]_0 (tx_byte_host),
        .wr_en(tx_byte_host_dv));
  design_1_e_uart_0_0_uart_top uart_top
       (.\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (tx_byte_host),
        .Q(byte_time_cntr),
        .S(e_uart_slave_lite_v1_0_S00_AXI_inst_n_99),
        .SR(\uart_tx/p_0_in ),
        .\byte_time_cntr_reg[0] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_88),
        .\clk_cntr_reg[11] (baud_clk_cnt),
        .\count_reg[10] (rx_byte_count),
        .data_count(tx_byte_count),
        .dout(rx_byte_host),
        .\dv_inhibit_cntr_reg[4] (uart_top_n_38),
        .\dv_inhibit_cntr_reg[4]_0 (e_uart_slave_lite_v1_0_S00_AXI_inst_n_86),
        .\en_dly_reg[0] ({rx_en,tx_en}),
        .int_status(int_status),
        .intr_reg(slv_reg5),
        .p_0_in(\uart_rx/p_0_in ),
        .rd_en(rx_byte_host_rd),
        .rx_byte_cnt_coal_intr1_carry({rx_int_holdoff_byte_cnt,rx_int_holdoff_byte_time_cnt}),
        .rx_byte_cnt_coal_intr_reg(e_uart_slave_lite_v1_0_S00_AXI_inst_n_100),
        .rx_empty(rx_empty),
        .rx_samples_reg_s_2(e_uart_slave_lite_v1_0_S00_AXI_inst_n_101),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[8] (uart_top_n_35),
        .\sample_clk_cntr_reg[9] (over_sample_clk_cnt),
        .\slv_reg5_reg[2] (uart_top_n_40),
        .srst(e_uart_slave_lite_v1_0_S00_AXI_inst_n_1),
        .\tx_bit_cntr_reg[2] (e_uart_slave_lite_v1_0_S00_AXI_inst_n_85),
        .txd(txd),
        .wr_en(tx_byte_host_dv));
endmodule

module design_1_e_uart_0_0_e_uart_slave_lite_v1_0_S00_AXI
   (s00_axi_wready,
    srst,
    s00_axi_awready,
    intr,
    rd_en,
    axi_bvalid_reg_0,
    rx_time_coal_intr_clr,
    wr_en,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_rdata,
    Q,
    \slv_reg8_reg[12]_0 ,
    \slv_reg10_reg[26]_0 ,
    SR,
    \slv_reg6_reg[1]_0 ,
    s00_axi_aresetn_0,
    \slv_reg6_reg[1]_1 ,
    p_0_in,
    rx_time_coal_intr_clr_reg_0,
    \slv_reg9_reg[9]_0 ,
    S,
    \slv_reg10_reg[26]_1 ,
    \slv_reg6_reg[1]_2 ,
    \tx_byte_host_reg[7]_0 ,
    s00_axi_aclk,
    intr_reg_0,
    s00_axi_aresetn,
    D,
    s00_axi_rdata_4_sp_1,
    int_status,
    rx_empty,
    data_count,
    \s00_axi_rdata[10] ,
    s00_axi_arvalid,
    s00_axi_rready,
    \dv_inhibit_cntr_reg[4] ,
    byte_time_cntr_en2_carry,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    rx_samples_reg_s_2,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_araddr);
  output s00_axi_wready;
  output srst;
  output s00_axi_awready;
  output intr;
  output rd_en;
  output axi_bvalid_reg_0;
  output rx_time_coal_intr_clr;
  output wr_en;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output [31:0]s00_axi_rdata;
  output [4:0]Q;
  output [12:0]\slv_reg8_reg[12]_0 ;
  output [21:0]\slv_reg10_reg[26]_0 ;
  output [0:0]SR;
  output [1:0]\slv_reg6_reg[1]_0 ;
  output s00_axi_aresetn_0;
  output \slv_reg6_reg[1]_1 ;
  output [0:0]p_0_in;
  output [0:0]rx_time_coal_intr_clr_reg_0;
  output [9:0]\slv_reg9_reg[9]_0 ;
  output [0:0]S;
  output [0:0]\slv_reg10_reg[26]_1 ;
  output \slv_reg6_reg[1]_2 ;
  output [7:0]\tx_byte_host_reg[7]_0 ;
  input s00_axi_aclk;
  input intr_reg_0;
  input s00_axi_aresetn;
  input [7:0]D;
  input s00_axi_rdata_4_sp_1;
  input [2:0]int_status;
  input rx_empty;
  input [10:0]data_count;
  input [10:0]\s00_axi_rdata[10] ;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input \dv_inhibit_cntr_reg[4] ;
  input [0:0]byte_time_cntr_en2_carry;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input rx_samples_reg_s_2;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;

  wire [7:0]D;
  wire \FSM_onehot_read_state[1]_i_1_n_0 ;
  wire \FSM_onehot_read_state[2]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_1_n_0 ;
  wire \FSM_onehot_read_state[3]_i_2_n_0 ;
  wire \FSM_onehot_read_state_reg_n_0_[0] ;
  wire \FSM_onehot_read_state_reg_n_0_[1] ;
  wire \FSM_onehot_read_state_reg_n_0_[2] ;
  wire \FSM_onehot_read_state_reg_n_0_[3] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_i_2_n_0;
  wire axi_arready_reg_0;
  wire axi_awaddr0;
  wire axi_awaddr_valid;
  wire axi_awaddr_valid_i_1_n_0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_i_2_n_0;
  wire axi_rvalid_i_3_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wdata0;
  wire \axi_wdata_reg_n_0_[0] ;
  wire \axi_wdata_reg_n_0_[10] ;
  wire \axi_wdata_reg_n_0_[11] ;
  wire \axi_wdata_reg_n_0_[12] ;
  wire \axi_wdata_reg_n_0_[13] ;
  wire \axi_wdata_reg_n_0_[14] ;
  wire \axi_wdata_reg_n_0_[15] ;
  wire \axi_wdata_reg_n_0_[16] ;
  wire \axi_wdata_reg_n_0_[17] ;
  wire \axi_wdata_reg_n_0_[18] ;
  wire \axi_wdata_reg_n_0_[19] ;
  wire \axi_wdata_reg_n_0_[1] ;
  wire \axi_wdata_reg_n_0_[20] ;
  wire \axi_wdata_reg_n_0_[21] ;
  wire \axi_wdata_reg_n_0_[22] ;
  wire \axi_wdata_reg_n_0_[23] ;
  wire \axi_wdata_reg_n_0_[24] ;
  wire \axi_wdata_reg_n_0_[25] ;
  wire \axi_wdata_reg_n_0_[26] ;
  wire \axi_wdata_reg_n_0_[27] ;
  wire \axi_wdata_reg_n_0_[28] ;
  wire \axi_wdata_reg_n_0_[29] ;
  wire \axi_wdata_reg_n_0_[2] ;
  wire \axi_wdata_reg_n_0_[30] ;
  wire \axi_wdata_reg_n_0_[31] ;
  wire \axi_wdata_reg_n_0_[3] ;
  wire \axi_wdata_reg_n_0_[5] ;
  wire \axi_wdata_reg_n_0_[6] ;
  wire \axi_wdata_reg_n_0_[7] ;
  wire \axi_wdata_reg_n_0_[8] ;
  wire \axi_wdata_reg_n_0_[9] ;
  wire axi_wdata_valid;
  wire axi_wdata_valid_i_2_n_0;
  wire axi_wdata_valid_reg_n_0;
  wire axi_wready0;
  wire \axi_wstrb_reg_n_0_[2] ;
  wire \axi_wstrb_reg_n_0_[3] ;
  wire [1:0]byte_cntr;
  wire \byte_cntr[0]_i_1_n_0 ;
  wire \byte_cntr[1]_i_1_n_0 ;
  wire \byte_cntr[1]_i_2_n_0 ;
  wire [0:0]byte_time_cntr_en2_carry;
  wire [10:0]data_count;
  wire \dv_inhibit_cntr_reg[4] ;
  wire [2:0]int_status;
  wire intr;
  wire intr_reg_0;
  wire \is_reg0_wr[0]_i_2_n_0 ;
  wire \is_reg0_wr_reg_n_0_[0] ;
  wire \is_reg0_wr_reg_n_0_[1] ;
  wire [0:0]is_reg1_wr;
  wire \is_reg1_wr[0]_i_1_n_0 ;
  wire \is_reg1_wr_reg_n_0_[0] ;
  wire \is_reg1_wr_reg_n_0_[1] ;
  wire is_reg3;
  wire is_reg3_prev;
  wire [0:0]p_0_in;
  wire p_0_in0;
  wire p_0_in4_in;
  wire [3:0]p_0_in_0;
  wire p_1_in;
  wire [12:7]p_1_in__0;
  wire [1:0]rd_byte_cntr;
  wire \rd_byte_cntr[0]_i_1_n_0 ;
  wire \rd_byte_cntr[1]_i_1_n_0 ;
  wire \rd_byte_cntr[1]_i_2_n_0 ;
  wire \rd_byte_cntr[1]_i_3_n_0 ;
  wire rd_en;
  wire rx_byte_host_rd_i_1_n_0;
  wire rx_byte_host_rd_i_2_n_0;
  wire rx_byte_host_rd_i_3_n_0;
  wire rx_byte_host_rd_i_4_n_0;
  wire rx_byte_host_rd_i_5_n_0;
  wire rx_empty;
  wire rx_samples_reg_s_2;
  wire rx_time_coal_intr_clr;
  wire rx_time_coal_intr_clr_i_1_n_0;
  wire rx_time_coal_intr_clr_i_2_n_0;
  wire [0:0]rx_time_coal_intr_clr_reg_0;
  wire [31:0]rx_word_host;
  wire [31:7]rx_word_host0_in;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire [10:0]\s00_axi_rdata[10] ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire s00_axi_rdata_4_sn_1;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg10[10]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[26]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [21:0]\slv_reg10_reg[26]_0 ;
  wire [0:0]\slv_reg10_reg[26]_1 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg5[4]_i_1_n_0 ;
  wire \slv_reg6[1]_i_1_n_0 ;
  wire [1:0]\slv_reg6_reg[1]_0 ;
  wire \slv_reg6_reg[1]_1 ;
  wire \slv_reg6_reg[1]_2 ;
  wire [12:0]\slv_reg8_reg[12]_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire \slv_reg9[9]_i_1_n_0 ;
  wire [9:0]\slv_reg9_reg[9]_0 ;
  wire slv_reg_wren;
  wire srst;
  wire \tx_byte_host[0]_i_1_n_0 ;
  wire \tx_byte_host[0]_i_2_n_0 ;
  wire \tx_byte_host[1]_i_1_n_0 ;
  wire \tx_byte_host[1]_i_2_n_0 ;
  wire \tx_byte_host[2]_i_1_n_0 ;
  wire \tx_byte_host[2]_i_2_n_0 ;
  wire \tx_byte_host[3]_i_1_n_0 ;
  wire \tx_byte_host[3]_i_2_n_0 ;
  wire \tx_byte_host[4]_i_1_n_0 ;
  wire \tx_byte_host[4]_i_2_n_0 ;
  wire \tx_byte_host[5]_i_1_n_0 ;
  wire \tx_byte_host[5]_i_2_n_0 ;
  wire \tx_byte_host[6]_i_1_n_0 ;
  wire \tx_byte_host[6]_i_2_n_0 ;
  wire \tx_byte_host[7]_i_1_n_0 ;
  wire \tx_byte_host[7]_i_2_n_0 ;
  wire tx_byte_host_dv_i_1_n_0;
  wire [7:0]\tx_byte_host_reg[7]_0 ;
  wire word_rd_active;
  wire word_rd_active_i_1_n_0;
  wire word_wr_active__0;
  wire word_wr_active_i_1_n_0;
  wire wr_en;
  wire [3:0]write_index;

  assign s00_axi_rdata_4_sn_1 = s00_axi_rdata_4_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_read_state[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_arready_i_2_n_0),
        .O(\FSM_onehot_read_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_read_state[2]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .O(\FSM_onehot_read_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_read_state[3]_i_1 
       (.I0(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_rvalid_i_2_n_0),
        .O(\FSM_onehot_read_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_read_state[3]_i_2 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(\FSM_onehot_read_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_read_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_read_state_reg_n_0_[0] ),
        .S(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[1] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[2] ),
        .R(srst));
  (* FSM_ENCODED_STATES = "Idle:0001,Raddr_Latched:0100,Rdata:1000,Raddr:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_read_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_read_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_read_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_read_state_reg_n_0_[3] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [0]),
        .I1(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_araddr[5]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(s00_axi_aresetn),
        .O(\axi_araddr[5]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF2A)) 
    axi_arready_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_read_state_reg_n_0_[1] ),
        .I3(axi_arready_i_2_n_0),
        .O(axi_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    axi_arready_i_2
       (.I0(\FSM_onehot_read_state_reg_n_0_[0] ),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .I3(\FSM_onehot_read_state_reg_n_0_[3] ),
        .O(axi_arready_i_2_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(srst));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[5]_i_1 
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .O(axi_awaddr0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[0]),
        .Q(write_index[0]),
        .R(srst));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[1]),
        .Q(write_index[1]),
        .R(srst));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[2]),
        .Q(write_index[2]),
        .R(srst));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr0),
        .D(s00_axi_awaddr[3]),
        .Q(write_index[3]),
        .R(srst));
  LUT3 #(
    .INIT(8'hF8)) 
    axi_awaddr_valid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_awready),
        .I2(axi_awaddr_valid),
        .O(axi_awaddr_valid_i_1_n_0));
  FDRE axi_awaddr_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awaddr_valid_i_1_n_0),
        .Q(axi_awaddr_valid),
        .R(axi_wdata_valid));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(srst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_awready_i_2
       (.I0(axi_bvalid_reg_0),
        .I1(axi_awaddr_valid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(axi_awaddr_valid),
        .I2(axi_wdata_valid_reg_n_0),
        .I3(axi_bvalid_reg_0),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF4C)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I3(axi_rvalid_i_2_n_0),
        .O(axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFEFEF00000000)) 
    axi_rvalid_i_2
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(axi_rvalid_i_3_n_0),
        .I3(rd_byte_cntr[1]),
        .I4(rd_byte_cntr[0]),
        .I5(\FSM_onehot_read_state_reg_n_0_[2] ),
        .O(axi_rvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_rvalid_i_3
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(axi_rvalid_i_3_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(srst));
  FDRE \axi_wdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[0]),
        .Q(\axi_wdata_reg_n_0_[0] ),
        .R(srst));
  FDRE \axi_wdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[10]),
        .Q(\axi_wdata_reg_n_0_[10] ),
        .R(srst));
  FDRE \axi_wdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[11]),
        .Q(\axi_wdata_reg_n_0_[11] ),
        .R(srst));
  FDRE \axi_wdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[12]),
        .Q(\axi_wdata_reg_n_0_[12] ),
        .R(srst));
  FDRE \axi_wdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[13]),
        .Q(\axi_wdata_reg_n_0_[13] ),
        .R(srst));
  FDRE \axi_wdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[14]),
        .Q(\axi_wdata_reg_n_0_[14] ),
        .R(srst));
  FDRE \axi_wdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[15]),
        .Q(\axi_wdata_reg_n_0_[15] ),
        .R(srst));
  FDRE \axi_wdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[16]),
        .Q(\axi_wdata_reg_n_0_[16] ),
        .R(srst));
  FDRE \axi_wdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[17]),
        .Q(\axi_wdata_reg_n_0_[17] ),
        .R(srst));
  FDRE \axi_wdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[18]),
        .Q(\axi_wdata_reg_n_0_[18] ),
        .R(srst));
  FDRE \axi_wdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[19]),
        .Q(\axi_wdata_reg_n_0_[19] ),
        .R(srst));
  FDRE \axi_wdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[1]),
        .Q(\axi_wdata_reg_n_0_[1] ),
        .R(srst));
  FDRE \axi_wdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[20]),
        .Q(\axi_wdata_reg_n_0_[20] ),
        .R(srst));
  FDRE \axi_wdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[21]),
        .Q(\axi_wdata_reg_n_0_[21] ),
        .R(srst));
  FDRE \axi_wdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[22]),
        .Q(\axi_wdata_reg_n_0_[22] ),
        .R(srst));
  FDRE \axi_wdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[23]),
        .Q(\axi_wdata_reg_n_0_[23] ),
        .R(srst));
  FDRE \axi_wdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[24]),
        .Q(\axi_wdata_reg_n_0_[24] ),
        .R(srst));
  FDRE \axi_wdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[25]),
        .Q(\axi_wdata_reg_n_0_[25] ),
        .R(srst));
  FDRE \axi_wdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[26]),
        .Q(\axi_wdata_reg_n_0_[26] ),
        .R(srst));
  FDRE \axi_wdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[27]),
        .Q(\axi_wdata_reg_n_0_[27] ),
        .R(srst));
  FDRE \axi_wdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[28]),
        .Q(\axi_wdata_reg_n_0_[28] ),
        .R(srst));
  FDRE \axi_wdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[29]),
        .Q(\axi_wdata_reg_n_0_[29] ),
        .R(srst));
  FDRE \axi_wdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[2]),
        .Q(\axi_wdata_reg_n_0_[2] ),
        .R(srst));
  FDRE \axi_wdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[30]),
        .Q(\axi_wdata_reg_n_0_[30] ),
        .R(srst));
  FDRE \axi_wdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[31]),
        .Q(\axi_wdata_reg_n_0_[31] ),
        .R(srst));
  FDRE \axi_wdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[3]),
        .Q(\axi_wdata_reg_n_0_[3] ),
        .R(srst));
  FDRE \axi_wdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[4]),
        .Q(p_0_in4_in),
        .R(srst));
  FDRE \axi_wdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[5]),
        .Q(\axi_wdata_reg_n_0_[5] ),
        .R(srst));
  FDRE \axi_wdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[6]),
        .Q(\axi_wdata_reg_n_0_[6] ),
        .R(srst));
  FDRE \axi_wdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[7]),
        .Q(\axi_wdata_reg_n_0_[7] ),
        .R(srst));
  FDRE \axi_wdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[8]),
        .Q(\axi_wdata_reg_n_0_[8] ),
        .R(srst));
  FDRE \axi_wdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wdata[9]),
        .Q(\axi_wdata_reg_n_0_[9] ),
        .R(srst));
  LUT4 #(
    .INIT(16'h08FF)) 
    axi_wdata_valid_i_1
       (.I0(axi_awaddr_valid),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_aresetn),
        .O(axi_wdata_valid));
  LUT3 #(
    .INIT(8'hF8)) 
    axi_wdata_valid_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wready),
        .I2(axi_wdata_valid_reg_n_0),
        .O(axi_wdata_valid_i_2_n_0));
  FDRE axi_wdata_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_valid_i_2_n_0),
        .Q(axi_wdata_valid_reg_n_0),
        .R(axi_wdata_valid));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_wready_i_1
       (.I0(axi_bvalid_reg_0),
        .I1(axi_wdata_valid_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(srst));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_wstrb[3]_i_1 
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .O(axi_wdata0));
  FDRE \axi_wstrb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[0]),
        .Q(p_1_in),
        .R(srst));
  FDRE \axi_wstrb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[1]),
        .Q(p_0_in0),
        .R(srst));
  FDRE \axi_wstrb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[2]),
        .Q(\axi_wstrb_reg_n_0_[2] ),
        .R(srst));
  FDRE \axi_wstrb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_wdata0),
        .D(s00_axi_wstrb[3]),
        .Q(\axi_wstrb_reg_n_0_[3] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \byte_cntr[0]_i_1 
       (.I0(byte_cntr[0]),
        .I1(s00_axi_aresetn),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(\is_reg1_wr_reg_n_0_[0] ),
        .O(\byte_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFFFFFEAFFEAFF)) 
    \byte_cntr[1]_i_1 
       (.I0(word_wr_active__0),
        .I1(byte_cntr[1]),
        .I2(byte_cntr[0]),
        .I3(s00_axi_aresetn),
        .I4(\is_reg1_wr_reg_n_0_[1] ),
        .I5(\is_reg1_wr_reg_n_0_[0] ),
        .O(\byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h008A8A00)) 
    \byte_cntr[1]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(\is_reg1_wr_reg_n_0_[1] ),
        .I2(\is_reg1_wr_reg_n_0_[0] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .O(\byte_cntr[1]_i_2_n_0 ));
  FDRE \byte_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\byte_cntr[1]_i_1_n_0 ),
        .D(\byte_cntr[0]_i_1_n_0 ),
        .Q(byte_cntr[0]),
        .R(1'b0));
  FDRE \byte_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\byte_cntr[1]_i_1_n_0 ),
        .D(\byte_cntr[1]_i_2_n_0 ),
        .Q(byte_cntr[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \byte_time_cntr[10]_i_1 
       (.I0(rx_time_coal_intr_clr),
        .I1(s00_axi_aresetn),
        .O(rx_time_coal_intr_clr_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    byte_time_cntr_en2_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [10]),
        .I1(byte_time_cntr_en2_carry),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dv_inhibit_cntr[4]_i_2 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4] ),
        .O(\slv_reg6_reg[1]_1 ));
  FDRE intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(intr_reg_0),
        .Q(intr),
        .R(srst));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \is_reg0_wr[0]_i_1 
       (.I0(axi_awaddr_valid),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_bvalid_reg_0),
        .I3(s00_axi_aresetn),
        .O(is_reg1_wr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \is_reg0_wr[0]_i_2 
       (.I0(write_index[3]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(write_index[1]),
        .O(\is_reg0_wr[0]_i_2_n_0 ));
  FDRE \is_reg0_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg0_wr[0]_i_2_n_0 ),
        .Q(\is_reg0_wr_reg_n_0_[0] ),
        .R(is_reg1_wr));
  FDRE \is_reg0_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg0_wr_reg_n_0_[0] ),
        .Q(\is_reg0_wr_reg_n_0_[1] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \is_reg1_wr[0]_i_1 
       (.I0(write_index[3]),
        .I1(write_index[0]),
        .I2(write_index[2]),
        .I3(write_index[1]),
        .O(\is_reg1_wr[0]_i_1_n_0 ));
  FDRE \is_reg1_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg1_wr[0]_i_1_n_0 ),
        .Q(\is_reg1_wr_reg_n_0_[0] ),
        .R(is_reg1_wr));
  FDRE \is_reg1_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\is_reg1_wr_reg_n_0_[0] ),
        .Q(\is_reg1_wr_reg_n_0_[1] ),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    is_reg3_prev_i_1
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .O(is_reg3));
  FDRE is_reg3_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(is_reg3),
        .Q(is_reg3_prev),
        .R(srst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rd_byte_cntr[0]_i_1 
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(rd_byte_cntr[0]),
        .I2(s00_axi_aresetn),
        .O(\rd_byte_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEFFFF)) 
    \rd_byte_cntr[1]_i_1 
       (.I0(word_rd_active),
        .I1(\rd_byte_cntr[1]_i_3_n_0 ),
        .I2(rd_byte_cntr[0]),
        .I3(rd_byte_cntr[1]),
        .I4(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h14FF)) 
    \rd_byte_cntr[1]_i_2 
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(rd_byte_cntr[0]),
        .I2(rd_byte_cntr[1]),
        .I3(s00_axi_aresetn),
        .O(\rd_byte_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \rd_byte_cntr[1]_i_3 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(\FSM_onehot_read_state_reg_n_0_[2] ),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .I5(is_reg3_prev),
        .O(\rd_byte_cntr[1]_i_3_n_0 ));
  FDRE \rd_byte_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rd_byte_cntr[1]_i_1_n_0 ),
        .D(\rd_byte_cntr[0]_i_1_n_0 ),
        .Q(rd_byte_cntr[0]),
        .R(1'b0));
  FDRE \rd_byte_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rd_byte_cntr[1]_i_1_n_0 ),
        .D(\rd_byte_cntr[1]_i_2_n_0 ),
        .Q(rd_byte_cntr[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_byte_cnt_coal_intr1_carry_i_7
       (.I0(\slv_reg10_reg[26]_0 [21]),
        .I1(data_count[10]),
        .O(\slv_reg10_reg[26]_1 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    rx_byte_host_rd_i_1
       (.I0(\rd_byte_cntr[1]_i_3_n_0 ),
        .I1(word_rd_active),
        .I2(rx_byte_host_rd_i_2_n_0),
        .I3(rx_byte_host_rd_i_3_n_0),
        .I4(rx_byte_host_rd_i_4_n_0),
        .I5(rx_byte_host_rd_i_5_n_0),
        .O(rx_byte_host_rd_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rx_byte_host_rd_i_2
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .O(rx_byte_host_rd_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_byte_host_rd_i_3
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(rx_byte_host_rd_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    rx_byte_host_rd_i_4
       (.I0(\FSM_onehot_read_state_reg_n_0_[3] ),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .O(rx_byte_host_rd_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_byte_host_rd_i_5
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .O(rx_byte_host_rd_i_5_n_0));
  FDRE rx_byte_host_rd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_host_rd_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    rx_time_coal_intr_clr_i_1
       (.I0(slv_reg_wren),
        .I1(write_index[1]),
        .I2(p_0_in4_in),
        .I3(s00_axi_aresetn),
        .I4(write_index[2]),
        .I5(rx_time_coal_intr_clr_i_2_n_0),
        .O(rx_time_coal_intr_clr_i_1_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    rx_time_coal_intr_clr_i_2
       (.I0(write_index[0]),
        .I1(write_index[3]),
        .I2(p_1_in),
        .O(rx_time_coal_intr_clr_i_2_n_0));
  FDRE rx_time_coal_intr_clr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_time_coal_intr_clr_i_1_n_0),
        .Q(rx_time_coal_intr_clr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \rx_word_host[15]_i_1 
       (.I0(rd_byte_cntr[1]),
        .I1(rd_byte_cntr[0]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[15]));
  LUT3 #(
    .INIT(8'h40)) 
    \rx_word_host[23]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[23]));
  LUT3 #(
    .INIT(8'h80)) 
    \rx_word_host[31]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[31]));
  LUT3 #(
    .INIT(8'h10)) 
    \rx_word_host[7]_i_1 
       (.I0(rd_byte_cntr[0]),
        .I1(rd_byte_cntr[1]),
        .I2(word_rd_active),
        .O(rx_word_host0_in[7]));
  FDRE \rx_word_host_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[0]),
        .Q(rx_word_host[0]),
        .R(srst));
  FDRE \rx_word_host_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[2]),
        .Q(rx_word_host[10]),
        .R(srst));
  FDRE \rx_word_host_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[3]),
        .Q(rx_word_host[11]),
        .R(srst));
  FDRE \rx_word_host_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[4]),
        .Q(rx_word_host[12]),
        .R(srst));
  FDRE \rx_word_host_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[5]),
        .Q(rx_word_host[13]),
        .R(srst));
  FDRE \rx_word_host_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[6]),
        .Q(rx_word_host[14]),
        .R(srst));
  FDRE \rx_word_host_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[7]),
        .Q(rx_word_host[15]),
        .R(srst));
  FDRE \rx_word_host_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[0]),
        .Q(rx_word_host[16]),
        .R(srst));
  FDRE \rx_word_host_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[1]),
        .Q(rx_word_host[17]),
        .R(srst));
  FDRE \rx_word_host_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[2]),
        .Q(rx_word_host[18]),
        .R(srst));
  FDRE \rx_word_host_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[3]),
        .Q(rx_word_host[19]),
        .R(srst));
  FDRE \rx_word_host_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[1]),
        .Q(rx_word_host[1]),
        .R(srst));
  FDRE \rx_word_host_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[4]),
        .Q(rx_word_host[20]),
        .R(srst));
  FDRE \rx_word_host_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[5]),
        .Q(rx_word_host[21]),
        .R(srst));
  FDRE \rx_word_host_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[6]),
        .Q(rx_word_host[22]),
        .R(srst));
  FDRE \rx_word_host_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[23]),
        .D(D[7]),
        .Q(rx_word_host[23]),
        .R(srst));
  FDRE \rx_word_host_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[0]),
        .Q(rx_word_host[24]),
        .R(srst));
  FDRE \rx_word_host_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[1]),
        .Q(rx_word_host[25]),
        .R(srst));
  FDRE \rx_word_host_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[2]),
        .Q(rx_word_host[26]),
        .R(srst));
  FDRE \rx_word_host_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[3]),
        .Q(rx_word_host[27]),
        .R(srst));
  FDRE \rx_word_host_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[4]),
        .Q(rx_word_host[28]),
        .R(srst));
  FDRE \rx_word_host_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[5]),
        .Q(rx_word_host[29]),
        .R(srst));
  FDRE \rx_word_host_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[2]),
        .Q(rx_word_host[2]),
        .R(srst));
  FDRE \rx_word_host_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[6]),
        .Q(rx_word_host[30]),
        .R(srst));
  FDRE \rx_word_host_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[31]),
        .D(D[7]),
        .Q(rx_word_host[31]),
        .R(srst));
  FDRE \rx_word_host_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[3]),
        .Q(rx_word_host[3]),
        .R(srst));
  FDRE \rx_word_host_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[4]),
        .Q(rx_word_host[4]),
        .R(srst));
  FDRE \rx_word_host_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[5]),
        .Q(rx_word_host[5]),
        .R(srst));
  FDRE \rx_word_host_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[6]),
        .Q(rx_word_host[6]),
        .R(srst));
  FDRE \rx_word_host_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[7]),
        .D(D[7]),
        .Q(rx_word_host[7]),
        .R(srst));
  FDRE \rx_word_host_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[0]),
        .Q(rx_word_host[8]),
        .R(srst));
  FDRE \rx_word_host_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rx_word_host0_in[15]),
        .D(D[1]),
        .Q(rx_word_host[9]),
        .R(srst));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(D[0]),
        .I1(rx_word_host[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[0] ),
        .I5(\slv_reg1_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(int_status[0]),
        .I1(Q[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg6_reg[1]_0 [0]),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .I1(data_count[0]),
        .I2(\s00_axi_rdata[10] [0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [0]),
        .I4(\slv_reg8_reg[12]_0 [0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[10]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0804000)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[10] [10]),
        .I4(data_count[10]),
        .I5(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002320)) 
    \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [10]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\slv_reg8_reg[12]_0 [10]),
        .I4(p_0_in_0[2]),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00EAEA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(\slv_reg8_reg[12]_0 [11]),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[11]),
        .I4(p_0_in_0[1]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00EAEA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg8_reg[12]_0 [12]),
        .I2(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I3(rx_word_host[12]),
        .I4(p_0_in_0[1]),
        .I5(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(rx_word_host[13]),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(rx_word_host[14]),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(rx_word_host[15]),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [11]),
        .I4(rx_word_host[16]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [12]),
        .I4(rx_word_host[17]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [13]),
        .I4(rx_word_host[18]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [14]),
        .I4(rx_word_host[19]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(D[1]),
        .I1(rx_word_host[1]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[1] ),
        .I5(\slv_reg1_reg_n_0_[1] ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(int_status[1]),
        .I1(Q[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg6_reg[1]_0 [1]),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .I1(data_count[1]),
        .I2(\s00_axi_rdata[10] [1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [1]),
        .I4(\slv_reg8_reg[12]_0 [1]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [15]),
        .I4(rx_word_host[20]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [16]),
        .I4(rx_word_host[21]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [17]),
        .I4(rx_word_host[22]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [18]),
        .I4(rx_word_host[23]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [19]),
        .I4(rx_word_host[24]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [20]),
        .I4(rx_word_host[25]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I3(\slv_reg10_reg[26]_0 [21]),
        .I4(rx_word_host[26]),
        .I5(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(rx_word_host[27]),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(rx_word_host[28]),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(rx_word_host[29]),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[29]));
  MUXF7 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00F3AAAA0003AAAA)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I1(rx_empty),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [2]),
        .I2(data_count[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(D[2]),
        .I1(rx_word_host[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .I5(\slv_reg1_reg_n_0_[2] ),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [2]),
        .I4(\slv_reg8_reg[12]_0 [2]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000C0)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(rx_word_host[30]),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(intr),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h1101100000000000)) 
    \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(rx_word_host[31]),
        .I4(\slv_reg1_reg_n_0_[31] ),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00FCAAAA000CAAAA)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .I1(int_status[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [3]),
        .I2(data_count[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(D[3]),
        .I1(rx_word_host[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .I5(\slv_reg1_reg_n_0_[3] ),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [3]),
        .I4(\slv_reg8_reg[12]_0 [3]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'h00FCAAAA000CAAAA)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .I1(s00_axi_rdata_4_sn_1),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(Q[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .I1(\s00_axi_rdata[10] [4]),
        .I2(data_count[4]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(D[4]),
        .I1(rx_word_host[4]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[4] ),
        .I5(\slv_reg1_reg_n_0_[4] ),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(\slv_reg10_reg[26]_0 [4]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [4]),
        .I4(\slv_reg8_reg[12]_0 [4]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFAAAEEAAAAAAAAAA)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[10] [5]),
        .I2(data_count[5]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(D[5]),
        .I1(rx_word_host[5]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[5] ),
        .I5(\slv_reg1_reg_n_0_[5] ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [5]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [5]),
        .I4(\slv_reg8_reg[12]_0 [5]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I1(data_count[6]),
        .I2(\s00_axi_rdata[10] [6]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(D[6]),
        .I1(rx_word_host[6]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .I5(\slv_reg1_reg_n_0_[6] ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [6]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [6]),
        .I4(\slv_reg8_reg[12]_0 [6]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[2]),
        .I3(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I1(data_count[7]),
        .I2(\s00_axi_rdata[10] [7]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(D[7]),
        .I1(rx_word_host[7]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .I5(\slv_reg1_reg_n_0_[7] ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(\slv_reg10_reg[26]_0 [7]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [7]),
        .I4(\slv_reg8_reg[12]_0 [7]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[8]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I1(data_count[8]),
        .I2(\s00_axi_rdata[10] [8]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [8]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [8]),
        .I4(\slv_reg8_reg[12]_0 [8]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .I2(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I3(rx_word_host[9]),
        .I4(p_0_in_0[3]),
        .I5(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hEEAAAAAAFAAAAAAA)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I1(data_count[9]),
        .I2(\s00_axi_rdata[10] [9]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\slv_reg10_reg[26]_0 [9]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\slv_reg9_reg[9]_0 [9]),
        .I4(\slv_reg8_reg[12]_0 [9]),
        .I5(p_0_in_0[2]),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sample_clk_cntr[9]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [1]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(srst));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(srst));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(srst));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(srst));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(srst));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(srst));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(srst));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(srst));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[10]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[23]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[2] ),
        .I1(slv_reg_wren),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[26]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[3] ),
        .I1(slv_reg_wren),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_1_in),
        .I2(write_index[3]),
        .I3(write_index[2]),
        .I4(write_index[1]),
        .I5(write_index[0]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg10_reg[26]_0 [0]),
        .R(srst));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg10_reg[26]_0 [10]),
        .R(srst));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[16] ),
        .Q(\slv_reg10_reg[26]_0 [11]),
        .R(srst));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[17] ),
        .Q(\slv_reg10_reg[26]_0 [12]),
        .R(srst));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[18] ),
        .Q(\slv_reg10_reg[26]_0 [13]),
        .R(srst));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[19] ),
        .Q(\slv_reg10_reg[26]_0 [14]),
        .R(srst));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg10_reg[26]_0 [1]),
        .R(srst));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[20] ),
        .Q(\slv_reg10_reg[26]_0 [15]),
        .R(srst));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[21] ),
        .Q(\slv_reg10_reg[26]_0 [16]),
        .R(srst));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[22] ),
        .Q(\slv_reg10_reg[26]_0 [17]),
        .R(srst));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[23] ),
        .Q(\slv_reg10_reg[26]_0 [18]),
        .R(srst));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[24] ),
        .Q(\slv_reg10_reg[26]_0 [19]),
        .R(srst));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[25] ),
        .Q(\slv_reg10_reg[26]_0 [20]),
        .R(srst));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[26]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[26] ),
        .Q(\slv_reg10_reg[26]_0 [21]),
        .R(srst));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg10_reg[26]_0 [2]),
        .R(srst));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg10_reg[26]_0 [3]),
        .R(srst));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg10_reg[26]_0 [4]),
        .R(srst));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg10_reg[26]_0 [5]),
        .R(srst));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg10_reg[26]_0 [6]),
        .R(srst));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg10_reg[26]_0 [7]),
        .R(srst));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg10_reg[26]_0 [8]),
        .R(srst));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[10]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg10_reg[26]_0 [9]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg1[15]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_0_in0),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \slv_reg1[23]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[2] ),
        .I1(slv_reg_wren),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \slv_reg1[31]_i_1 
       (.I0(\axi_wstrb_reg_n_0_[3] ),
        .I1(slv_reg_wren),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg1[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[0]),
        .I3(write_index[3]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(srst));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(srst));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[11] ),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(srst));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[12] ),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(srst));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[13] ),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(srst));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[14] ),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(srst));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[15] ),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(srst));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[16] ),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(srst));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[17] ),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(srst));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[18] ),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(srst));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[19] ),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(srst));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(srst));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[20] ),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(srst));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[21] ),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(srst));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[22] ),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(srst));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[23] ),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(srst));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[24] ),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(srst));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[25] ),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(srst));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[26] ),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(srst));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[27] ),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(srst));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[28] ),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(srst));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[29] ),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(srst));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(srst));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[30] ),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(srst));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[31] ),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(srst));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(srst));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(srst));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(srst));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(srst));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(srst));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(srst));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(srst));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \slv_reg5[4]_i_1 
       (.I0(p_1_in),
        .I1(write_index[3]),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg5[4]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(srst));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(srst));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(srst));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(srst));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[4]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(Q[4]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[1]_i_1 
       (.I0(slv_reg_wren),
        .I1(write_index[1]),
        .I2(write_index[2]),
        .I3(p_1_in),
        .I4(write_index[3]),
        .I5(write_index[0]),
        .O(\slv_reg6[1]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg6_reg[1]_0 [0]),
        .R(srst));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[1]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg6_reg[1]_0 [1]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg8[12]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[3]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(p_0_in0),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \slv_reg8[12]_i_2 
       (.I0(axi_bvalid_reg_0),
        .I1(axi_wdata_valid_reg_n_0),
        .I2(axi_awaddr_valid),
        .O(slv_reg_wren));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg8[7]_i_1 
       (.I0(write_index[1]),
        .I1(write_index[2]),
        .I2(write_index[3]),
        .I3(write_index[0]),
        .I4(slv_reg_wren),
        .I5(p_1_in),
        .O(p_1_in__0[7]));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg8_reg[12]_0 [0]),
        .R(srst));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[10] ),
        .Q(\slv_reg8_reg[12]_0 [10]),
        .R(srst));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[11] ),
        .Q(\slv_reg8_reg[12]_0 [11]),
        .R(srst));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[12] ),
        .Q(\slv_reg8_reg[12]_0 [12]),
        .R(srst));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg8_reg[12]_0 [1]),
        .R(srst));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg8_reg[12]_0 [2]),
        .R(srst));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg8_reg[12]_0 [3]),
        .R(srst));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(p_0_in4_in),
        .Q(\slv_reg8_reg[12]_0 [4]),
        .R(srst));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg8_reg[12]_0 [5]),
        .R(srst));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg8_reg[12]_0 [6]),
        .R(srst));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[7]),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg8_reg[12]_0 [7]),
        .R(srst));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg8_reg[12]_0 [8]),
        .R(srst));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in__0[12]),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg8_reg[12]_0 [9]),
        .R(srst));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_1_in),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[9]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in0),
        .I2(write_index[1]),
        .I3(write_index[2]),
        .I4(write_index[0]),
        .I5(write_index[3]),
        .O(\slv_reg9[9]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[0] ),
        .Q(\slv_reg9_reg[9]_0 [0]),
        .R(srst));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[1] ),
        .Q(\slv_reg9_reg[9]_0 [1]),
        .R(srst));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[2] ),
        .Q(\slv_reg9_reg[9]_0 [2]),
        .R(srst));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[3] ),
        .Q(\slv_reg9_reg[9]_0 [3]),
        .R(srst));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(p_0_in4_in),
        .Q(\slv_reg9_reg[9]_0 [4]),
        .R(srst));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[5] ),
        .Q(\slv_reg9_reg[9]_0 [5]),
        .R(srst));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[6] ),
        .Q(\slv_reg9_reg[9]_0 [6]),
        .R(srst));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[7] ),
        .Q(\slv_reg9_reg[9]_0 [7]),
        .R(srst));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[8] ),
        .Q(\slv_reg9_reg[9]_0 [8]),
        .R(srst));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[9]_i_1_n_0 ),
        .D(\axi_wdata_reg_n_0_[9] ),
        .Q(\slv_reg9_reg[9]_0 [9]),
        .R(srst));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[0]_i_2_n_0 ),
        .O(\tx_byte_host[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \tx_byte_host[0]_i_2 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[16] ),
        .O(\tx_byte_host[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[1]_i_2_n_0 ),
        .O(\tx_byte_host[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[1]_i_2 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[1] ),
        .O(\tx_byte_host[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[2]_i_2_n_0 ),
        .O(\tx_byte_host[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \tx_byte_host[2]_i_2 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[18] ),
        .O(\tx_byte_host[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[3]_i_2_n_0 ),
        .O(\tx_byte_host[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \tx_byte_host[3]_i_2 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[11] ),
        .O(\tx_byte_host[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[4]_i_2_n_0 ),
        .O(\tx_byte_host[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[4]_i_2 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[4] ),
        .O(\tx_byte_host[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[5]_i_2_n_0 ),
        .O(\tx_byte_host[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \tx_byte_host[5]_i_2 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[5] ),
        .O(\tx_byte_host[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[6]_i_2_n_0 ),
        .O(\tx_byte_host[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \tx_byte_host[6]_i_2 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[14] ),
        .O(\tx_byte_host[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \tx_byte_host[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(\is_reg0_wr_reg_n_0_[0] ),
        .I2(\is_reg0_wr_reg_n_0_[1] ),
        .I3(\tx_byte_host[7]_i_2_n_0 ),
        .O(\tx_byte_host[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \tx_byte_host[7]_i_2 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(byte_cntr[0]),
        .I4(byte_cntr[1]),
        .I5(\slv_reg1_reg_n_0_[7] ),
        .O(\tx_byte_host[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    tx_byte_host_dv_i_1
       (.I0(word_wr_active__0),
        .I1(\is_reg0_wr_reg_n_0_[1] ),
        .I2(\is_reg0_wr_reg_n_0_[0] ),
        .O(tx_byte_host_dv_i_1_n_0));
  FDRE tx_byte_host_dv_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_byte_host_dv_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  FDRE \tx_byte_host_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[0]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[1]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[2]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[3]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[4]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[5]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[6]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tx_byte_host_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\tx_byte_host[7]_i_1_n_0 ),
        .Q(\tx_byte_host_reg[7]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    txd_i_2
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg6_reg[1]_0 [0]),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \uart_rx/rx_samples[44]_i_1 
       (.I0(\slv_reg6_reg[1]_0 [1]),
        .I1(s00_axi_aresetn),
        .I2(rx_samples_reg_s_2),
        .O(\slv_reg6_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA2AAA00)) 
    word_rd_active_i_1
       (.I0(s00_axi_aresetn),
        .I1(rd_byte_cntr[1]),
        .I2(rd_byte_cntr[0]),
        .I3(\rd_byte_cntr[1]_i_3_n_0 ),
        .I4(word_rd_active),
        .O(word_rd_active_i_1_n_0));
  FDRE word_rd_active_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(word_rd_active_i_1_n_0),
        .Q(word_rd_active),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C00AE00AE00AE00)) 
    word_wr_active_i_1
       (.I0(word_wr_active__0),
        .I1(\is_reg1_wr_reg_n_0_[0] ),
        .I2(\is_reg1_wr_reg_n_0_[1] ),
        .I3(s00_axi_aresetn),
        .I4(byte_cntr[0]),
        .I5(byte_cntr[1]),
        .O(word_wr_active_i_1_n_0));
  FDRE word_wr_active_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(word_wr_active_i_1_n_0),
        .Q(word_wr_active__0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_e_uart_0_0_fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    almost_empty,
    valid,
    data_count,
    wr_rst_busy,
    rd_rst_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_MODE = "slave core_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output valid;
  output [10:0]data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire almost_empty;
  wire clk;
  wire [10:0]data_count;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire rd_en;
  wire srst;
  wire valid;
  wire wr_en;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_e_uart_0_0_fifo_generator_v13_2_14__2 U0
       (.almost_empty(almost_empty),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_generator_0" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_e_uart_0_0_fifo_generator_0__xdcDup__1
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    almost_empty,
    valid,
    data_count,
    wr_rst_busy,
    rd_rst_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_MODE = "slave core_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output valid;
  output [10:0]data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire clk;
  wire [10:0]data_count;
  wire [7:0]din;
  wire [7:0]dout;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign valid = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_e_uart_0_0_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

module design_1_e_uart_0_0_int_holdoff
   (int_status,
    Q,
    \slv_reg5_reg[2] ,
    \count_reg[6] ,
    \count_reg[10] ,
    srst,
    rx_empty_d1_reg_0,
    s00_axi_aclk,
    S,
    rx_byte_cnt_coal_intr_reg_0,
    rx_time_coal_intr_clr,
    s00_axi_aresetn,
    rx_byte_cnt_coal_intr1_carry_0,
    rx_byte_cnt_coal_intr_reg_1,
    intr_reg,
    intr_reg_0,
    \bit_times_elapsed_reg[3]_0 ,
    \byte_time_cntr_reg[0]_0 );
  output [1:0]int_status;
  output [0:0]Q;
  output \slv_reg5_reg[2] ;
  output \count_reg[6] ;
  output \count_reg[10] ;
  input srst;
  input rx_empty_d1_reg_0;
  input s00_axi_aclk;
  input [0:0]S;
  input [0:0]rx_byte_cnt_coal_intr_reg_0;
  input rx_time_coal_intr_clr;
  input s00_axi_aresetn;
  input [21:0]rx_byte_cnt_coal_intr1_carry_0;
  input [10:0]rx_byte_cnt_coal_intr_reg_1;
  input [4:0]intr_reg;
  input [1:0]intr_reg_0;
  input [12:0]\bit_times_elapsed_reg[3]_0 ;
  input [0:0]\byte_time_cntr_reg[0]_0 ;

  wire [0:0]Q;
  wire [0:0]S;
  wire [12:0]bit_time_cntr;
  wire \bit_time_cntr[0]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_1_n_0 ;
  wire \bit_time_cntr[10]_i_2_n_0 ;
  wire \bit_time_cntr[11]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_1_n_0 ;
  wire \bit_time_cntr[12]_i_2_n_0 ;
  wire \bit_time_cntr[1]_i_1_n_0 ;
  wire \bit_time_cntr[2]_i_1_n_0 ;
  wire \bit_time_cntr[3]_i_1_n_0 ;
  wire \bit_time_cntr[4]_i_1_n_0 ;
  wire \bit_time_cntr[4]_i_2_n_0 ;
  wire \bit_time_cntr[5]_i_1_n_0 ;
  wire \bit_time_cntr[5]_i_2_n_0 ;
  wire \bit_time_cntr[6]_i_1_n_0 ;
  wire \bit_time_cntr[7]_i_1_n_0 ;
  wire \bit_time_cntr[8]_i_1_n_0 ;
  wire \bit_time_cntr[8]_i_2_n_0 ;
  wire \bit_time_cntr[9]_i_1_n_0 ;
  wire \bit_time_cntr[9]_i_2_n_0 ;
  wire \bit_times_elapsed[0]_i_1_n_0 ;
  wire \bit_times_elapsed[1]_i_1_n_0 ;
  wire \bit_times_elapsed[2]_i_1_n_0 ;
  wire \bit_times_elapsed[3]_i_1_n_0 ;
  wire \bit_times_elapsed[3]_i_2_n_0 ;
  wire \bit_times_elapsed[3]_i_3_n_0 ;
  wire \bit_times_elapsed[3]_i_4_n_0 ;
  wire \bit_times_elapsed[3]_i_5_n_0 ;
  wire \bit_times_elapsed[3]_i_6_n_0 ;
  wire \bit_times_elapsed[3]_i_7_n_0 ;
  wire \bit_times_elapsed[3]_i_8_n_0 ;
  wire \bit_times_elapsed[3]_i_9_n_0 ;
  wire [12:0]\bit_times_elapsed_reg[3]_0 ;
  wire \bit_times_elapsed_reg_n_0_[0] ;
  wire \bit_times_elapsed_reg_n_0_[1] ;
  wire \bit_times_elapsed_reg_n_0_[2] ;
  wire \bit_times_elapsed_reg_n_0_[3] ;
  wire [9:0]byte_time_cntr;
  wire \byte_time_cntr[0]_i_1_n_0 ;
  wire \byte_time_cntr[10]_i_3_n_0 ;
  wire \byte_time_cntr[10]_i_4_n_0 ;
  wire \byte_time_cntr[10]_i_5_n_0 ;
  wire \byte_time_cntr[1]_i_1_n_0 ;
  wire \byte_time_cntr[2]_i_1_n_0 ;
  wire \byte_time_cntr[3]_i_1_n_0 ;
  wire \byte_time_cntr[4]_i_1_n_0 ;
  wire \byte_time_cntr[4]_i_2_n_0 ;
  wire \byte_time_cntr[5]_i_1_n_0 ;
  wire \byte_time_cntr[5]_i_2_n_0 ;
  wire \byte_time_cntr[6]_i_1_n_0 ;
  wire \byte_time_cntr[7]_i_1_n_0 ;
  wire \byte_time_cntr[8]_i_1_n_0 ;
  wire \byte_time_cntr[8]_i_2_n_0 ;
  wire \byte_time_cntr[9]_i_1_n_0 ;
  wire [0:0]byte_time_cntr_0;
  wire byte_time_cntr_en2;
  wire byte_time_cntr_en2_carry_i_10_n_0;
  wire byte_time_cntr_en2_carry_i_11_n_0;
  wire byte_time_cntr_en2_carry_i_12_n_0;
  wire byte_time_cntr_en2_carry_i_1_n_0;
  wire byte_time_cntr_en2_carry_i_2_n_0;
  wire byte_time_cntr_en2_carry_i_3_n_0;
  wire byte_time_cntr_en2_carry_i_4_n_0;
  wire byte_time_cntr_en2_carry_i_5_n_0;
  wire byte_time_cntr_en2_carry_i_6_n_0;
  wire byte_time_cntr_en2_carry_i_8_n_0;
  wire byte_time_cntr_en2_carry_i_9_n_0;
  wire byte_time_cntr_en2_carry_n_3;
  wire byte_time_cntr_en2_carry_n_4;
  wire byte_time_cntr_en2_carry_n_5;
  wire byte_time_cntr_en2_carry_n_6;
  wire byte_time_cntr_en2_carry_n_7;
  wire byte_time_cntr_en_i_1_n_0;
  wire byte_time_cntr_en_i_2_n_0;
  wire byte_time_cntr_en_reg_n_0;
  wire [0:0]\byte_time_cntr_reg[0]_0 ;
  wire \count_reg[10] ;
  wire \count_reg[6] ;
  wire [1:0]int_status;
  wire intr_i_2_n_0;
  wire [4:0]intr_reg;
  wire [1:0]intr_reg_0;
  wire rx_byte_cnt_coal_intr0;
  wire rx_byte_cnt_coal_intr1;
  wire [21:0]rx_byte_cnt_coal_intr1_carry_0;
  wire rx_byte_cnt_coal_intr1_carry_i_10_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_11_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_12_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_1_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_2_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_3_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_4_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_5_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_6_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_8_n_0;
  wire rx_byte_cnt_coal_intr1_carry_i_9_n_0;
  wire rx_byte_cnt_coal_intr1_carry_n_3;
  wire rx_byte_cnt_coal_intr1_carry_n_4;
  wire rx_byte_cnt_coal_intr1_carry_n_5;
  wire rx_byte_cnt_coal_intr1_carry_n_6;
  wire rx_byte_cnt_coal_intr1_carry_n_7;
  wire [0:0]rx_byte_cnt_coal_intr_reg_0;
  wire [10:0]rx_byte_cnt_coal_intr_reg_1;
  wire rx_empty_d1;
  wire rx_empty_d1_reg_0;
  wire rx_time_coal_intr_clr;
  wire rx_time_coal_intr_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \slv_reg5_reg[2] ;
  wire srst;
  wire [7:6]NLW_byte_time_cntr_en2_carry_CO_UNCONNECTED;
  wire [7:0]NLW_byte_time_cntr_en2_carry_O_UNCONNECTED;
  wire [7:6]NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_time_cntr[0]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(bit_time_cntr[0]),
        .O(\bit_time_cntr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[10]_i_1 
       (.I0(\bit_time_cntr[10]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[10]),
        .O(\bit_time_cntr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \bit_time_cntr[10]_i_2 
       (.I0(bit_time_cntr[8]),
        .I1(bit_time_cntr[6]),
        .I2(\bit_time_cntr[8]_i_2_n_0 ),
        .I3(bit_time_cntr[7]),
        .I4(bit_time_cntr[9]),
        .O(\bit_time_cntr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \bit_time_cntr[11]_i_1 
       (.I0(\bit_time_cntr[12]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[11]),
        .O(\bit_time_cntr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \bit_time_cntr[12]_i_1 
       (.I0(bit_time_cntr[11]),
        .I1(\bit_time_cntr[12]_i_2_n_0 ),
        .I2(\bit_times_elapsed[3]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .I4(bit_time_cntr[12]),
        .O(\bit_time_cntr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \bit_time_cntr[12]_i_2 
       (.I0(bit_time_cntr[10]),
        .I1(bit_time_cntr[9]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_time_cntr[8]_i_2_n_0 ),
        .I4(bit_time_cntr[6]),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \bit_time_cntr[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[1]),
        .O(\bit_time_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \bit_time_cntr[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[0]),
        .I4(bit_time_cntr[2]),
        .O(\bit_time_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \bit_time_cntr[3]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(bit_time_cntr[2]),
        .I3(bit_time_cntr[0]),
        .I4(bit_time_cntr[1]),
        .I5(bit_time_cntr[3]),
        .O(\bit_time_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \bit_time_cntr[4]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(\bit_time_cntr[4]_i_2_n_0 ),
        .I3(bit_time_cntr[4]),
        .O(\bit_time_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bit_time_cntr[4]_i_2 
       (.I0(bit_time_cntr[2]),
        .I1(bit_time_cntr[0]),
        .I2(bit_time_cntr[1]),
        .I3(bit_time_cntr[3]),
        .O(\bit_time_cntr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[5]_i_1 
       (.I0(\bit_time_cntr[5]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[5]),
        .O(\bit_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bit_time_cntr[5]_i_2 
       (.I0(bit_time_cntr[3]),
        .I1(bit_time_cntr[1]),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[2]),
        .I4(bit_time_cntr[4]),
        .O(\bit_time_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[6]_i_1 
       (.I0(\bit_time_cntr[8]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[6]),
        .O(\bit_time_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \bit_time_cntr[7]_i_1 
       (.I0(\bit_time_cntr[8]_i_2_n_0 ),
        .I1(bit_time_cntr[6]),
        .I2(\bit_times_elapsed[3]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .I4(bit_time_cntr[7]),
        .O(\bit_time_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \bit_time_cntr[8]_i_1 
       (.I0(bit_time_cntr[6]),
        .I1(\bit_time_cntr[8]_i_2_n_0 ),
        .I2(bit_time_cntr[7]),
        .I3(\bit_times_elapsed[3]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(bit_time_cntr[8]),
        .O(\bit_time_cntr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bit_time_cntr[8]_i_2 
       (.I0(bit_time_cntr[4]),
        .I1(bit_time_cntr[2]),
        .I2(bit_time_cntr[0]),
        .I3(bit_time_cntr[1]),
        .I4(bit_time_cntr[3]),
        .I5(bit_time_cntr[5]),
        .O(\bit_time_cntr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2010)) 
    \bit_time_cntr[9]_i_1 
       (.I0(\bit_time_cntr[9]_i_2_n_0 ),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(bit_time_cntr[9]),
        .O(\bit_time_cntr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bit_time_cntr[9]_i_2 
       (.I0(bit_time_cntr[7]),
        .I1(\bit_time_cntr[8]_i_2_n_0 ),
        .I2(bit_time_cntr[6]),
        .I3(bit_time_cntr[8]),
        .O(\bit_time_cntr[9]_i_2_n_0 ));
  FDRE \bit_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[0]_i_1_n_0 ),
        .Q(bit_time_cntr[0]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[10]_i_1_n_0 ),
        .Q(bit_time_cntr[10]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[11]_i_1_n_0 ),
        .Q(bit_time_cntr[11]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[12]_i_1_n_0 ),
        .Q(bit_time_cntr[12]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[1]_i_1_n_0 ),
        .Q(bit_time_cntr[1]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[2]_i_1_n_0 ),
        .Q(bit_time_cntr[2]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[3]_i_1_n_0 ),
        .Q(bit_time_cntr[3]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[4]_i_1_n_0 ),
        .Q(bit_time_cntr[4]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[5]_i_1_n_0 ),
        .Q(bit_time_cntr[5]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[6]_i_1_n_0 ),
        .Q(bit_time_cntr[6]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[7]_i_1_n_0 ),
        .Q(bit_time_cntr[7]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[8]_i_1_n_0 ),
        .Q(bit_time_cntr[8]),
        .R(1'b0));
  FDRE \bit_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\bit_time_cntr[9]_i_1_n_0 ),
        .Q(bit_time_cntr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \bit_times_elapsed[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\bit_times_elapsed[3]_i_3_n_0 ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \bit_times_elapsed[1]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .O(\bit_times_elapsed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h08808080)) 
    \bit_times_elapsed[2]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[2] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .I4(\bit_times_elapsed_reg_n_0_[0] ),
        .O(\bit_times_elapsed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA9AAAAAFFFFFFFF)) 
    \bit_times_elapsed[3]_i_1 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(\bit_times_elapsed_reg_n_0_[1] ),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[2] ),
        .I4(\bit_times_elapsed_reg_n_0_[3] ),
        .I5(s00_axi_aresetn),
        .O(\bit_times_elapsed[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \bit_times_elapsed[3]_i_2 
       (.I0(\bit_times_elapsed[3]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(\bit_times_elapsed_reg_n_0_[0] ),
        .I3(\bit_times_elapsed_reg_n_0_[1] ),
        .I4(\bit_times_elapsed_reg_n_0_[2] ),
        .I5(\bit_times_elapsed_reg_n_0_[3] ),
        .O(\bit_times_elapsed[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0041)) 
    \bit_times_elapsed[3]_i_3 
       (.I0(\bit_times_elapsed[3]_i_4_n_0 ),
        .I1(bit_time_cntr[12]),
        .I2(\bit_times_elapsed_reg[3]_0 [12]),
        .I3(\bit_times_elapsed[3]_i_5_n_0 ),
        .O(\bit_times_elapsed[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \bit_times_elapsed[3]_i_4 
       (.I0(\bit_times_elapsed[3]_i_6_n_0 ),
        .I1(bit_time_cntr[0]),
        .I2(\bit_times_elapsed_reg[3]_0 [0]),
        .I3(bit_time_cntr[5]),
        .I4(\bit_times_elapsed_reg[3]_0 [5]),
        .I5(\bit_times_elapsed[3]_i_7_n_0 ),
        .O(\bit_times_elapsed[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \bit_times_elapsed[3]_i_5 
       (.I0(\bit_times_elapsed[3]_i_8_n_0 ),
        .I1(bit_time_cntr[6]),
        .I2(\bit_times_elapsed_reg[3]_0 [6]),
        .I3(bit_time_cntr[10]),
        .I4(\bit_times_elapsed_reg[3]_0 [10]),
        .I5(\bit_times_elapsed[3]_i_9_n_0 ),
        .O(\bit_times_elapsed[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_6 
       (.I0(bit_time_cntr[4]),
        .I1(\bit_times_elapsed_reg[3]_0 [4]),
        .I2(bit_time_cntr[3]),
        .I3(\bit_times_elapsed_reg[3]_0 [3]),
        .O(\bit_times_elapsed[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_7 
       (.I0(bit_time_cntr[1]),
        .I1(\bit_times_elapsed_reg[3]_0 [1]),
        .I2(bit_time_cntr[2]),
        .I3(\bit_times_elapsed_reg[3]_0 [2]),
        .O(\bit_times_elapsed[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_8 
       (.I0(bit_time_cntr[11]),
        .I1(\bit_times_elapsed_reg[3]_0 [11]),
        .I2(bit_time_cntr[9]),
        .I3(\bit_times_elapsed_reg[3]_0 [9]),
        .O(\bit_times_elapsed[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bit_times_elapsed[3]_i_9 
       (.I0(bit_time_cntr[8]),
        .I1(\bit_times_elapsed_reg[3]_0 [8]),
        .I2(bit_time_cntr[7]),
        .I3(\bit_times_elapsed_reg[3]_0 [7]),
        .O(\bit_times_elapsed[3]_i_9_n_0 ));
  FDRE \bit_times_elapsed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[0]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[1]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[2]_i_1_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_times_elapsed_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_times_elapsed[3]_i_1_n_0 ),
        .D(\bit_times_elapsed[3]_i_2_n_0 ),
        .Q(\bit_times_elapsed_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \byte_time_cntr[0]_i_1 
       (.I0(byte_time_cntr[0]),
        .I1(rx_empty_d1_reg_0),
        .I2(rx_empty_d1),
        .O(\byte_time_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h080F0F08)) 
    \byte_time_cntr[10]_i_2 
       (.I0(\byte_time_cntr[10]_i_4_n_0 ),
        .I1(byte_time_cntr_en_reg_n_0),
        .I2(int_status[1]),
        .I3(rx_empty_d1),
        .I4(rx_empty_d1_reg_0),
        .O(byte_time_cntr_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h90099090)) 
    \byte_time_cntr[10]_i_3 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(Q),
        .I3(\byte_time_cntr[10]_i_5_n_0 ),
        .I4(byte_time_cntr[9]),
        .O(\byte_time_cntr[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \byte_time_cntr[10]_i_4 
       (.I0(\bit_times_elapsed_reg_n_0_[1] ),
        .I1(\bit_times_elapsed_reg_n_0_[0] ),
        .I2(\bit_times_elapsed_reg_n_0_[2] ),
        .I3(\bit_times_elapsed_reg_n_0_[3] ),
        .O(\byte_time_cntr[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \byte_time_cntr[10]_i_5 
       (.I0(byte_time_cntr[7]),
        .I1(\byte_time_cntr[8]_i_2_n_0 ),
        .I2(byte_time_cntr[6]),
        .I3(byte_time_cntr[8]),
        .O(\byte_time_cntr[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0990)) 
    \byte_time_cntr[1]_i_1 
       (.I0(rx_empty_d1),
        .I1(rx_empty_d1_reg_0),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[1]),
        .O(\byte_time_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h09909090)) 
    \byte_time_cntr[2]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[2]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[0]),
        .O(\byte_time_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0990909090909090)) 
    \byte_time_cntr[3]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[3]),
        .I3(byte_time_cntr[2]),
        .I4(byte_time_cntr[0]),
        .I5(byte_time_cntr[1]),
        .O(\byte_time_cntr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[4]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[4]),
        .I3(\byte_time_cntr[4]_i_2_n_0 ),
        .O(\byte_time_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \byte_time_cntr[4]_i_2 
       (.I0(byte_time_cntr[2]),
        .I1(byte_time_cntr[0]),
        .I2(byte_time_cntr[1]),
        .I3(byte_time_cntr[3]),
        .O(\byte_time_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[5]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[5]),
        .I3(\byte_time_cntr[5]_i_2_n_0 ),
        .O(\byte_time_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \byte_time_cntr[5]_i_2 
       (.I0(byte_time_cntr[3]),
        .I1(byte_time_cntr[1]),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[2]),
        .I4(byte_time_cntr[4]),
        .O(\byte_time_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[6]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[6]),
        .I3(\byte_time_cntr[8]_i_2_n_0 ),
        .O(\byte_time_cntr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h90900990)) 
    \byte_time_cntr[7]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[7]),
        .I3(byte_time_cntr[6]),
        .I4(\byte_time_cntr[8]_i_2_n_0 ),
        .O(\byte_time_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9090099090909090)) 
    \byte_time_cntr[8]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[8]),
        .I3(byte_time_cntr[7]),
        .I4(\byte_time_cntr[8]_i_2_n_0 ),
        .I5(byte_time_cntr[6]),
        .O(\byte_time_cntr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \byte_time_cntr[8]_i_2 
       (.I0(byte_time_cntr[4]),
        .I1(byte_time_cntr[2]),
        .I2(byte_time_cntr[0]),
        .I3(byte_time_cntr[1]),
        .I4(byte_time_cntr[3]),
        .I5(byte_time_cntr[5]),
        .O(\byte_time_cntr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \byte_time_cntr[9]_i_1 
       (.I0(rx_empty_d1_reg_0),
        .I1(rx_empty_d1),
        .I2(byte_time_cntr[9]),
        .I3(\byte_time_cntr[10]_i_5_n_0 ),
        .O(\byte_time_cntr[9]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 byte_time_cntr_en2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_byte_time_cntr_en2_carry_CO_UNCONNECTED[7:6],byte_time_cntr_en2,byte_time_cntr_en2_carry_n_3,byte_time_cntr_en2_carry_n_4,byte_time_cntr_en2_carry_n_5,byte_time_cntr_en2_carry_n_6,byte_time_cntr_en2_carry_n_7}),
        .DI({1'b0,1'b0,byte_time_cntr_en2_carry_i_1_n_0,byte_time_cntr_en2_carry_i_2_n_0,byte_time_cntr_en2_carry_i_3_n_0,byte_time_cntr_en2_carry_i_4_n_0,byte_time_cntr_en2_carry_i_5_n_0,byte_time_cntr_en2_carry_i_6_n_0}),
        .O(NLW_byte_time_cntr_en2_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S,byte_time_cntr_en2_carry_i_8_n_0,byte_time_cntr_en2_carry_i_9_n_0,byte_time_cntr_en2_carry_i_10_n_0,byte_time_cntr_en2_carry_i_11_n_0,byte_time_cntr_en2_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    byte_time_cntr_en2_carry_i_1
       (.I0(Q),
        .I1(rx_byte_cnt_coal_intr1_carry_0[10]),
        .O(byte_time_cntr_en2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_10
       (.I0(byte_time_cntr[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[5]),
        .I2(byte_time_cntr[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[4]),
        .O(byte_time_cntr_en2_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_11
       (.I0(byte_time_cntr[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[3]),
        .I2(byte_time_cntr[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[2]),
        .O(byte_time_cntr_en2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_12
       (.I0(byte_time_cntr[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[1]),
        .I2(byte_time_cntr[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[0]),
        .O(byte_time_cntr_en2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_2
       (.I0(byte_time_cntr[8]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[8]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[9]),
        .I3(byte_time_cntr[9]),
        .O(byte_time_cntr_en2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_3
       (.I0(byte_time_cntr[6]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[6]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[7]),
        .I3(byte_time_cntr[7]),
        .O(byte_time_cntr_en2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_4
       (.I0(byte_time_cntr[4]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[4]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[5]),
        .I3(byte_time_cntr[5]),
        .O(byte_time_cntr_en2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_5
       (.I0(byte_time_cntr[2]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[2]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[3]),
        .I3(byte_time_cntr[3]),
        .O(byte_time_cntr_en2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    byte_time_cntr_en2_carry_i_6
       (.I0(byte_time_cntr[0]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[0]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[1]),
        .I3(byte_time_cntr[1]),
        .O(byte_time_cntr_en2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_8
       (.I0(byte_time_cntr[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[9]),
        .I2(byte_time_cntr[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[8]),
        .O(byte_time_cntr_en2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    byte_time_cntr_en2_carry_i_9
       (.I0(byte_time_cntr[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[7]),
        .I2(byte_time_cntr[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[6]),
        .O(byte_time_cntr_en2_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'hA2)) 
    byte_time_cntr_en_i_1
       (.I0(byte_time_cntr_en_i_2_n_0),
        .I1(int_status[1]),
        .I2(rx_time_coal_intr_clr),
        .O(byte_time_cntr_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h323B323200000000)) 
    byte_time_cntr_en_i_2
       (.I0(rx_empty_d1),
        .I1(rx_empty_d1_reg_0),
        .I2(rx_time_coal_intr_clr),
        .I3(byte_time_cntr_en2),
        .I4(byte_time_cntr_en_reg_n_0),
        .I5(s00_axi_aresetn),
        .O(byte_time_cntr_en_i_2_n_0));
  FDRE byte_time_cntr_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(byte_time_cntr_en_i_1_n_0),
        .Q(byte_time_cntr_en_reg_n_0),
        .R(1'b0));
  FDRE \byte_time_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[0]_i_1_n_0 ),
        .Q(byte_time_cntr[0]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[10]_i_3_n_0 ),
        .Q(Q),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[1]_i_1_n_0 ),
        .Q(byte_time_cntr[1]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[2]_i_1_n_0 ),
        .Q(byte_time_cntr[2]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[3]_i_1_n_0 ),
        .Q(byte_time_cntr[3]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[4]_i_1_n_0 ),
        .Q(byte_time_cntr[4]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[5]_i_1_n_0 ),
        .Q(byte_time_cntr[5]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[6]_i_1_n_0 ),
        .Q(byte_time_cntr[6]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[7]_i_1_n_0 ),
        .Q(byte_time_cntr[7]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[8]_i_1_n_0 ),
        .Q(byte_time_cntr[8]),
        .R(\byte_time_cntr_reg[0]_0 ));
  FDRE \byte_time_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(byte_time_cntr_0),
        .D(\byte_time_cntr[9]_i_1_n_0 ),
        .Q(byte_time_cntr[9]),
        .R(\byte_time_cntr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    intr_i_1
       (.I0(intr_i_2_n_0),
        .I1(intr_reg[2]),
        .I2(rx_empty_d1_reg_0),
        .I3(intr_reg[3]),
        .I4(int_status[0]),
        .O(\slv_reg5_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    intr_i_2
       (.I0(int_status[1]),
        .I1(intr_reg[4]),
        .I2(intr_reg[0]),
        .I3(intr_reg_0[0]),
        .I4(intr_reg_0[1]),
        .I5(intr_reg[1]),
        .O(intr_i_2_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 rx_byte_cnt_coal_intr1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_rx_byte_cnt_coal_intr1_carry_CO_UNCONNECTED[7:6],rx_byte_cnt_coal_intr1,rx_byte_cnt_coal_intr1_carry_n_3,rx_byte_cnt_coal_intr1_carry_n_4,rx_byte_cnt_coal_intr1_carry_n_5,rx_byte_cnt_coal_intr1_carry_n_6,rx_byte_cnt_coal_intr1_carry_n_7}),
        .DI({1'b0,1'b0,rx_byte_cnt_coal_intr1_carry_i_1_n_0,rx_byte_cnt_coal_intr1_carry_i_2_n_0,rx_byte_cnt_coal_intr1_carry_i_3_n_0,rx_byte_cnt_coal_intr1_carry_i_4_n_0,rx_byte_cnt_coal_intr1_carry_i_5_n_0,rx_byte_cnt_coal_intr1_carry_i_6_n_0}),
        .O(NLW_rx_byte_cnt_coal_intr1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,rx_byte_cnt_coal_intr_reg_0,rx_byte_cnt_coal_intr1_carry_i_8_n_0,rx_byte_cnt_coal_intr1_carry_i_9_n_0,rx_byte_cnt_coal_intr1_carry_i_10_n_0,rx_byte_cnt_coal_intr1_carry_i_11_n_0,rx_byte_cnt_coal_intr1_carry_i_12_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rx_byte_cnt_coal_intr1_carry_i_1
       (.I0(rx_byte_cnt_coal_intr_reg_1[10]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[21]),
        .O(rx_byte_cnt_coal_intr1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_10
       (.I0(rx_byte_cnt_coal_intr_reg_1[5]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[16]),
        .I2(rx_byte_cnt_coal_intr_reg_1[4]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[15]),
        .O(rx_byte_cnt_coal_intr1_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_11
       (.I0(rx_byte_cnt_coal_intr_reg_1[3]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[14]),
        .I2(rx_byte_cnt_coal_intr_reg_1[2]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[13]),
        .O(rx_byte_cnt_coal_intr1_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_12
       (.I0(rx_byte_cnt_coal_intr_reg_1[1]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[12]),
        .I2(rx_byte_cnt_coal_intr_reg_1[0]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[11]),
        .O(rx_byte_cnt_coal_intr1_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_2
       (.I0(rx_byte_cnt_coal_intr_reg_1[8]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[19]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[20]),
        .I3(rx_byte_cnt_coal_intr_reg_1[9]),
        .O(rx_byte_cnt_coal_intr1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_3
       (.I0(rx_byte_cnt_coal_intr_reg_1[6]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[17]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[18]),
        .I3(rx_byte_cnt_coal_intr_reg_1[7]),
        .O(rx_byte_cnt_coal_intr1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_4
       (.I0(rx_byte_cnt_coal_intr_reg_1[4]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[15]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[16]),
        .I3(rx_byte_cnt_coal_intr_reg_1[5]),
        .O(rx_byte_cnt_coal_intr1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_5
       (.I0(rx_byte_cnt_coal_intr_reg_1[2]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[13]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[14]),
        .I3(rx_byte_cnt_coal_intr_reg_1[3]),
        .O(rx_byte_cnt_coal_intr1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    rx_byte_cnt_coal_intr1_carry_i_6
       (.I0(rx_byte_cnt_coal_intr_reg_1[0]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[11]),
        .I2(rx_byte_cnt_coal_intr1_carry_0[12]),
        .I3(rx_byte_cnt_coal_intr_reg_1[1]),
        .O(rx_byte_cnt_coal_intr1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_8
       (.I0(rx_byte_cnt_coal_intr_reg_1[9]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[20]),
        .I2(rx_byte_cnt_coal_intr_reg_1[8]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[19]),
        .O(rx_byte_cnt_coal_intr1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rx_byte_cnt_coal_intr1_carry_i_9
       (.I0(rx_byte_cnt_coal_intr_reg_1[7]),
        .I1(rx_byte_cnt_coal_intr1_carry_0[18]),
        .I2(rx_byte_cnt_coal_intr_reg_1[6]),
        .I3(rx_byte_cnt_coal_intr1_carry_0[17]),
        .O(rx_byte_cnt_coal_intr1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000000)) 
    rx_byte_cnt_coal_intr_i_1
       (.I0(\count_reg[6] ),
        .I1(\count_reg[10] ),
        .I2(rx_byte_cnt_coal_intr_reg_1[0]),
        .I3(rx_byte_cnt_coal_intr_reg_1[1]),
        .I4(rx_byte_cnt_coal_intr_reg_1[2]),
        .I5(rx_byte_cnt_coal_intr1),
        .O(rx_byte_cnt_coal_intr0));
  LUT4 #(
    .INIT(16'h0001)) 
    rx_byte_cnt_coal_intr_i_2
       (.I0(rx_byte_cnt_coal_intr_reg_1[6]),
        .I1(rx_byte_cnt_coal_intr_reg_1[5]),
        .I2(rx_byte_cnt_coal_intr_reg_1[4]),
        .I3(rx_byte_cnt_coal_intr_reg_1[3]),
        .O(\count_reg[6] ));
  LUT4 #(
    .INIT(16'h0001)) 
    rx_byte_cnt_coal_intr_i_3
       (.I0(rx_byte_cnt_coal_intr_reg_1[10]),
        .I1(rx_byte_cnt_coal_intr_reg_1[9]),
        .I2(rx_byte_cnt_coal_intr_reg_1[8]),
        .I3(rx_byte_cnt_coal_intr_reg_1[7]),
        .O(\count_reg[10] ));
  FDRE rx_byte_cnt_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_byte_cnt_coal_intr0),
        .Q(int_status[0]),
        .R(srst));
  FDSE rx_empty_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_d1_reg_0),
        .Q(rx_empty_d1),
        .S(srst));
  LUT5 #(
    .INIT(32'h44404040)) 
    rx_time_coal_intr_i_1
       (.I0(rx_time_coal_intr_clr),
        .I1(s00_axi_aresetn),
        .I2(int_status[1]),
        .I3(byte_time_cntr_en_reg_n_0),
        .I4(byte_time_cntr_en2),
        .O(rx_time_coal_intr_i_1_n_0));
  FDRE rx_time_coal_intr_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_time_coal_intr_i_1_n_0),
        .Q(int_status[1]),
        .R(1'b0));
endmodule

module design_1_e_uart_0_0_uart_rx
   (\sample_clk_cntr_reg[8]_0 ,
    din,
    \dv_inhibit_cntr_reg[4]_0 ,
    wr_en,
    rx_samples_reg_s_2_0,
    rxd,
    s00_axi_aclk,
    \en_dly_reg[0]_0 ,
    s00_axi_aresetn,
    \sample_clk_cntr_reg[9]_0 ,
    p_0_in,
    \dv_inhibit_cntr_reg[4]_1 ,
    srst);
  output \sample_clk_cntr_reg[8]_0 ;
  output [7:0]din;
  output \dv_inhibit_cntr_reg[4]_0 ;
  output wr_en;
  input rx_samples_reg_s_2_0;
  input rxd;
  input s00_axi_aclk;
  input [0:0]\en_dly_reg[0]_0 ;
  input s00_axi_aresetn;
  input [9:0]\sample_clk_cntr_reg[9]_0 ;
  input [0:0]p_0_in;
  input \dv_inhibit_cntr_reg[4]_1 ;
  input srst;

  wire [7:0]din;
  wire \dv_inhibit_cntr[0]_i_1_n_0 ;
  wire \dv_inhibit_cntr[1]_i_1_n_0 ;
  wire \dv_inhibit_cntr[2]_i_1_n_0 ;
  wire \dv_inhibit_cntr[3]_i_1_n_0 ;
  wire \dv_inhibit_cntr[3]_i_2_n_0 ;
  wire \dv_inhibit_cntr[4]_i_1_n_0 ;
  wire \dv_inhibit_cntr[5]_i_1_n_0 ;
  wire \dv_inhibit_cntr[5]_i_2_n_0 ;
  wire \dv_inhibit_cntr[5]_i_3_n_0 ;
  wire \dv_inhibit_cntr_reg[4]_0 ;
  wire \dv_inhibit_cntr_reg[4]_1 ;
  wire \dv_inhibit_cntr_reg_n_0_[0] ;
  wire \dv_inhibit_cntr_reg_n_0_[1] ;
  wire \dv_inhibit_cntr_reg_n_0_[2] ;
  wire \dv_inhibit_cntr_reg_n_0_[3] ;
  wire \dv_inhibit_cntr_reg_n_0_[4] ;
  wire \dv_inhibit_cntr_reg_n_0_[5] ;
  wire [1:0]en_dly;
  wire [0:0]\en_dly_reg[0]_0 ;
  wire [0:0]p_0_in;
  wire [1:0]p_1_in;
  wire \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire \rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ;
  wire \rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ;
  wire rx_samples_reg_gate__0_n_0;
  wire rx_samples_reg_gate__1_n_0;
  wire rx_samples_reg_gate__2_n_0;
  wire rx_samples_reg_gate__3_n_0;
  wire rx_samples_reg_gate__4_n_0;
  wire rx_samples_reg_gate__5_n_0;
  wire rx_samples_reg_gate__6_n_0;
  wire rx_samples_reg_gate_n_0;
  wire \rx_samples_reg_n_0_[0] ;
  wire \rx_samples_reg_n_0_[43] ;
  wire \rx_samples_reg_n_0_[44] ;
  wire rx_samples_reg_s_0_n_0;
  wire rx_samples_reg_s_1_n_0;
  wire rx_samples_reg_s_2_0;
  wire rx_samples_reg_s_2_n_0;
  wire rx_samples_reg_s_n_0;
  wire rxd;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [9:0]sample_clk_cntr;
  wire \sample_clk_cntr[0]_i_1_n_0 ;
  wire \sample_clk_cntr[1]_i_1_n_0 ;
  wire \sample_clk_cntr[2]_i_1_n_0 ;
  wire \sample_clk_cntr[3]_i_1_n_0 ;
  wire \sample_clk_cntr[3]_i_2_n_0 ;
  wire \sample_clk_cntr[4]_i_1_n_0 ;
  wire \sample_clk_cntr[4]_i_2_n_0 ;
  wire \sample_clk_cntr[5]_i_1_n_0 ;
  wire \sample_clk_cntr[5]_i_2_n_0 ;
  wire \sample_clk_cntr[6]_i_1_n_0 ;
  wire \sample_clk_cntr[7]_i_1_n_0 ;
  wire \sample_clk_cntr[7]_i_2_n_0 ;
  wire \sample_clk_cntr[8]_i_1_n_0 ;
  wire \sample_clk_cntr[8]_i_2_n_0 ;
  wire \sample_clk_cntr[8]_i_3_n_0 ;
  wire \sample_clk_cntr[8]_i_4_n_0 ;
  wire \sample_clk_cntr[8]_i_5_n_0 ;
  wire \sample_clk_cntr[9]_i_2_n_0 ;
  wire \sample_clk_cntr[9]_i_3_n_0 ;
  wire \sample_clk_cntr_reg[8]_0 ;
  wire [9:0]\sample_clk_cntr_reg[9]_0 ;
  wire srst;
  wire wr_en;

  LUT6 #(
    .INIT(64'hFFFFFFFF000C5555)) 
    \dv_inhibit_cntr[0]_i_1 
       (.I0(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I1(\rx_samples_reg_n_0_[0] ),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .I4(\dv_inhibit_cntr_reg[4]_0 ),
        .I5(p_0_in),
        .O(\dv_inhibit_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000008)) 
    \dv_inhibit_cntr[1]_i_1 
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4]_0 ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[1] ),
        .O(\dv_inhibit_cntr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAAAB)) 
    \dv_inhibit_cntr[2]_i_1 
       (.I0(\dv_inhibit_cntr[3]_i_2_n_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .I2(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[2] ),
        .O(\dv_inhibit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBAAAAAAAAB)) 
    \dv_inhibit_cntr[3]_i_1 
       (.I0(\dv_inhibit_cntr[3]_i_2_n_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .I2(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[3] ),
        .O(\dv_inhibit_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777777F777777777)) 
    \dv_inhibit_cntr[3]_i_2 
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\dv_inhibit_cntr_reg[4]_0 ),
        .I3(p_1_in[1]),
        .I4(p_1_in[0]),
        .I5(\rx_samples_reg_n_0_[0] ),
        .O(\dv_inhibit_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \dv_inhibit_cntr[4]_i_1 
       (.I0(\dv_inhibit_cntr_reg[4]_1 ),
        .I1(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[2] ),
        .O(\dv_inhibit_cntr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dv_inhibit_cntr[5]_i_1 
       (.I0(\sample_clk_cntr_reg[8]_0 ),
        .I1(\dv_inhibit_cntr_reg[4]_0 ),
        .O(\dv_inhibit_cntr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0002FF00)) 
    \dv_inhibit_cntr[5]_i_2 
       (.I0(\rx_samples_reg_n_0_[0] ),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(\dv_inhibit_cntr_reg_n_0_[5] ),
        .I4(\dv_inhibit_cntr[5]_i_3_n_0 ),
        .I5(p_0_in),
        .O(\dv_inhibit_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \dv_inhibit_cntr[5]_i_3 
       (.I0(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[4] ),
        .O(\dv_inhibit_cntr[5]_i_3_n_0 ));
  FDRE \dv_inhibit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[0]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[1]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[2]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[3]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[4]_i_1_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dv_inhibit_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\dv_inhibit_cntr[5]_i_1_n_0 ),
        .D(\dv_inhibit_cntr[5]_i_2_n_0 ),
        .Q(\dv_inhibit_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \en_dly_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\en_dly_reg[0]_0 ),
        .Q(en_dly[0]),
        .R(srst));
  FDRE \en_dly_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_dly[0]),
        .Q(en_dly[1]),
        .R(srst));
  LUT4 #(
    .INIT(16'h0200)) 
    fifo_rx_i_1
       (.I0(\rx_samples_reg_n_0_[0] ),
        .I1(p_1_in[0]),
        .I2(p_1_in[1]),
        .I3(\dv_inhibit_cntr_reg[4]_0 ),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_rx_i_2
       (.I0(\dv_inhibit_cntr_reg_n_0_[4] ),
        .I1(\dv_inhibit_cntr_reg_n_0_[2] ),
        .I2(\dv_inhibit_cntr_reg_n_0_[1] ),
        .I3(\dv_inhibit_cntr_reg_n_0_[0] ),
        .I4(\dv_inhibit_cntr_reg_n_0_[3] ),
        .I5(\dv_inhibit_cntr_reg_n_0_[5] ),
        .O(\dv_inhibit_cntr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \rx_samples[44]_i_2 
       (.I0(p_0_in),
        .I1(sample_clk_cntr[8]),
        .I2(sample_clk_cntr[6]),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[7]),
        .I5(sample_clk_cntr[9]),
        .O(\sample_clk_cntr_reg[8]_0 ));
  FDSE \rx_samples_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(p_1_in[0]),
        .Q(\rx_samples_reg_n_0_[0] ),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__4_n_0),
        .Q(din[1]),
        .S(1'b0));
  FDRE \rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[2]),
        .Q(\rx_samples_reg[14]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__3_n_0),
        .Q(din[2]),
        .S(1'b0));
  FDRE \rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[3]),
        .Q(\rx_samples_reg[19]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__2_n_0),
        .Q(din[3]),
        .S(1'b0));
  FDRE \rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[4]),
        .Q(\rx_samples_reg[24]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__1_n_0),
        .Q(din[4]),
        .S(1'b0));
  FDRE \rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[5]),
        .Q(\rx_samples_reg[29]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__6_n_0),
        .Q(p_1_in[1]),
        .S(1'b0));
  FDSE \rx_samples_reg[32] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__0_n_0),
        .Q(din[5]),
        .S(1'b0));
  FDRE \rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[6]),
        .Q(\rx_samples_reg[34]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[37] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate_n_0),
        .Q(din[6]),
        .S(1'b0));
  FDRE \rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[7]),
        .Q(\rx_samples_reg[39]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDRE \rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  FDSE \rx_samples_reg[42] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg_n_0_[43] ),
        .Q(din[7]),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[43] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg_n_0_[44] ),
        .Q(\rx_samples_reg_n_0_[43] ),
        .S(rx_samples_reg_s_2_0));
  FDSE \rx_samples_reg[44] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rxd),
        .Q(\rx_samples_reg_n_0_[44] ),
        .S(rx_samples_reg_s_2_0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[0]),
        .Q(\rx_samples_reg[4]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  FDSE \rx_samples_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_gate__5_n_0),
        .Q(din[0]),
        .S(1'b0));
  FDRE \rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2 
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(\rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ),
        .Q(\rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\uart_top/uart_rx/rx_samples_reg " *) 
  (* srl_name = "inst/\\uart_top/uart_rx/rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 " *) 
  SRL16E \rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .CLK(s00_axi_aclk),
        .D(din[1]),
        .Q(\rx_samples_reg[9]_srl3____uart_top_uart_rx_rx_samples_reg_s_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[38]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__0
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[33]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__1
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[28]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__2
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[23]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__3
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[18]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__4
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[13]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__5
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[8]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    rx_samples_reg_gate__6
       (.I0(\en_dly_reg[0]_0 ),
        .I1(s00_axi_aresetn),
        .I2(\rx_samples_reg[3]_uart_top_uart_rx_rx_samples_reg_s_2_n_0 ),
        .I3(rx_samples_reg_s_2_n_0),
        .O(rx_samples_reg_gate__6_n_0));
  FDSE rx_samples_reg_s
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(1'b0),
        .Q(rx_samples_reg_s_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_0
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_n_0),
        .Q(rx_samples_reg_s_0_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_1
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_0_n_0),
        .Q(rx_samples_reg_s_1_n_0),
        .S(rx_samples_reg_s_2_0));
  FDSE rx_samples_reg_s_2
       (.C(s00_axi_aclk),
        .CE(\sample_clk_cntr_reg[8]_0 ),
        .D(rx_samples_reg_s_1_n_0),
        .Q(rx_samples_reg_s_2_n_0),
        .S(rx_samples_reg_s_2_0));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \sample_clk_cntr[0]_i_1 
       (.I0(\sample_clk_cntr[8]_i_2_n_0 ),
        .I1(\sample_clk_cntr_reg[9]_0 [0]),
        .I2(sample_clk_cntr[0]),
        .I3(\sample_clk_cntr_reg[8]_0 ),
        .I4(en_dly[1]),
        .I5(en_dly[0]),
        .O(\sample_clk_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[1]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [1]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[1]),
        .O(\sample_clk_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F222222222F2)) 
    \sample_clk_cntr[2]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [2]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(sample_clk_cntr[1]),
        .I4(sample_clk_cntr[0]),
        .I5(sample_clk_cntr[2]),
        .O(\sample_clk_cntr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[3]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [3]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[3]_i_2_n_0 ),
        .I4(sample_clk_cntr[3]),
        .O(\sample_clk_cntr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_clk_cntr[3]_i_2 
       (.I0(sample_clk_cntr[2]),
        .I1(sample_clk_cntr[1]),
        .I2(sample_clk_cntr[0]),
        .O(\sample_clk_cntr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[4]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [4]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[4]_i_2_n_0 ),
        .I4(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_clk_cntr[4]_i_2 
       (.I0(sample_clk_cntr[3]),
        .I1(sample_clk_cntr[0]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[2]),
        .O(\sample_clk_cntr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[5]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [5]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[5]_i_2_n_0 ),
        .I4(sample_clk_cntr[5]),
        .O(\sample_clk_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_clk_cntr[5]_i_2 
       (.I0(sample_clk_cntr[4]),
        .I1(sample_clk_cntr[2]),
        .I2(sample_clk_cntr[1]),
        .I3(sample_clk_cntr[0]),
        .I4(sample_clk_cntr[3]),
        .O(\sample_clk_cntr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[6]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [6]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[6]),
        .O(\sample_clk_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F222222222F2)) 
    \sample_clk_cntr[7]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [7]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[7]_i_2_n_0 ),
        .I4(sample_clk_cntr[6]),
        .I5(sample_clk_cntr[7]),
        .O(\sample_clk_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sample_clk_cntr[7]_i_2 
       (.I0(sample_clk_cntr[5]),
        .I1(sample_clk_cntr[3]),
        .I2(sample_clk_cntr[0]),
        .I3(sample_clk_cntr[1]),
        .I4(sample_clk_cntr[2]),
        .I5(sample_clk_cntr[4]),
        .O(\sample_clk_cntr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF22222F2)) 
    \sample_clk_cntr[8]_i_1 
       (.I0(\sample_clk_cntr_reg[9]_0 [8]),
        .I1(\sample_clk_cntr[8]_i_2_n_0 ),
        .I2(\sample_clk_cntr[8]_i_3_n_0 ),
        .I3(\sample_clk_cntr[8]_i_4_n_0 ),
        .I4(sample_clk_cntr[8]),
        .O(\sample_clk_cntr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD0FFFFFF)) 
    \sample_clk_cntr[8]_i_2 
       (.I0(en_dly[0]),
        .I1(en_dly[1]),
        .I2(\sample_clk_cntr[8]_i_5_n_0 ),
        .I3(\en_dly_reg[0]_0 ),
        .I4(s00_axi_aresetn),
        .O(\sample_clk_cntr[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \sample_clk_cntr[8]_i_3 
       (.I0(\sample_clk_cntr_reg[8]_0 ),
        .I1(en_dly[1]),
        .I2(en_dly[0]),
        .O(\sample_clk_cntr[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sample_clk_cntr[8]_i_4 
       (.I0(sample_clk_cntr[7]),
        .I1(\sample_clk_cntr[7]_i_2_n_0 ),
        .I2(sample_clk_cntr[6]),
        .O(\sample_clk_cntr[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample_clk_cntr[8]_i_5 
       (.I0(sample_clk_cntr[9]),
        .I1(sample_clk_cntr[7]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[6]),
        .I4(sample_clk_cntr[8]),
        .O(\sample_clk_cntr[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC2AAC2C2)) 
    \sample_clk_cntr[9]_i_2 
       (.I0(\sample_clk_cntr_reg[9]_0 [9]),
        .I1(sample_clk_cntr[9]),
        .I2(\sample_clk_cntr[9]_i_3_n_0 ),
        .I3(en_dly[1]),
        .I4(en_dly[0]),
        .O(\sample_clk_cntr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_clk_cntr[9]_i_3 
       (.I0(sample_clk_cntr[8]),
        .I1(sample_clk_cntr[6]),
        .I2(\sample_clk_cntr[7]_i_2_n_0 ),
        .I3(sample_clk_cntr[7]),
        .O(\sample_clk_cntr[9]_i_3_n_0 ));
  FDSE \sample_clk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[0]_i_1_n_0 ),
        .Q(sample_clk_cntr[0]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[1]_i_1_n_0 ),
        .Q(sample_clk_cntr[1]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[2]_i_1_n_0 ),
        .Q(sample_clk_cntr[2]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[3]_i_1_n_0 ),
        .Q(sample_clk_cntr[3]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[4]_i_1_n_0 ),
        .Q(sample_clk_cntr[4]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[5]_i_1_n_0 ),
        .Q(sample_clk_cntr[5]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[6]_i_1_n_0 ),
        .Q(sample_clk_cntr[6]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[7]_i_1_n_0 ),
        .Q(sample_clk_cntr[7]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[8]_i_1_n_0 ),
        .Q(sample_clk_cntr[8]),
        .S(p_0_in));
  FDSE \sample_clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\sample_clk_cntr[9]_i_2_n_0 ),
        .Q(sample_clk_cntr[9]),
        .S(p_0_in));
endmodule

module design_1_e_uart_0_0_uart_top
   (int_status,
    data_count,
    dout,
    \count_reg[10] ,
    \sample_clk_cntr_reg[8] ,
    rx_empty,
    txd,
    \dv_inhibit_cntr_reg[4] ,
    Q,
    \slv_reg5_reg[2] ,
    s00_axi_aclk,
    srst,
    \DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    wr_en,
    rd_en,
    rx_samples_reg_s_2,
    rxd,
    S,
    rx_byte_cnt_coal_intr_reg,
    \en_dly_reg[0] ,
    s00_axi_aresetn,
    rx_time_coal_intr_clr,
    \clk_cntr_reg[11] ,
    \tx_bit_cntr_reg[2] ,
    \sample_clk_cntr_reg[9] ,
    p_0_in,
    \dv_inhibit_cntr_reg[4]_0 ,
    rx_byte_cnt_coal_intr1_carry,
    intr_reg,
    SR,
    \byte_time_cntr_reg[0] );
  output [4:0]int_status;
  output [10:0]data_count;
  output [7:0]dout;
  output [10:0]\count_reg[10] ;
  output \sample_clk_cntr_reg[8] ;
  output rx_empty;
  output txd;
  output \dv_inhibit_cntr_reg[4] ;
  output [0:0]Q;
  output \slv_reg5_reg[2] ;
  input s00_axi_aclk;
  input srst;
  input [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input wr_en;
  input rd_en;
  input rx_samples_reg_s_2;
  input rxd;
  input [0:0]S;
  input [0:0]rx_byte_cnt_coal_intr_reg;
  input [1:0]\en_dly_reg[0] ;
  input s00_axi_aresetn;
  input rx_time_coal_intr_clr;
  input [12:0]\clk_cntr_reg[11] ;
  input \tx_bit_cntr_reg[2] ;
  input [9:0]\sample_clk_cntr_reg[9] ;
  input [0:0]p_0_in;
  input \dv_inhibit_cntr_reg[4]_0 ;
  input [21:0]rx_byte_cnt_coal_intr1_carry;
  input [4:0]intr_reg;
  input [0:0]SR;
  input [0:0]\byte_time_cntr_reg[0] ;

  wire [7:0]\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]\byte_time_cntr_reg[0] ;
  wire [12:0]\clk_cntr_reg[11] ;
  wire [10:0]\count_reg[10] ;
  wire [10:0]data_count;
  wire [7:0]dout;
  wire \dv_inhibit_cntr_reg[4] ;
  wire \dv_inhibit_cntr_reg[4]_0 ;
  wire [1:0]\en_dly_reg[0] ;
  wire int_holdoff_n_4;
  wire int_holdoff_n_5;
  wire [4:0]int_status;
  wire [4:0]intr_reg;
  wire [0:0]p_0_in;
  wire rd_en;
  wire [7:0]rx_byte;
  wire [21:0]rx_byte_cnt_coal_intr1_carry;
  wire [0:0]rx_byte_cnt_coal_intr_reg;
  wire rx_byte_dv;
  wire rx_empty;
  wire rx_empty_i_1_n_0;
  wire rx_samples_reg_s_2;
  wire rx_time_coal_intr_clr;
  wire rxd;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \sample_clk_cntr_reg[8] ;
  wire [9:0]\sample_clk_cntr_reg[9] ;
  wire \slv_reg5_reg[2] ;
  wire srst;
  wire \tx_bit_cntr_reg[2] ;
  wire [7:0]tx_byte;
  wire tx_byte_dv;
  wire tx_byte_rd;
  wire txd;
  wire wr_en;
  wire NLW_fifo_rx_almost_empty_UNCONNECTED;
  wire NLW_fifo_rx_empty_UNCONNECTED;
  wire NLW_fifo_rx_full_UNCONNECTED;
  wire NLW_fifo_rx_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_rx_valid_UNCONNECTED;
  wire NLW_fifo_rx_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_tx_full_UNCONNECTED;
  wire NLW_fifo_tx_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_tx_wr_rst_busy_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_e_uart_0_0_fifo_generator_0__xdcDup__1 fifo_rx
       (.almost_empty(NLW_fifo_rx_almost_empty_UNCONNECTED),
        .clk(s00_axi_aclk),
        .data_count(\count_reg[10] ),
        .din(rx_byte),
        .dout(dout),
        .empty(NLW_fifo_rx_empty_UNCONNECTED),
        .full(NLW_fifo_rx_full_UNCONNECTED),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_fifo_rx_rd_rst_busy_UNCONNECTED),
        .srst(srst),
        .valid(NLW_fifo_rx_valid_UNCONNECTED),
        .wr_en(rx_byte_dv),
        .wr_rst_busy(NLW_fifo_rx_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_e_uart_0_0_fifo_generator_0 fifo_tx
       (.almost_empty(int_status[1]),
        .clk(s00_axi_aclk),
        .data_count(data_count),
        .din(\DEVICE_8SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .dout(tx_byte),
        .empty(int_status[0]),
        .full(NLW_fifo_tx_full_UNCONNECTED),
        .rd_en(tx_byte_rd),
        .rd_rst_busy(NLW_fifo_tx_rd_rst_busy_UNCONNECTED),
        .srst(srst),
        .valid(tx_byte_dv),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_fifo_tx_wr_rst_busy_UNCONNECTED));
  design_1_e_uart_0_0_int_holdoff int_holdoff
       (.Q(Q),
        .S(S),
        .\bit_times_elapsed_reg[3]_0 (\clk_cntr_reg[11] ),
        .\byte_time_cntr_reg[0]_0 (\byte_time_cntr_reg[0] ),
        .\count_reg[10] (int_holdoff_n_5),
        .\count_reg[6] (int_holdoff_n_4),
        .int_status(int_status[4:3]),
        .intr_reg(intr_reg),
        .intr_reg_0(int_status[1:0]),
        .rx_byte_cnt_coal_intr1_carry_0(rx_byte_cnt_coal_intr1_carry),
        .rx_byte_cnt_coal_intr_reg_0(rx_byte_cnt_coal_intr_reg),
        .rx_byte_cnt_coal_intr_reg_1(\count_reg[10] ),
        .rx_empty_d1_reg_0(rx_empty),
        .rx_time_coal_intr_clr(rx_time_coal_intr_clr),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg5_reg[2] (\slv_reg5_reg[2] ),
        .srst(srst));
  LUT1 #(
    .INIT(2'h1)) 
    \int_status[2]_INST_0 
       (.I0(rx_empty),
        .O(int_status[2]));
  LUT5 #(
    .INIT(32'h00000008)) 
    rx_empty_i_1
       (.I0(int_holdoff_n_4),
        .I1(int_holdoff_n_5),
        .I2(\count_reg[10] [0]),
        .I3(\count_reg[10] [1]),
        .I4(\count_reg[10] [2]),
        .O(rx_empty_i_1_n_0));
  FDSE rx_empty_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_empty_i_1_n_0),
        .Q(rx_empty),
        .S(srst));
  design_1_e_uart_0_0_uart_rx uart_rx
       (.din(rx_byte),
        .\dv_inhibit_cntr_reg[4]_0 (\dv_inhibit_cntr_reg[4] ),
        .\dv_inhibit_cntr_reg[4]_1 (\dv_inhibit_cntr_reg[4]_0 ),
        .\en_dly_reg[0]_0 (\en_dly_reg[0] [1]),
        .p_0_in(p_0_in),
        .rx_samples_reg_s_2_0(rx_samples_reg_s_2),
        .rxd(rxd),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\sample_clk_cntr_reg[8]_0 (\sample_clk_cntr_reg[8] ),
        .\sample_clk_cntr_reg[9]_0 (\sample_clk_cntr_reg[9] ),
        .srst(srst),
        .wr_en(rx_byte_dv));
  design_1_e_uart_0_0_uart_tx uart_tx
       (.SR(SR),
        .\clk_cntr_reg[11]_0 (\clk_cntr_reg[11] ),
        .dout(tx_byte),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\tx_bit_cntr_reg[2]_0 (\tx_bit_cntr_reg[2] ),
        .tx_byte_rd(tx_byte_rd),
        .tx_byte_rd_reg_0(\en_dly_reg[0] [0]),
        .txd(txd),
        .valid(tx_byte_dv));
endmodule

module design_1_e_uart_0_0_uart_tx
   (tx_byte_rd,
    txd,
    s00_axi_aclk,
    \clk_cntr_reg[11]_0 ,
    tx_byte_rd_reg_0,
    s00_axi_aresetn,
    \tx_bit_cntr_reg[2]_0 ,
    valid,
    dout,
    SR);
  output tx_byte_rd;
  output txd;
  input s00_axi_aclk;
  input [12:0]\clk_cntr_reg[11]_0 ;
  input [0:0]tx_byte_rd_reg_0;
  input s00_axi_aresetn;
  input \tx_bit_cntr_reg[2]_0 ;
  input valid;
  input [7:0]dout;
  input [0:0]SR;

  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_current_state[2]_i_8_n_0 ;
  wire [0:0]SR;
  wire [12:0]clk_cntr;
  wire \clk_cntr[0]_i_2_n_0 ;
  wire \clk_cntr[10]_i_2_n_0 ;
  wire \clk_cntr[10]_i_3_n_0 ;
  wire \clk_cntr[11]_i_2_n_0 ;
  wire \clk_cntr[11]_i_3_n_0 ;
  wire \clk_cntr[12]_i_2_n_0 ;
  wire \clk_cntr[12]_i_3_n_0 ;
  wire \clk_cntr[12]_i_4_n_0 ;
  wire \clk_cntr[12]_i_5_n_0 ;
  wire \clk_cntr[1]_i_2_n_0 ;
  wire \clk_cntr[2]_i_2_n_0 ;
  wire \clk_cntr[3]_i_2_n_0 ;
  wire \clk_cntr[4]_i_2_n_0 ;
  wire \clk_cntr[4]_i_3_n_0 ;
  wire \clk_cntr[5]_i_2_n_0 ;
  wire \clk_cntr[5]_i_3_n_0 ;
  wire \clk_cntr[6]_i_2_n_0 ;
  wire \clk_cntr[6]_i_3_n_0 ;
  wire \clk_cntr[7]_i_2_n_0 ;
  wire \clk_cntr[8]_i_2_n_0 ;
  wire \clk_cntr[9]_i_2_n_0 ;
  wire [12:0]clk_cntr_0;
  wire [12:0]\clk_cntr_reg[11]_0 ;
  wire [2:0]current_state;
  wire [7:0]dout;
  wire [2:0]next_state;
  wire [7:0]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \tx_bit_cntr[0]_i_1_n_0 ;
  wire \tx_bit_cntr[1]_i_1_n_0 ;
  wire \tx_bit_cntr[2]_i_1_n_0 ;
  wire \tx_bit_cntr[2]_i_2_n_0 ;
  wire \tx_bit_cntr[2]_i_3_n_0 ;
  wire \tx_bit_cntr_reg[2]_0 ;
  wire \tx_bit_cntr_reg_n_0_[0] ;
  wire \tx_bit_cntr_reg_n_0_[1] ;
  wire \tx_bit_cntr_reg_n_0_[2] ;
  wire [7:1]tx_byte_q;
  wire \tx_byte_q[7]_i_1_n_0 ;
  wire \tx_byte_q_reg_n_0_[0] ;
  wire tx_byte_rd;
  wire tx_byte_rd_d;
  wire tx_byte_rd_i_1_n_0;
  wire [0:0]tx_byte_rd_reg_0;
  wire txd;
  wire txd_i_1_n_0;
  wire valid;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCDFC0000)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state[1]),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I5(tx_byte_rd_d),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\tx_bit_cntr_reg_n_0_[2] ),
        .I1(\tx_bit_cntr_reg_n_0_[0] ),
        .I2(\tx_bit_cntr_reg_n_0_[1] ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(clk_cntr[11]),
        .I2(clk_cntr[12]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(valid),
        .I1(tx_byte_rd_reg_0),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(tx_byte_rd_d));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(clk_cntr[10]),
        .I1(clk_cntr[9]),
        .I2(clk_cntr[8]),
        .I3(clk_cntr[7]),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[2]_i_8 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[6]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000,START:001,TX_B:010,STOP:011,DONE:100," *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF2F22222FFF22222)) 
    \clk_cntr[0]_i_1 
       (.I0(\clk_cntr_reg[11]_0 [0]),
        .I1(\clk_cntr[12]_i_2_n_0 ),
        .I2(\clk_cntr[0]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [1]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \clk_cntr[0]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I4(clk_cntr[0]),
        .O(\clk_cntr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A22FFFF2A222A22)) 
    \clk_cntr[10]_i_1 
       (.I0(\clk_cntr[12]_i_4_n_0 ),
        .I1(\clk_cntr[10]_i_2_n_0 ),
        .I2(\clk_cntr[11]_i_3_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [11]),
        .I4(\clk_cntr[12]_i_2_n_0 ),
        .I5(\clk_cntr_reg[11]_0 [10]),
        .O(clk_cntr_0[10]));
  LUT6 #(
    .INIT(64'h000000AAFFFFFF57)) 
    \clk_cntr[10]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[10]_i_3_n_0 ),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_cntr[10]_i_3 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .O(\clk_cntr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[11]_i_1 
       (.I0(\clk_cntr[11]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [11]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [12]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0FA7)) 
    \clk_cntr[11]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \clk_cntr[11]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF444444444444)) 
    \clk_cntr[12]_i_1 
       (.I0(\clk_cntr[12]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[12]_i_3_n_0 ),
        .I4(clk_cntr[12]),
        .I5(\clk_cntr[12]_i_4_n_0 ),
        .O(clk_cntr_0[12]));
  LUT6 #(
    .INIT(64'h1555FFFFFFFFFFFF)) 
    \clk_cntr[12]_i_2 
       (.I0(tx_byte_rd_d),
        .I1(next_state[1]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(\clk_cntr[12]_i_5_n_0 ),
        .I4(tx_byte_rd_reg_0),
        .I5(s00_axi_aresetn),
        .O(\clk_cntr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \clk_cntr[12]_i_3 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[7]),
        .I2(clk_cntr[8]),
        .I3(clk_cntr[9]),
        .I4(clk_cntr[10]),
        .O(\clk_cntr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008080808080808)) 
    \clk_cntr[12]_i_4 
       (.I0(tx_byte_rd_reg_0),
        .I1(s00_axi_aresetn),
        .I2(tx_byte_rd_d),
        .I3(next_state[1]),
        .I4(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I5(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \clk_cntr[12]_i_5 
       (.I0(clk_cntr[12]),
        .I1(clk_cntr[11]),
        .I2(clk_cntr[7]),
        .I3(clk_cntr[8]),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[1]_i_1 
       (.I0(\clk_cntr[1]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [1]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [2]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[1]));
  LUT6 #(
    .INIT(64'h66666666666666F6)) 
    \clk_cntr[1]_i_2 
       (.I0(clk_cntr[0]),
        .I1(clk_cntr[1]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[2]_i_1 
       (.I0(\clk_cntr[2]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [2]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [3]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[2]));
  LUT5 #(
    .INIT(32'hFF1E1E1E)) 
    \clk_cntr[2]_i_2 
       (.I0(clk_cntr[1]),
        .I1(clk_cntr[0]),
        .I2(clk_cntr[2]),
        .I3(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I4(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[3]_i_1 
       (.I0(\clk_cntr[3]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [3]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [4]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[3]));
  LUT6 #(
    .INIT(64'hFFFF01FE01FE01FE)) 
    \clk_cntr[3]_i_2 
       (.I0(clk_cntr[2]),
        .I1(clk_cntr[0]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[3]),
        .I4(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I5(\clk_cntr[12]_i_5_n_0 ),
        .O(\clk_cntr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[4]_i_1 
       (.I0(\clk_cntr[4]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [4]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [5]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[4]));
  LUT6 #(
    .INIT(64'h66666666666666F6)) 
    \clk_cntr[4]_i_2 
       (.I0(\clk_cntr[4]_i_3_n_0 ),
        .I1(clk_cntr[4]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_cntr[4]_i_3 
       (.I0(clk_cntr[3]),
        .I1(clk_cntr[1]),
        .I2(clk_cntr[0]),
        .I3(clk_cntr[2]),
        .O(\clk_cntr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[5]_i_1 
       (.I0(\clk_cntr[5]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [5]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [6]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[5]));
  LUT6 #(
    .INIT(64'h3C3C3C3C3C3C3C3D)) 
    \clk_cntr[5]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[5]_i_3_n_0 ),
        .I2(clk_cntr[5]),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_cntr[5]_i_3 
       (.I0(clk_cntr[4]),
        .I1(clk_cntr[2]),
        .I2(clk_cntr[0]),
        .I3(clk_cntr[1]),
        .I4(clk_cntr[3]),
        .O(\clk_cntr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22222F222222)) 
    \clk_cntr[6]_i_1 
       (.I0(\clk_cntr_reg[11]_0 [6]),
        .I1(\clk_cntr[12]_i_2_n_0 ),
        .I2(\clk_cntr[11]_i_3_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [7]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[6]_i_2_n_0 ),
        .O(clk_cntr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h99999998)) 
    \clk_cntr[6]_i_2 
       (.I0(clk_cntr[6]),
        .I1(\clk_cntr[6]_i_3_n_0 ),
        .I2(clk_cntr[12]),
        .I3(clk_cntr[11]),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_cntr[6]_i_3 
       (.I0(clk_cntr[5]),
        .I1(clk_cntr[3]),
        .I2(clk_cntr[1]),
        .I3(clk_cntr[0]),
        .I4(clk_cntr[2]),
        .I5(clk_cntr[4]),
        .O(\clk_cntr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[7]_i_1 
       (.I0(\clk_cntr[7]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [7]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [8]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h9999999D)) 
    \clk_cntr[7]_i_2 
       (.I0(clk_cntr[7]),
        .I1(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I2(clk_cntr[12]),
        .I3(clk_cntr[11]),
        .I4(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[8]_i_1 
       (.I0(\clk_cntr[8]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [8]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [9]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[8]));
  LUT6 #(
    .INIT(64'h63636363636363F3)) 
    \clk_cntr[8]_i_2 
       (.I0(clk_cntr[7]),
        .I1(clk_cntr[8]),
        .I2(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I3(clk_cntr[12]),
        .I4(clk_cntr[11]),
        .I5(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .O(\clk_cntr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D0C0CFF5D0C0C)) 
    \clk_cntr[9]_i_1 
       (.I0(\clk_cntr[9]_i_2_n_0 ),
        .I1(\clk_cntr_reg[11]_0 [9]),
        .I2(\clk_cntr[12]_i_2_n_0 ),
        .I3(\clk_cntr_reg[11]_0 [10]),
        .I4(\clk_cntr[12]_i_4_n_0 ),
        .I5(\clk_cntr[11]_i_3_n_0 ),
        .O(clk_cntr_0[9]));
  LUT6 #(
    .INIT(64'h00AAFF5500AAFF57)) 
    \clk_cntr[9]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_8_n_0 ),
        .I1(clk_cntr[12]),
        .I2(clk_cntr[11]),
        .I3(\clk_cntr[10]_i_3_n_0 ),
        .I4(clk_cntr[9]),
        .I5(clk_cntr[10]),
        .O(\clk_cntr[9]_i_2_n_0 ));
  FDRE \clk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[0]),
        .Q(clk_cntr[0]),
        .R(1'b0));
  FDRE \clk_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[10]),
        .Q(clk_cntr[10]),
        .R(1'b0));
  FDRE \clk_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[11]),
        .Q(clk_cntr[11]),
        .R(1'b0));
  FDRE \clk_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[12]),
        .Q(clk_cntr[12]),
        .R(1'b0));
  FDRE \clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[1]),
        .Q(clk_cntr[1]),
        .R(1'b0));
  FDRE \clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[2]),
        .Q(clk_cntr[2]),
        .R(1'b0));
  FDRE \clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[3]),
        .Q(clk_cntr[3]),
        .R(1'b0));
  FDRE \clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[4]),
        .Q(clk_cntr[4]),
        .R(1'b0));
  FDRE \clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[5]),
        .Q(clk_cntr[5]),
        .R(1'b0));
  FDRE \clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[6]),
        .Q(clk_cntr[6]),
        .R(1'b0));
  FDRE \clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[7]),
        .Q(clk_cntr[7]),
        .R(1'b0));
  FDRE \clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[8]),
        .Q(clk_cntr[8]),
        .R(1'b0));
  FDRE \clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cntr_0[9]),
        .Q(clk_cntr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h555D555500000000)) 
    \tx_bit_cntr[0]_i_1 
       (.I0(\tx_bit_cntr_reg_n_0_[0] ),
        .I1(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_bit_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99F9000000000000)) 
    \tx_bit_cntr[1]_i_1 
       (.I0(\tx_bit_cntr_reg_n_0_[1] ),
        .I1(\tx_bit_cntr_reg_n_0_[0] ),
        .I2(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I3(\tx_bit_cntr[2]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .I5(tx_byte_rd_reg_0),
        .O(\tx_bit_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F77F777777777)) 
    \tx_bit_cntr[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(tx_byte_rd_reg_0),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .O(\tx_bit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE1E1FFE100000000)) 
    \tx_bit_cntr[2]_i_2 
       (.I0(\tx_bit_cntr_reg_n_0_[0] ),
        .I1(\tx_bit_cntr_reg_n_0_[1] ),
        .I2(\tx_bit_cntr_reg_n_0_[2] ),
        .I3(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I4(\tx_bit_cntr[2]_i_3_n_0 ),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_bit_cntr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \tx_bit_cntr[2]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\tx_bit_cntr[2]_i_3_n_0 ));
  FDRE \tx_bit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[0]_i_1_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_bit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[1]_i_1_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_bit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_bit_cntr[2]_i_1_n_0 ),
        .D(\tx_bit_cntr[2]_i_2_n_0 ),
        .Q(\tx_bit_cntr_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[0]_i_1 
       (.I0(dout[0]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[1]_i_1 
       (.I0(dout[1]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[2]_i_1 
       (.I0(dout[2]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[3]_i_1 
       (.I0(dout[3]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[4]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[4]_i_1 
       (.I0(dout[4]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[5]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[5]_i_1 
       (.I0(dout[5]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[6]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_byte_q[6]_i_1 
       (.I0(dout[6]),
        .I1(tx_byte_rd),
        .I2(tx_byte_q[7]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFF020000000000)) 
    \tx_byte_q[7]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(tx_byte_rd),
        .I5(\tx_bit_cntr_reg[2]_0 ),
        .O(\tx_byte_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_byte_q[7]_i_2 
       (.I0(tx_byte_rd),
        .I1(dout[7]),
        .O(p_1_in[7]));
  FDRE \tx_byte_q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\tx_byte_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \tx_byte_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(tx_byte_q[1]),
        .R(SR));
  FDRE \tx_byte_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(tx_byte_q[2]),
        .R(SR));
  FDRE \tx_byte_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(tx_byte_q[3]),
        .R(SR));
  FDRE \tx_byte_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(tx_byte_q[4]),
        .R(SR));
  FDRE \tx_byte_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(tx_byte_q[5]),
        .R(SR));
  FDRE \tx_byte_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(tx_byte_q[6]),
        .R(SR));
  FDRE \tx_byte_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\tx_byte_q[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(tx_byte_q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    tx_byte_rd_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(valid),
        .I4(s00_axi_aresetn),
        .I5(tx_byte_rd_reg_0),
        .O(tx_byte_rd_i_1_n_0));
  FDRE tx_byte_rd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_byte_rd_i_1_n_0),
        .Q(tx_byte_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFECFFFFF3200FFFF)) 
    txd_i_1
       (.I0(\tx_byte_q_reg_n_0_[0] ),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\tx_bit_cntr_reg[2]_0 ),
        .I5(txd),
        .O(txd_i_1_n_0));
  FDRE txd_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(txd_i_1_n_0),
        .Q(txd),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 248320)
`pragma protect data_block
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
C3TtkVYkpx6RfMwOzs8nlTRg+EpQQjXb4IgptQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
