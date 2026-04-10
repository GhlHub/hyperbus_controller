// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Apr  9 09:04:21 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /raid/work/hyperbus_controller_freertos_port/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.gen/sources_1/bd/design_1/ip/design_1_e_uart_0_0/design_1_e_uart_0_0_sim_netlist.v
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

(* C_S00_AXI_ADDR_WIDTH = "6" *) (* C_S00_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "e_uart" *) 
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

(* ORIG_REF_NAME = "e_uart_slave_lite_v1_0_S00_AXI" *) 
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

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_generator_0" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
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

(* ORIG_REF_NAME = "int_holdoff" *) 
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

(* ORIG_REF_NAME = "uart_rx" *) 
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

(* ORIG_REF_NAME = "uart_top" *) 
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

(* ORIG_REF_NAME = "uart_tx" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 249280)
`pragma protect data_block
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
Y6Q3fgavbPNeXCt3huJdFvT+TQ==
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
