// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Apr 11 13:56:13 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_quad_spi_0_0 -prefix
//               design_1_axi_quad_spi_0_0_ design_1_axi_quad_spi_0_0_sim_netlist.v
// Design      : design_1_axi_quad_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_quad_spi_0_0_address_decoder
   (p_1_in_0,
    p_2_in,
    p_3_in,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    ip2Bus_RdAck_intr_reg_hole0,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_WrAck_core_reg0,
    SPICR_3_4_Reset,
    Bus_RNW_reg_reg_3,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \ip_irpt_enable_reg_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2 ,
    Bus_RNW_reg_reg_4,
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ,
    SPICR_data_int_reg0,
    bus2ip_wrce_int,
    irpt_wrack,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    interrupt_wrce_strb,
    \ip_irpt_enable_reg_reg[6] ,
    Bus_RNW_reg_reg_5,
    reset_trig0,
    sw_rst_cond,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    Bus_RNW_reg_reg_6,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    modf_reg,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    \s_axi_wdata[31] ,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ,
    Q,
    s_axi_aclk,
    ip2Bus_RdAck_core_reg,
    almost_full,
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ,
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ,
    dout,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] ,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_1_in19_in,
    SPISR_1_LOOP_Back_Error_int,
    SPISSR_frm_axi_clk,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0 ,
    empty,
    rx_fifo_empty_i,
    ip2Bus_WrAck_core_reg_1,
    irpt_wrack_d1,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    s_axi_wdata,
    sw_rst_cond_d1,
    p_0_in,
    irpt_rdack_d1,
    spicr_1_spe_frm_axi_clk,
    p_1_in34_in,
    dest_out,
    p_1_in31_in,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    p_1_in28_in,
    sr_3_MODF_int,
    p_1_in25_in,
    spicr_5_txfifo_rst_frm_axi_clk,
    p_1_in22_in,
    spisel_d1_reg_to_axi_clk,
    p_1_in16_in,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    SPISR_2_MSB_Error_int,
    p_1_in13_in,
    p_1_in10_in,
    SPISR_0_CMD_Error_to_axi_clk,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in_1,
    bus2ip_rnw_i,
    s_axi_aresetn,
    ip2bus_rdack_int,
    s_axi_arready,
    ip2bus_wrack_int,
    s_axi_awready,
    s_axi_awready_0);
  output p_1_in_0;
  output p_2_in;
  output p_3_in;
  output \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ;
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output ip2Bus_RdAck_intr_reg_hole0;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_WrAck_core_reg0;
  output SPICR_3_4_Reset;
  output Bus_RNW_reg_reg_3;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \ip_irpt_enable_reg_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2 ;
  output Bus_RNW_reg_reg_4;
  output \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  output SPICR_data_int_reg0;
  output [1:0]bus2ip_wrce_int;
  output irpt_wrack;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  output interrupt_wrce_strb;
  output \ip_irpt_enable_reg_reg[6] ;
  output Bus_RNW_reg_reg_5;
  output reset_trig0;
  output sw_rst_cond;
  output [6:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  output Bus_RNW_reg_reg_6;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output modf_reg;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output \s_axi_wdata[31] ;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  input Q;
  input s_axi_aclk;
  input ip2Bus_RdAck_core_reg;
  input almost_full;
  input [4:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  input \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ;
  input [7:0]dout;
  input [13:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] ;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_1_in19_in;
  input SPISR_1_LOOP_Back_Error_int;
  input [0:0]SPISSR_frm_axi_clk;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0 ;
  input empty;
  input rx_fifo_empty_i;
  input ip2Bus_WrAck_core_reg_1;
  input irpt_wrack_d1;
  input spicr_3_cpol_frm_axi_clk;
  input spicr_4_cpha_frm_axi_clk;
  input [4:0]s_axi_wdata;
  input sw_rst_cond_d1;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input spicr_1_spe_frm_axi_clk;
  input p_1_in34_in;
  input dest_out;
  input p_1_in31_in;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input p_1_in28_in;
  input sr_3_MODF_int;
  input p_1_in25_in;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input p_1_in22_in;
  input spisel_d1_reg_to_axi_clk;
  input p_1_in16_in;
  input spicr_7_ss_frm_axi_clk;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input SPISR_2_MSB_Error_int;
  input p_1_in13_in;
  input p_1_in10_in;
  input SPISR_0_CMD_Error_to_axi_clk;
  input p_1_in7_in;
  input p_1_in4_in;
  input p_1_in1_in;
  input p_1_in_1;
  input bus2ip_rnw_i;
  input s_axi_aresetn;
  input ip2bus_rdack_int;
  input s_axi_arready;
  input ip2bus_wrack_int;
  input s_axi_awready;
  input [5:0]s_axi_awready_0;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  wire [6:0]D;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ;
  wire [4:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_6_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ;
  wire [13:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ;
  wire Q;
  wire SPICR_3_4_Reset;
  wire SPICR_data_int_reg0;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire [0:0]SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire bus2ip_rnw_i;
  wire [1:0]bus2ip_wrce_int;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_17;
  wire ce_expnd_i_18;
  wire ce_expnd_i_19;
  wire ce_expnd_i_2;
  wire ce_expnd_i_20;
  wire ce_expnd_i_21;
  wire ce_expnd_i_22;
  wire ce_expnd_i_23;
  wire ce_expnd_i_24;
  wire ce_expnd_i_25;
  wire ce_expnd_i_26;
  wire ce_expnd_i_27;
  wire ce_expnd_i_28;
  wire ce_expnd_i_29;
  wire ce_expnd_i_3;
  wire ce_expnd_i_30;
  wire ce_expnd_i_31;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire dest_out;
  wire [7:0]dout;
  wire empty;
  wire eqOp__4;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg0;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0;
  wire ip2bus_rdack_int;
  wire ip2bus_wrack_int;
  wire \ip_irpt_enable_reg_reg[3] ;
  wire \ip_irpt_enable_reg_reg[6] ;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire modf_reg;
  wire [0:0]p_0_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire p_1_in_1;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_2_in;
  wire p_30_in;
  wire p_31_in;
  wire p_3_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [5:0]s_axi_awready_0;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1 
       (.I0(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ),
        .I1(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_7_in),
        .O(SPICR_3_4_Reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1 
       (.I0(ip2Bus_WrAck_core_reg_1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_7_in),
        .O(SPICR_data_int_reg0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_31),
        .Q(p_31_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_21),
        .Q(p_21_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_20),
        .Q(p_20_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_19),
        .Q(p_19_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_18),
        .Q(p_18_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_15));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .O(ce_expnd_i_14));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_12));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_30),
        .Q(p_30_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .O(ce_expnd_i_11));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_8));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_29),
        .Q(p_29_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in_0),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 [1]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_28),
        .Q(p_28_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_27),
        .Q(p_27_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_26),
        .Q(p_26_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_25),
        .Q(p_25_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_24),
        .Q(p_24_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_23),
        .Q(p_23_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_22),
        .Q(p_22_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000C0C)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_21_in),
        .I4(irpt_wrack_d1),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_1 
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_24_in),
        .I4(p_0_in),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h8C808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[18]_i_1 
       (.I0(p_1_in_1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [13]),
        .I4(p_21_in),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h8C808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[19]_i_1 
       (.I0(p_1_in1_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [12]),
        .I4(p_21_in),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h8C808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[20]_i_1 
       (.I0(p_1_in4_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [11]),
        .I4(p_21_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [10]),
        .I2(SPISR_0_CMD_Error_to_axi_clk),
        .I3(Bus_RNW_reg_reg_6),
        .I4(p_1_in7_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2 
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_3 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_6_in),
        .O(Bus_RNW_reg_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_23_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1 
       (.I0(SPISR_1_LOOP_Back_Error_int),
        .I1(p_6_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(SPISR_2_MSB_Error_int),
        .I4(p_7_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8C808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2 
       (.I0(p_1_in10_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [9]),
        .I4(p_21_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_1 
       (.I0(spicr_8_tr_inhibit_frm_axi_clk),
        .I1(p_7_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(SPISR_2_MSB_Error_int),
        .I4(p_6_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8C808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2 
       (.I0(p_1_in13_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [8]),
        .I4(p_21_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_7 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ),
        .I2(ip2Bus_RdAck_core_reg),
        .I3(dout[7]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [7]),
        .O(Bus_RNW_reg_reg_3));
  LUT6 #(
    .INIT(64'h88F888F888F8FFFF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_8 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .I1(p_1_in16_in),
        .I2(spicr_7_ss_frm_axi_clk),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I4(spicr_2_mst_n_slv_frm_axi_clk),
        .I5(Bus_RNW_reg_reg_6),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ));
  LUT6 #(
    .INIT(64'h4444F444F4444444)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [6]),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_6_in),
        .I4(spicr_3_cpol_frm_axi_clk),
        .I5(spicr_4_cpha_frm_axi_clk),
        .O(\ip_irpt_enable_reg_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_4 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I1(dout[6]),
        .I2(spicr_6_rxfifo_rst_frm_axi_clk),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I4(p_1_in19_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .O(\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_6_n_0 ),
        .I1(dout[5]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [5]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .O(\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_6 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I1(spicr_5_txfifo_rst_frm_axi_clk),
        .I2(p_1_in22_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .I4(spisel_d1_reg_to_axi_clk),
        .I5(Bus_RNW_reg_reg_6),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ),
        .I2(ip2Bus_RdAck_core_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_3 
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [4]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I5(dout[4]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_4 
       (.I0(Bus_RNW_reg_reg_6),
        .I1(sr_3_MODF_int),
        .I2(p_1_in25_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .I4(spicr_4_cpha_frm_axi_clk),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .O(modf_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_7_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [3]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .I2(dout[3]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0 ),
        .O(\ip_irpt_enable_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4 
       (.I0(Bus_RNW_reg_reg_6),
        .I1(almost_full),
        .I2(spicr_3_cpol_frm_axi_clk),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I4(p_1_in28_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_3 
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [2]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I5(dout[2]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_4 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .I1(p_1_in31_in),
        .I2(spicr_2_mst_n_slv_frm_axi_clk),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I4(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I5(Bus_RNW_reg_reg_6),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_3 
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [1]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_7_n_0 ),
        .I5(dout[1]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_4 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_6_n_0 ),
        .I1(spicr_1_spe_frm_axi_clk),
        .I2(p_1_in34_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_4_n_0 ),
        .I4(dest_out),
        .I5(Bus_RNW_reg_reg_6),
        .O(\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ),
        .I2(ip2Bus_RdAck_core_reg),
        .I3(dout[0]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[21]_i_2_n_0 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] [0]),
        .O(Bus_RNW_reg_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 
       (.I0(SPISR_1_LOOP_Back_Error_int),
        .I1(p_7_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(SPISSR_frm_axi_clk),
        .I4(p_3_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ),
        .O(\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ));
  LUT6 #(
    .INIT(64'hF080F080F0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4 
       (.I0(p_23_in),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_6_in),
        .I4(empty),
        .I5(rx_fifo_empty_i),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4440444444444444)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_15_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[1]),
        .O(Bus_RNW_reg_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45445555)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_7_in),
        .I2(almost_full),
        .I3(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(Bus_RNW_reg_reg_2));
  LUT5 #(
    .INIT(32'h00000002)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ),
        .I2(p_10_in),
        .I3(p_8_in),
        .I4(p_14_in),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3 
       (.I0(p_11_in),
        .I1(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 ),
        .I2(p_3_in),
        .I3(p_2_in),
        .I4(p_13_in),
        .I5(p_1_in_0),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4 
       (.I0(p_12_in),
        .I1(p_6_in),
        .I2(p_9_in),
        .I3(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31] ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045445555)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_7_in),
        .I2(almost_full),
        .I3(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .I5(ip2Bus_WrAck_core_reg_d1),
        .O(ip2Bus_WrAck_core_reg0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_15_in),
        .I2(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 ),
        .I3(p_7_in),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(rd_ce_or_reduce_core_cmb));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized0 \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_31(ce_expnd_i_31));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_21(ce_expnd_i_21));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_20(ce_expnd_i_20));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12 \MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_19(ce_expnd_i_19));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13 \MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_18(ce_expnd_i_18));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14 \MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_17(ce_expnd_i_17));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_30(ce_expnd_i_30));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized2 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_29(ce_expnd_i_29));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_28(ce_expnd_i_28));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_27(ce_expnd_i_27));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_26(ce_expnd_i_26));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_25(ce_expnd_i_25));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_24(ce_expnd_i_24));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_23(ce_expnd_i_23));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_22(ce_expnd_i_22));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized19 \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_13(ce_expnd_i_13));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23 \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17 \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18 \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1 
       (.I0(p_7_in),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    intr2bus_rdack_i_1
       (.I0(irpt_rdack_d1),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_24_in),
        .I3(p_21_in),
        .I4(p_23_in),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000F0E)) 
    intr2bus_wrack_i_1
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_21_in),
        .I4(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2Bus_RdAck_intr_reg_hole_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(intr_controller_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ip2Bus_RdAck_intr_reg_hole_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I2(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(ip2Bus_RdAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(Bus_RNW_reg_reg_1));
  LUT5 #(
    .INIT(32'h00000002)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_2
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0),
        .I2(p_17_in),
        .I3(p_25_in),
        .I4(p_20_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_3
       (.I0(p_16_in),
        .I1(p_31_in),
        .I2(p_28_in),
        .I3(p_19_in),
        .I4(p_29_in),
        .I5(p_30_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_4
       (.I0(p_26_in),
        .I1(p_18_in),
        .I2(p_27_in),
        .I3(p_22_in),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ip2Bus_WrAck_intr_reg_hole_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I2(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(ip2Bus_WrAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip_irpt_enable_reg[13]_i_1 
       (.I0(p_21_in),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[4]),
        .I1(p_24_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(p_0_in),
        .O(\s_axi_wdata[31] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    irpt_rdack_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_24_in),
        .I2(p_21_in),
        .I3(p_23_in),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3332)) 
    irpt_wrack_d1_i_1
       (.I0(p_21_in),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_23_in),
        .I3(p_24_in),
        .O(irpt_wrack));
  LUT2 #(
    .INIT(4'h2)) 
    reset_trig_i_1
       (.I0(sw_rst_cond),
        .I1(sw_rst_cond_d1),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_int),
        .I1(s_axi_arready),
        .I2(eqOp__4),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_int),
        .I1(s_axi_awready),
        .I2(eqOp__4),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_axi_wready_INST_0_i_1
       (.I0(s_axi_awready_0[5]),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[3]),
        .I3(s_axi_awready_0[0]),
        .I4(s_axi_awready_0[2]),
        .I5(s_axi_awready_0[4]),
        .O(eqOp__4));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    sw_rst_cond_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_15_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[1]),
        .O(sw_rst_cond));
endmodule

module design_1_axi_quad_spi_0_0_axi_lite_ipif
   (bus2ip_reset_ipif_inverted,
    p_1_in_0,
    p_2_in,
    p_3_in,
    p_4_in,
    p_5_in,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    s_axi_bresp,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    ip2Bus_RdAck_intr_reg_hole0,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_WrAck_core_reg0,
    SPICR_3_4_Reset,
    reset2ip_reset_int,
    Bus_RNW_reg_reg_1,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \ip_irpt_enable_reg_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ,
    Bus_RNW_reg_reg_2,
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ,
    SPICR_data_int_reg0,
    bus2ip_wrce_int,
    irpt_wrack,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    interrupt_wrce_strb,
    \ip_irpt_enable_reg_reg[6] ,
    Bus_RNW_reg_reg_3,
    reset_trig0,
    sw_rst_cond,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    Bus_RNW_reg_reg_4,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    modf_reg,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    \s_axi_wdata[31] ,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    ip2Bus_RdAck_core_reg,
    almost_full,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ,
    dout,
    Q,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_1_in19_in,
    SPISR_1_LOOP_Back_Error_int,
    SPISSR_frm_axi_clk,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ,
    empty,
    rx_fifo_empty_i,
    ip2Bus_WrAck_core_reg_1,
    irpt_wrack_d1,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    s_axi_wdata,
    sw_rst_cond_d1,
    p_0_in,
    irpt_rdack_d1,
    spicr_1_spe_frm_axi_clk,
    p_1_in34_in,
    dest_out,
    p_1_in31_in,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    p_1_in28_in,
    sr_3_MODF_int,
    p_1_in25_in,
    spicr_5_txfifo_rst_frm_axi_clk,
    p_1_in22_in,
    spisel_d1_reg_to_axi_clk,
    p_1_in16_in,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    SPISR_2_MSB_Error_int,
    p_1_in13_in,
    p_1_in10_in,
    SPISR_0_CMD_Error_to_axi_clk,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in_1,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aresetn,
    ip2bus_rdack_int,
    ip2bus_wrack_int,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset_ipif_inverted;
  output p_1_in_0;
  output p_2_in;
  output p_3_in;
  output p_4_in;
  output p_5_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output [0:0]s_axi_bresp;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg_reg_0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_WrAck_core_reg0;
  output SPICR_3_4_Reset;
  output reset2ip_reset_int;
  output Bus_RNW_reg_reg_1;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \ip_irpt_enable_reg_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  output Bus_RNW_reg_reg_2;
  output \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  output SPICR_data_int_reg0;
  output [1:0]bus2ip_wrce_int;
  output irpt_wrack;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output interrupt_wrce_strb;
  output \ip_irpt_enable_reg_reg[6] ;
  output Bus_RNW_reg_reg_3;
  output reset_trig0;
  output sw_rst_cond;
  output [6:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  output Bus_RNW_reg_reg_4;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output modf_reg;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output \s_axi_wdata[31] ;
  output [14:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input ip2Bus_RdAck_core_reg;
  input almost_full;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  input [7:0]dout;
  input [13:0]Q;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_1_in19_in;
  input SPISR_1_LOOP_Back_Error_int;
  input [0:0]SPISSR_frm_axi_clk;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ;
  input empty;
  input rx_fifo_empty_i;
  input ip2Bus_WrAck_core_reg_1;
  input irpt_wrack_d1;
  input spicr_3_cpol_frm_axi_clk;
  input spicr_4_cpha_frm_axi_clk;
  input [4:0]s_axi_wdata;
  input sw_rst_cond_d1;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input spicr_1_spe_frm_axi_clk;
  input p_1_in34_in;
  input dest_out;
  input p_1_in31_in;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input p_1_in28_in;
  input sr_3_MODF_int;
  input p_1_in25_in;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input p_1_in22_in;
  input spisel_d1_reg_to_axi_clk;
  input p_1_in16_in;
  input spicr_7_ss_frm_axi_clk;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input SPISR_2_MSB_Error_int;
  input p_1_in13_in;
  input p_1_in10_in;
  input SPISR_0_CMD_Error_to_axi_clk;
  input p_1_in7_in;
  input p_1_in4_in;
  input p_1_in1_in;
  input p_1_in_1;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [14:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aresetn;
  input ip2bus_rdack_int;
  input ip2bus_wrack_int;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  wire [6:0]D;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire [13:0]Q;
  wire SPICR_3_4_Reset;
  wire SPICR_data_int_reg0;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire [0:0]SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire bus2ip_reset_ipif_inverted;
  wire [1:0]bus2ip_wrce_int;
  wire dest_out;
  wire [7:0]dout;
  wire empty;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg0;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_int;
  wire ip2bus_wrack_int;
  wire \ip_irpt_enable_reg_reg[3] ;
  wire \ip_irpt_enable_reg_reg[6] ;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire modf_reg;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire p_1_in_1;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [14:0]s_axi_rdata;
  wire [14:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wvalid;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  design_1_axi_quad_spi_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_4),
        .\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] (\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] (\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (p_5_in),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] (p_4_in),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .Q(Q),
        .SPICR_3_4_Reset(SPICR_3_4_Reset),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .SR(bus2ip_reset_ipif_inverted),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(almost_full),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dest_out(dest_out),
        .dout(dout),
        .empty(empty),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] (\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] (\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg0(ip2Bus_WrAck_core_reg0),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_int(ip2bus_rdack_int),
        .ip2bus_wrack_int(ip2bus_wrack_int),
        .\ip_irpt_enable_reg_reg[3] (\ip_irpt_enable_reg_reg[3] ),
        .\ip_irpt_enable_reg_reg[6] (\ip_irpt_enable_reg_reg[6] ),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .modf_reg(modf_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_1_in_0(p_1_in_0),
        .p_1_in_1(p_1_in_1),
        .p_2_in(p_2_in),
        .p_3_in(p_3_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset2ip_reset_int(reset2ip_reset_int),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wvalid(s_axi_wvalid),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized0
   (ce_expnd_i_31,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_31;
  input [4:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_31;

  LUT5 #(
    .INIT(32'h00000001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .O(ce_expnd_i_31));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized1
   (ce_expnd_i_30,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] );
  output ce_expnd_i_30;
  input [4:0]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire ce_expnd_i_30;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [1]),
        .O(ce_expnd_i_30));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized10
   (ce_expnd_i_21,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_21;
  input [4:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_21;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .O(ce_expnd_i_21));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized11
   (ce_expnd_i_20,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_20;
  input [4:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_20;

  LUT5 #(
    .INIT(32'h00004000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [4]),
        .O(ce_expnd_i_20));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized12
   (ce_expnd_i_19,
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] );
  output ce_expnd_i_19;
  input [4:0]\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;
  wire ce_expnd_i_19;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [3]),
        .O(ce_expnd_i_19));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized13
   (ce_expnd_i_18,
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] );
  output ce_expnd_i_18;
  input [4:0]\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] ;
  wire ce_expnd_i_18;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [2]),
        .O(ce_expnd_i_18));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized14
   (ce_expnd_i_17,
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] );
  output ce_expnd_i_17;
  input [4:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  wire ce_expnd_i_17;

  LUT5 #(
    .INIT(32'h04000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [2]),
        .O(ce_expnd_i_17));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized19
   (ce_expnd_i_13,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] );
  output ce_expnd_i_13;
  input [4:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire ce_expnd_i_13;

  LUT5 #(
    .INIT(32'h00100000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [4]),
        .O(ce_expnd_i_13));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized19_17
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] );
  output ce_expnd_i_5;
  input [4:0]\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire ce_expnd_i_5;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] [3]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized2
   (ce_expnd_i_29,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_29;
  input [4:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_29;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .O(ce_expnd_i_29));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] );
  output ce_expnd_i_9;
  input [4:0]\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;
  wire ce_expnd_i_9;

  LUT5 #(
    .INIT(32'h02000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized23_18
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] );
  output ce_expnd_i_1;
  input [4:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  wire ce_expnd_i_1;

  LUT5 #(
    .INIT(32'h20000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized3
   (ce_expnd_i_28,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] );
  output ce_expnd_i_28;
  input [4:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire ce_expnd_i_28;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] [4]),
        .O(ce_expnd_i_28));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized4
   (ce_expnd_i_27,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_27;
  input [4:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_27;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .O(ce_expnd_i_27));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5
   (ce_expnd_i_26,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_26;
  input [4:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_26;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [4]),
        .O(ce_expnd_i_26));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized6
   (ce_expnd_i_25,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_25;
  input [4:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_25;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [4]),
        .O(ce_expnd_i_25));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized7
   (ce_expnd_i_24,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_24;
  input [4:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_24;

  LUT5 #(
    .INIT(32'h00400000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .O(ce_expnd_i_24));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized8
   (ce_expnd_i_23,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_23;
  input [4:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_23;

  LUT5 #(
    .INIT(32'h00000010)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .O(ce_expnd_i_23));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module design_1_axi_quad_spi_0_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized9
   (ce_expnd_i_22,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_22;
  input [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_22;

  LUT5 #(
    .INIT(32'h00100000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .O(ce_expnd_i_22));
endmodule

(* Async_Clk = "0" *) (* C_BYTE_LEVEL_INTERRUPT_EN = "0" *) (* C_DUAL_QUAD_MODE = "0" *) 
(* C_FAMILY = "spartanuplus" *) (* C_FIFO_DEPTH = "256" *) (* C_INSTANCE = "axi_quad_spi_inst" *) 
(* C_LSB_STUP = "0" *) (* C_NEW_SEQ_EN = "1" *) (* C_NUM_SS_BITS = "1" *) 
(* C_NUM_TRANSFER_BITS = "8" *) (* C_SCK_RATIO = "2" *) (* C_SELECT_XPM = "0" *) 
(* C_SHARED_STARTUP = "0" *) (* C_SPI_MEMORY = "2" *) (* C_SPI_MEM_ADDR_BITS = "24" *) 
(* C_SPI_MODE = "2" *) (* C_SUB_FAMILY = "spartanuplus" *) (* C_S_AXI4_ADDR_WIDTH = "24" *) 
(* C_S_AXI4_BASEADDR = "32'b11111111111111111111111111111111" *) (* C_S_AXI4_DATA_WIDTH = "32" *) (* C_S_AXI4_HIGHADDR = "32'b00000000000000000000000000000000" *) 
(* C_S_AXI4_ID_WIDTH = "4" *) (* C_S_AXI_ADDR_WIDTH = "7" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TYPE_OF_AXI4_INTERFACE = "0" *) (* C_UC_FAMILY = "1" *) (* C_USE_STARTUP = "1" *) 
(* C_USE_STARTUP_EXT = "0" *) (* C_XIP_MODE = "0" *) (* C_XIP_PERF_MODE = "1" *) 
(* dont_touch = "yes" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_axi_quad_spi_0_0_axi_quad_spi
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    io0_1_i,
    io0_1_o,
    io0_1_t,
    io1_1_i,
    io1_1_o,
    io1_1_t,
    io2_1_i,
    io2_1_o,
    io2_1_t,
    io3_1_i,
    io3_1_o,
    io3_1_t,
    spisel,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ss_1_i,
    ss_1_o,
    ss_1_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    pack,
    ip2intc_irpt);
  input ext_spi_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [3:0]s_axi4_awid;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [3:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [3:0]s_axi4_arid;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [3:0]s_axi4_rid;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input io2_i;
  output io2_o;
  output io2_t;
  input io3_i;
  output io3_o;
  output io3_t;
  input io0_1_i;
  output io0_1_o;
  output io0_1_t;
  input io1_1_i;
  output io1_1_o;
  output io1_1_t;
  input io2_1_i;
  output io2_1_o;
  output io2_1_t;
  input io3_1_i;
  output io3_1_o;
  output io3_1_t;
  (* initialval = "VCC" *) input spisel;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  input ss_1_i;
  output ss_1_o;
  output ss_1_t;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input pack;
  output ip2intc_irpt;

  wire \<const0> ;
  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire ip2intc_irpt;
  wire keyclearb;
  wire preq;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sck_t;
  wire spisel;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;

  assign io0_1_o = \<const0> ;
  assign io0_1_t = \<const0> ;
  assign io0_o = \<const0> ;
  assign io0_t = \<const0> ;
  assign io1_1_o = \<const0> ;
  assign io1_1_t = \<const0> ;
  assign io1_o = \<const0> ;
  assign io1_t = \<const0> ;
  assign io2_1_o = \<const0> ;
  assign io2_1_t = \<const0> ;
  assign io2_o = \<const0> ;
  assign io2_t = \<const0> ;
  assign io3_1_o = \<const0> ;
  assign io3_1_t = \<const0> ;
  assign io3_o = \<const0> ;
  assign io3_t = \<const0> ;
  assign s_axi4_arready = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bid[3] = \<const0> ;
  assign s_axi4_bid[2] = \<const0> ;
  assign s_axi4_bid[1] = \<const0> ;
  assign s_axi4_bid[0] = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rdata[31] = \<const0> ;
  assign s_axi4_rdata[30] = \<const0> ;
  assign s_axi4_rdata[29] = \<const0> ;
  assign s_axi4_rdata[28] = \<const0> ;
  assign s_axi4_rdata[27] = \<const0> ;
  assign s_axi4_rdata[26] = \<const0> ;
  assign s_axi4_rdata[25] = \<const0> ;
  assign s_axi4_rdata[24] = \<const0> ;
  assign s_axi4_rdata[23] = \<const0> ;
  assign s_axi4_rdata[22] = \<const0> ;
  assign s_axi4_rdata[21] = \<const0> ;
  assign s_axi4_rdata[20] = \<const0> ;
  assign s_axi4_rdata[19] = \<const0> ;
  assign s_axi4_rdata[18] = \<const0> ;
  assign s_axi4_rdata[17] = \<const0> ;
  assign s_axi4_rdata[16] = \<const0> ;
  assign s_axi4_rdata[15] = \<const0> ;
  assign s_axi4_rdata[14] = \<const0> ;
  assign s_axi4_rdata[13] = \<const0> ;
  assign s_axi4_rdata[12] = \<const0> ;
  assign s_axi4_rdata[11] = \<const0> ;
  assign s_axi4_rdata[10] = \<const0> ;
  assign s_axi4_rdata[9] = \<const0> ;
  assign s_axi4_rdata[8] = \<const0> ;
  assign s_axi4_rdata[7] = \<const0> ;
  assign s_axi4_rdata[6] = \<const0> ;
  assign s_axi4_rdata[5] = \<const0> ;
  assign s_axi4_rdata[4] = \<const0> ;
  assign s_axi4_rdata[3] = \<const0> ;
  assign s_axi4_rdata[2] = \<const0> ;
  assign s_axi4_rdata[1] = \<const0> ;
  assign s_axi4_rdata[0] = \<const0> ;
  assign s_axi4_rid[3] = \<const0> ;
  assign s_axi4_rid[2] = \<const0> ;
  assign s_axi4_rid[1] = \<const0> ;
  assign s_axi4_rid[0] = \<const0> ;
  assign s_axi4_rlast = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_rvalid = \<const0> ;
  assign s_axi4_wready = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13:0] = \^s_axi_rdata [13:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign sck_o = \<const0> ;
  assign ss_1_o = \<const0> ;
  assign ss_1_t = \<const0> ;
  assign ss_o[0] = \<const0> ;
  assign ss_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_quad_spi_0_0_axi_quad_spi_top \NO_DUAL_QUAD_MODE.QSPI_NORMAL 
       (.\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg (s_axi_arready),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (s_axi_awready),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(gsr),
        .gts(gts),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(keyclearb),
        .preq(preq),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [13:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[13:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_t(sck_t),
        .spisel(spisel),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
endmodule

module design_1_axi_quad_spi_0_0_axi_quad_spi_top
   (cfgclk,
    cfgmclk,
    eos,
    preq,
    sck_t,
    s_axi_rdata,
    s_axi_rresp,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ,
    s_axi_bvalid_i_reg,
    s_axi_rvalid_i_reg,
    ip2intc_irpt,
    s_axi_bresp,
    s_axi_aclk,
    ext_spi_clk,
    s_axi_wdata,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    spisel,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr);
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  output sck_t;
  output [14:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  output s_axi_bvalid_i_reg;
  output s_axi_rvalid_i_reg;
  output ip2intc_irpt;
  output [0:0]s_axi_bresp;
  input s_axi_aclk;
  input ext_spi_clk;
  input [14:0]s_axi_wdata;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input spisel;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire \CONTROL_REG_I/SPICR_3_4_Reset ;
  wire \CONTROL_REG_I/SPICR_data_int_reg0 ;
  wire \INTERRUPT_CONTROL_I/interrupt_wrce_strb ;
  wire \INTERRUPT_CONTROL_I/intr2bus_rdack0 ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack_d1 ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack_d1 ;
  wire [31:31]\INTERRUPT_CONTROL_I/p_0_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in0_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in11_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in14_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in17_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in20_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in23_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in26_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in29_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in2_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in32_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in35_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in5_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in8_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in10_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in13_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in16_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in19_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in1_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in22_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in25_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in28_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in31_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in34_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in4_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in7_in ;
  wire [0:31]IP2Bus_Data;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_1_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_2_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_22 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_23 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_24 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_26 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_31 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_21 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_34 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_73 ;
  wire Rx_FIFO_Empty;
  wire Rx_FIFO_Full_Fifo_d1_synced;
  wire \SOFT_RESET_I/reset_trig0 ;
  wire \SOFT_RESET_I/sw_rst_cond ;
  wire \SOFT_RESET_I/sw_rst_cond_d1 ;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire [0:0]SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire bus2ip_reset_ipif_inverted;
  wire [21:7]bus2ip_wrce_int;
  wire cfgclk;
  wire cfgmclk;
  wire [0:7]data_from_rx_fifo;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire intr_controller_rd_ce_or_reduce;
  wire [0:20]intr_ip2bus_data;
  wire [21:23]ip2Bus_Data_1;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg0;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_int;
  wire ip2bus_wrack_int;
  wire ip2intc_irpt;
  wire keyclearb;
  wire [1:1]p_1_in;
  wire preq;
  wire rd_ce_or_reduce_core_cmb;
  wire reset2ip_reset_int;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [14:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [14:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sck_t;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;

  design_1_axi_quad_spi_0_0_axi_lite_ipif \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .Bus_RNW_reg_reg_0(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .Bus_RNW_reg_reg_1(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18 ),
        .Bus_RNW_reg_reg_2(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ),
        .Bus_RNW_reg_reg_3(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34 ),
        .Bus_RNW_reg_reg_4(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47 ),
        .\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ),
        .\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_26 ),
        .D({intr_ip2bus_data[0],intr_ip2bus_data[18],intr_ip2bus_data[19],intr_ip2bus_data[20],ip2Bus_Data_1[21],ip2Bus_Data_1[22],ip2Bus_Data_1[23]}),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_31 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_23 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_24 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48 ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_34 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in35_in ,\INTERRUPT_CONTROL_I/p_0_in32_in ,\INTERRUPT_CONTROL_I/p_0_in29_in ,\INTERRUPT_CONTROL_I/p_0_in26_in ,\INTERRUPT_CONTROL_I/p_0_in23_in ,\INTERRUPT_CONTROL_I/p_0_in20_in ,\INTERRUPT_CONTROL_I/p_0_in17_in ,\INTERRUPT_CONTROL_I/p_0_in14_in ,\INTERRUPT_CONTROL_I/p_0_in11_in ,\INTERRUPT_CONTROL_I/p_0_in8_in ,\INTERRUPT_CONTROL_I/p_0_in5_in ,\INTERRUPT_CONTROL_I/p_0_in2_in ,\INTERRUPT_CONTROL_I/p_0_in0_in ,\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_73 }),
        .SPICR_3_4_Reset(\CONTROL_REG_I/SPICR_3_4_Reset ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_21 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int({bus2ip_wrce_int[21],bus2ip_wrce_int[7]}),
        .dest_out(Rx_FIFO_Full_Fifo_d1_synced),
        .dout({data_from_rx_fifo[0],data_from_rx_fifo[1],data_from_rx_fifo[2],data_from_rx_fifo[3],data_from_rx_fifo[4],data_from_rx_fifo[5],data_from_rx_fifo[6],data_from_rx_fifo[7]}),
        .empty(Rx_FIFO_Empty),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19 ),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg0(ip2Bus_WrAck_core_reg0),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_int(ip2bus_rdack_int),
        .ip2bus_wrack_int(ip2bus_wrack_int),
        .\ip_irpt_enable_reg_reg[3] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_22 ),
        .\ip_irpt_enable_reg_reg[6] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33 ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .modf_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ),
        .p_0_in(\INTERRUPT_CONTROL_I/p_0_in ),
        .p_1_in(p_1_in),
        .p_1_in10_in(\INTERRUPT_CONTROL_I/p_1_in10_in ),
        .p_1_in13_in(\INTERRUPT_CONTROL_I/p_1_in13_in ),
        .p_1_in16_in(\INTERRUPT_CONTROL_I/p_1_in16_in ),
        .p_1_in19_in(\INTERRUPT_CONTROL_I/p_1_in19_in ),
        .p_1_in1_in(\INTERRUPT_CONTROL_I/p_1_in1_in ),
        .p_1_in22_in(\INTERRUPT_CONTROL_I/p_1_in22_in ),
        .p_1_in25_in(\INTERRUPT_CONTROL_I/p_1_in25_in ),
        .p_1_in28_in(\INTERRUPT_CONTROL_I/p_1_in28_in ),
        .p_1_in31_in(\INTERRUPT_CONTROL_I/p_1_in31_in ),
        .p_1_in34_in(\INTERRUPT_CONTROL_I/p_1_in34_in ),
        .p_1_in4_in(\INTERRUPT_CONTROL_I/p_1_in4_in ),
        .p_1_in7_in(\INTERRUPT_CONTROL_I/p_1_in7_in ),
        .p_1_in_0(\I_SLAVE_ATTACHMENT/I_DECODER/p_1_in ),
        .p_1_in_1(\INTERRUPT_CONTROL_I/p_1_in ),
        .p_2_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_2_in ),
        .p_3_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_5_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset2ip_reset_int(reset2ip_reset_int),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31] ({IP2Bus_Data[0],IP2Bus_Data[18],IP2Bus_Data[19],IP2Bus_Data[20],IP2Bus_Data[21],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg),
        .s_axi_wdata({s_axi_wdata[14],s_axi_wdata[3:0]}),
        .\s_axi_wdata[31] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55 ),
        .s_axi_wvalid(s_axi_wvalid),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ));
  design_1_axi_quad_spi_0_0_qspi_core_interface \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({intr_ip2bus_data[0],intr_ip2bus_data[18],intr_ip2bus_data[19],intr_ip2bus_data[20],ip2Bus_Data_1[21],ip2Bus_Data_1[22],ip2Bus_Data_1[23]}),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_34 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_31 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 ({IP2Bus_Data[0],IP2Bus_Data[18],IP2Bus_Data[19],IP2Bus_Data[20],IP2Bus_Data[21],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_18 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_50 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_33 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_19 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_20 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_21 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_49 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_22 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_23 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_48 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_24 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_25 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_26 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_34 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in35_in ,\INTERRUPT_CONTROL_I/p_0_in32_in ,\INTERRUPT_CONTROL_I/p_0_in29_in ,\INTERRUPT_CONTROL_I/p_0_in26_in ,\INTERRUPT_CONTROL_I/p_0_in23_in ,\INTERRUPT_CONTROL_I/p_0_in20_in ,\INTERRUPT_CONTROL_I/p_0_in17_in ,\INTERRUPT_CONTROL_I/p_0_in14_in ,\INTERRUPT_CONTROL_I/p_0_in11_in ,\INTERRUPT_CONTROL_I/p_0_in8_in ,\INTERRUPT_CONTROL_I/p_0_in5_in ,\INTERRUPT_CONTROL_I/p_0_in2_in ,\INTERRUPT_CONTROL_I/p_0_in0_in ,\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_73 }),
        .\RESET_FLOPS[15].RST_FLOPS (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ),
        .SPICR_3_4_Reset(\CONTROL_REG_I/SPICR_3_4_Reset ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_21 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int({bus2ip_wrce_int[21],bus2ip_wrce_int[7]}),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .dest_out(Rx_FIFO_Full_Fifo_d1_synced),
        .dout({data_from_rx_fifo[0],data_from_rx_fifo[1],data_from_rx_fifo[2],data_from_rx_fifo[3],data_from_rx_fifo[4],data_from_rx_fifo[5],data_from_rx_fifo[6],data_from_rx_fifo[7]}),
        .empty(Rx_FIFO_Empty),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(gsr),
        .gts(gts),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg0(ip2Bus_WrAck_core_reg0),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg_0(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .ip2bus_rdack_int(ip2bus_rdack_int),
        .ip2bus_wrack_int(ip2bus_wrack_int),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_55 ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .keyclearb(keyclearb),
        .modf_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_47 ),
        .p_0_in(\INTERRUPT_CONTROL_I/p_0_in ),
        .p_1_in(p_1_in),
        .p_1_in10_in(\INTERRUPT_CONTROL_I/p_1_in10_in ),
        .p_1_in13_in(\INTERRUPT_CONTROL_I/p_1_in13_in ),
        .p_1_in16_in(\INTERRUPT_CONTROL_I/p_1_in16_in ),
        .p_1_in19_in(\INTERRUPT_CONTROL_I/p_1_in19_in ),
        .p_1_in1_in(\INTERRUPT_CONTROL_I/p_1_in1_in ),
        .p_1_in22_in(\INTERRUPT_CONTROL_I/p_1_in22_in ),
        .p_1_in25_in(\INTERRUPT_CONTROL_I/p_1_in25_in ),
        .p_1_in28_in(\INTERRUPT_CONTROL_I/p_1_in28_in ),
        .p_1_in31_in(\INTERRUPT_CONTROL_I/p_1_in31_in ),
        .p_1_in34_in(\INTERRUPT_CONTROL_I/p_1_in34_in ),
        .p_1_in4_in(\INTERRUPT_CONTROL_I/p_1_in4_in ),
        .p_1_in7_in(\INTERRUPT_CONTROL_I/p_1_in7_in ),
        .p_1_in_0(\INTERRUPT_CONTROL_I/p_1_in ),
        .p_1_in_1(\I_SLAVE_ATTACHMENT/I_DECODER/p_1_in ),
        .p_2_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_2_in ),
        .p_3_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_3_in ),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_5_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_5_in ),
        .preq(preq),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset2ip_reset_int(reset2ip_reset_int),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[13:0]),
        .sck_t(sck_t),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spisel(spisel),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
endmodule

module design_1_axi_quad_spi_0_0_counter_f
   (\FIFO_EXISTS.Tx_FIFO_Empty_intr ,
    tx_occ_msb_1,
    \icount_out_reg[0]_0 ,
    wr_en,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spiXfer_done_d3,
    spiXfer_done_d2,
    bus2ip_reset_ipif_inverted,
    \icount_out_reg[7]_0 ,
    \icount_out_reg[7]_1 ,
    \icount_out_reg[1]_0 ,
    reset2ip_reset_int,
    rst,
    almost_full,
    p_5_in,
    \icount_out_reg[7]_2 ,
    Bus_RNW_reg,
    \icount_out_reg[7]_3 ,
    s_axi_aclk,
    \icount_out_reg[0]_1 );
  output \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  output tx_occ_msb_1;
  output \icount_out_reg[0]_0 ;
  output wr_en;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input spiXfer_done_d3;
  input spiXfer_done_d2;
  input bus2ip_reset_ipif_inverted;
  input \icount_out_reg[7]_0 ;
  input \icount_out_reg[7]_1 ;
  input \icount_out_reg[1]_0 ;
  input reset2ip_reset_int;
  input rst;
  input almost_full;
  input p_5_in;
  input \icount_out_reg[7]_2 ;
  input Bus_RNW_reg;
  input \icount_out_reg[7]_3 ;
  input s_axi_aclk;
  input \icount_out_reg[0]_1 ;

  wire Bus_RNW_reg;
  wire \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire bus2ip_reset_ipif_inverted;
  wire \icount_out[1]_i_1_n_0 ;
  wire \icount_out[2]_i_1_n_0 ;
  wire \icount_out[3]_i_1_n_0 ;
  wire \icount_out[4]_i_1_n_0 ;
  wire \icount_out[5]_i_1_n_0 ;
  wire \icount_out[5]_i_2_n_0 ;
  wire \icount_out[6]_i_1_n_0 ;
  wire \icount_out[6]_i_2_n_0 ;
  wire \icount_out[7]_i_2_n_0 ;
  wire \icount_out[7]_i_3_n_0 ;
  wire \icount_out_reg[0]_0 ;
  wire \icount_out_reg[0]_1 ;
  wire \icount_out_reg[1]_0 ;
  wire \icount_out_reg[7]_0 ;
  wire \icount_out_reg[7]_1 ;
  wire \icount_out_reg[7]_2 ;
  wire \icount_out_reg[7]_3 ;
  wire \icount_out_reg_n_0_[1] ;
  wire \icount_out_reg_n_0_[2] ;
  wire \icount_out_reg_n_0_[3] ;
  wire \icount_out_reg_n_0_[4] ;
  wire \icount_out_reg_n_0_[5] ;
  wire \icount_out_reg_n_0_[6] ;
  wire p_5_in;
  wire reset2ip_reset_int;
  wire rst;
  wire s_axi_aclk;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire tx_FIFO_Empty_d1_i_2_n_0;
  wire tx_occ_msb_1;
  wire wr_en;

  LUT4 #(
    .INIT(16'h0040)) 
    \FIFO_EXISTS.TX_FIFO_II_i_2 
       (.I0(almost_full),
        .I1(p_5_in),
        .I2(\icount_out_reg[7]_2 ),
        .I3(Bus_RNW_reg),
        .O(wr_en));
  LUT6 #(
    .INIT(64'hFEFFFFFEFFFEFEFF)) 
    \icount_out[1]_i_1 
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\icount_out_reg[7]_0 ),
        .I2(\icount_out_reg[7]_1 ),
        .I3(\icount_out_reg_n_0_[1] ),
        .I4(\icount_out_reg[1]_0 ),
        .I5(\icount_out_reg[0]_0 ),
        .O(\icount_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6AA9)) 
    \icount_out[2]_i_1 
       (.I0(\icount_out_reg_n_0_[2] ),
        .I1(\icount_out_reg[1]_0 ),
        .I2(\icount_out_reg_n_0_[1] ),
        .I3(\icount_out_reg[0]_0 ),
        .I4(\icount_out_reg[7]_1 ),
        .I5(reset2ip_reset_int),
        .O(\icount_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEFAFAFAFAFAFAEB)) 
    \icount_out[3]_i_1 
       (.I0(rst),
        .I1(\icount_out_reg_n_0_[2] ),
        .I2(\icount_out_reg_n_0_[3] ),
        .I3(\icount_out_reg[1]_0 ),
        .I4(\icount_out_reg_n_0_[1] ),
        .I5(\icount_out_reg[0]_0 ),
        .O(\icount_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6AA9)) 
    \icount_out[4]_i_1 
       (.I0(\icount_out_reg_n_0_[4] ),
        .I1(\icount_out_reg_n_0_[2] ),
        .I2(\icount_out_reg_n_0_[3] ),
        .I3(\icount_out[5]_i_2_n_0 ),
        .I4(\icount_out_reg[7]_1 ),
        .I5(reset2ip_reset_int),
        .O(\icount_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEEEEEEEEEEEEEB)) 
    \icount_out[5]_i_1 
       (.I0(rst),
        .I1(\icount_out_reg_n_0_[5] ),
        .I2(\icount_out_reg_n_0_[4] ),
        .I3(\icount_out_reg_n_0_[2] ),
        .I4(\icount_out_reg_n_0_[3] ),
        .I5(\icount_out[5]_i_2_n_0 ),
        .O(\icount_out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FE)) 
    \icount_out[5]_i_2 
       (.I0(\icount_out_reg[1]_0 ),
        .I1(\icount_out_reg_n_0_[1] ),
        .I2(\icount_out_reg[0]_0 ),
        .I3(\icount_out_reg_n_0_[2] ),
        .O(\icount_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    \icount_out[6]_i_1 
       (.I0(\icount_out_reg_n_0_[6] ),
        .I1(\icount_out[6]_i_2_n_0 ),
        .I2(\icount_out_reg[7]_1 ),
        .I3(\icount_out_reg[7]_0 ),
        .I4(bus2ip_reset_ipif_inverted),
        .O(\icount_out[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000001)) 
    \icount_out[6]_i_2 
       (.I0(\icount_out_reg_n_0_[2] ),
        .I1(\icount_out_reg_n_0_[3] ),
        .I2(\icount_out[5]_i_2_n_0 ),
        .I3(\icount_out_reg_n_0_[5] ),
        .I4(\icount_out_reg_n_0_[4] ),
        .O(\icount_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFFFEFFFFFE)) 
    \icount_out[7]_i_2 
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\icount_out_reg[7]_0 ),
        .I2(\icount_out_reg[7]_1 ),
        .I3(tx_occ_msb_1),
        .I4(\icount_out_reg_n_0_[6] ),
        .I5(\icount_out[7]_i_3_n_0 ),
        .O(\icount_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000001)) 
    \icount_out[7]_i_3 
       (.I0(\icount_out_reg_n_0_[4] ),
        .I1(\icount_out_reg_n_0_[5] ),
        .I2(\icount_out[5]_i_2_n_0 ),
        .I3(\icount_out_reg_n_0_[3] ),
        .I4(\icount_out_reg_n_0_[2] ),
        .I5(\icount_out_reg_n_0_[6] ),
        .O(\icount_out[7]_i_3_n_0 ));
  FDRE \icount_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out_reg[0]_1 ),
        .Q(\icount_out_reg[0]_0 ),
        .R(1'b0));
  FDRE \icount_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[1]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \icount_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[2]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \icount_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[3]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \icount_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[4]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \icount_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[5]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \icount_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[6]_i_1_n_0 ),
        .Q(\icount_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \icount_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\icount_out_reg[7]_3 ),
        .D(\icount_out[7]_i_2_n_0 ),
        .Q(tx_occ_msb_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    tx_FIFO_Empty_d1_i_1
       (.I0(tx_FIFO_Empty_d1_i_2_n_0),
        .I1(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I2(\icount_out_reg_n_0_[6] ),
        .I3(tx_occ_msb_1),
        .I4(spiXfer_done_d3),
        .I5(spiXfer_done_d2),
        .O(\FIFO_EXISTS.Tx_FIFO_Empty_intr ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tx_FIFO_Empty_d1_i_2
       (.I0(\icount_out_reg_n_0_[1] ),
        .I1(\icount_out_reg[0]_0 ),
        .I2(\icount_out_reg_n_0_[5] ),
        .I3(\icount_out_reg_n_0_[4] ),
        .I4(\icount_out_reg_n_0_[3] ),
        .I5(\icount_out_reg_n_0_[2] ),
        .O(tx_FIFO_Empty_d1_i_2_n_0));
endmodule

module design_1_axi_quad_spi_0_0_cross_clk_sync_fifo_1
   (SPISR_0_CMD_Error_to_axi_clk,
    spisel_d1_reg_to_axi_clk,
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ,
    spiXfer_done_d2,
    spiXfer_done_d3,
    SPICR_2_MST_N_SLV_to_spi_clk,
    spicr_3_cpol_to_spi_clk,
    spicr_4_cpha_to_spi_clk,
    spicr_5_txfifo_to_spi_clk,
    spicr_8_tr_inhibit_to_spi_clk,
    register_Data_slvsel_int,
    RESET_SYNC_AX2S_2,
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ,
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0 ,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0 ,
    rst_reg,
    Bus_RNW_reg_reg,
    D,
    tx_occ_msb,
    \s_axi_wdata[7] ,
    \s_axi_wdata[5] ,
    E,
    \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2_0 ,
    D_0,
    master_tri_state_en_control1__1,
    rst,
    reset2ip_reset_int,
    SPISR_0_CMD_Error_int,
    s_axi_aclk,
    spisel_d1_reg,
    empty,
    Rst_to_spi,
    ext_spi_clk,
    spicr_1_spe_frm_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 ,
    spicr_8_tr_inhibit_frm_axi_clk,
    spicr_bits_7_8_frm_axi_clk,
    sr_3_MODF_int,
    SPISSR_frm_axi_clk,
    stop_clock,
    transfer_start_reg,
    Allow_MODF_Strobe,
    spicr_6_rxfifo_rst_frm_axi_clk,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    modf_reg,
    modf_reg_0,
    \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg ,
    bus2ip_reset_ipif_inverted,
    \icount_out_reg[7] ,
    wr_en,
    Bus_RNW_reg,
    \icount_out_reg[1] ,
    p_5_in,
    almost_full,
    wr_data_count,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_2 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_2 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ,
    rd_data_count,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ,
    tx_occ_msb_4,
    p_1_in16_in,
    p_1_in22_in,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ,
    p_2_in,
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0 ,
    drr_Overrun_int,
    SPISEL_sync,
    modf_strobe_int,
    Q,
    transfer_start_d2,
    IO2_T_control__3);
  output SPISR_0_CMD_Error_to_axi_clk;
  output spisel_d1_reg_to_axi_clk;
  output \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ;
  output spiXfer_done_d2;
  output spiXfer_done_d3;
  output SPICR_2_MST_N_SLV_to_spi_clk;
  output spicr_3_cpol_to_spi_clk;
  output spicr_4_cpha_to_spi_clk;
  output spicr_5_txfifo_to_spi_clk;
  output spicr_8_tr_inhibit_to_spi_clk;
  output [0:0]register_Data_slvsel_int;
  output RESET_SYNC_AX2S_2;
  output \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ;
  output \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0 ;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  output \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0 ;
  output rst_reg;
  output Bus_RNW_reg_reg;
  output [7:0]D;
  output tx_occ_msb;
  output \s_axi_wdata[7] ;
  output \s_axi_wdata[5] ;
  output [0:0]E;
  output \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2_0 ;
  output D_0;
  output master_tri_state_en_control1__1;
  output rst;
  input reset2ip_reset_int;
  input SPISR_0_CMD_Error_int;
  input s_axi_aclk;
  input spisel_d1_reg;
  input empty;
  input Rst_to_spi;
  input ext_spi_clk;
  input spicr_1_spe_frm_axi_clk;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input spicr_3_cpol_frm_axi_clk;
  input spicr_4_cpha_frm_axi_clk;
  input \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 ;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input [1:0]spicr_bits_7_8_frm_axi_clk;
  input sr_3_MODF_int;
  input [0:0]SPISSR_frm_axi_clk;
  input stop_clock;
  input transfer_start_reg;
  input Allow_MODF_Strobe;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input [2:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input modf_reg;
  input modf_reg_0;
  input \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg ;
  input bus2ip_reset_ipif_inverted;
  input \icount_out_reg[7] ;
  input wr_en;
  input Bus_RNW_reg;
  input \icount_out_reg[1] ;
  input p_5_in;
  input almost_full;
  input [8:0]wr_data_count;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_2 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_2 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  input [2:0]rd_data_count;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  input tx_occ_msb_4;
  input p_1_in16_in;
  input p_1_in22_in;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  input p_2_in;
  input \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0 ;
  input drr_Overrun_int;
  input SPISEL_sync;
  input modf_strobe_int;
  input [0:0]Q;
  input transfer_start_d2;
  input IO2_T_control__3;

  wire Allow_MODF_Strobe;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire [7:0]D;
  wire D0;
  wire D01_out;
  wire D04_out;
  wire D08_out;
  wire D_0;
  wire [0:0]E;
  wire \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire IO2_T_control__3;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_2 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_2 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ;
  wire \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2_0 ;
  wire \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0 ;
  wire \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ;
  wire \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0 ;
  wire \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_n_0 ;
  wire [0:0]Q;
  wire RESET_SYNC_AX2S_2;
  wire Rst_to_spi;
  wire SPICR_1_SPE_cdc_from_axi_d1;
  wire SPICR_2_MST_N_SLV_cdc_from_axi_d1;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPICR_3_CPOL_cdc_from_axi_d1;
  wire SPICR_4_CPHA_cdc_from_axi_d1;
  wire SPICR_5_TXFIFO_cdc_from_axi_d1;
  wire SPICR_8_TR_INHIBIT_cdc_from_axi_d1;
  wire SPICR_bits_7_8_cdc_from_axi_d1_0;
  wire SPICR_bits_7_8_cdc_from_axi_d1_1;
  wire SPISEL_sync;
  wire SPISR_0_CMD_Error_cdc_from_spi_d1;
  wire SPISR_0_CMD_Error_int;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire [0:0]SPISSR_cdc_from_axi_d1;
  wire [0:0]SPISSR_frm_axi_clk;
  wire SR_3_modf_cdc_from_axi_d1;
  wire Tx_FIFO_Empty_SPISR_cdc_from_spi_d1;
  wire almost_full;
  wire bus2ip_reset_ipif_inverted;
  wire drr_Overrun_int;
  wire drr_Overrun_int_cdc_from_spi_d1;
  wire drr_Overrun_int_cdc_from_spi_d2;
  wire drr_Overrun_int_cdc_from_spi_d3;
  wire empty;
  wire ext_spi_clk;
  wire \icount_out_reg[1] ;
  wire \icount_out_reg[7] ;
  wire master_tri_state_en_control1__1;
  wire modf_reg;
  wire modf_reg_0;
  wire modf_strobe_cdc_from_spi_d1;
  wire modf_strobe_cdc_from_spi_d2;
  wire modf_strobe_cdc_from_spi_d3;
  wire modf_strobe_int;
  wire p_1_in16_in;
  wire p_1_in22_in;
  wire p_2_in;
  wire p_5_in;
  wire [2:0]rd_data_count;
  wire [0:0]register_Data_slvsel_int;
  wire reset2ip_reset_int;
  wire reset_RcFIFO_ptr_cdc_from_axi_d1;
  wire reset_RcFIFO_ptr_cdc_from_axi_d2;
  wire rst;
  wire rst_reg;
  wire s_axi_aclk;
  wire [2:0]s_axi_wdata;
  wire \s_axi_wdata[5] ;
  wire \s_axi_wdata[7] ;
  wire spiXfer_done_d1;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_1_spe_to_spi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_5_txfifo_to_spi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_8_tr_inhibit_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire [0:1]spicr_bits_7_8_to_spi_clk;
  wire spisel_d1_reg;
  wire spisel_d1_reg_cdc_from_spi_d1;
  wire spisel_d1_reg_to_axi_clk;
  wire spisel_pulse_cdc_from_spi_d1;
  wire spisel_pulse_cdc_from_spi_d2;
  wire spisel_pulse_cdc_from_spi_d3;
  wire sr_3_MODF_int;
  wire sr_3_modf_to_spi_clk;
  wire stop_clock;
  wire transfer_start_d2;
  wire transfer_start_reg;
  wire tx_occ_msb;
  wire tx_occ_msb_4;
  wire [8:0]wr_data_count;
  wire wr_en;

  LUT2 #(
    .INIT(4'h4)) 
    Allow_MODF_Strobe_i_1
       (.I0(SPICR_2_MST_N_SLV_to_spi_clk),
        .I1(Allow_MODF_Strobe),
        .O(\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \FIFO_EXISTS.RX_FIFO_II_i_1 
       (.I0(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .I1(reset_RcFIFO_ptr_cdc_from_axi_d2),
        .I2(Rst_to_spi),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF90)) 
    \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_i_1 
       (.I0(spiXfer_done_d3),
        .I1(spiXfer_done_d2),
        .I2(\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg ),
        .I3(bus2ip_reset_ipif_inverted),
        .I4(\icount_out_reg[7] ),
        .I5(spicr_6_rxfifo_rst_frm_axi_clk),
        .O(\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0 ));
  LUT5 #(
    .INIT(32'h6FFFF666)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(modf_strobe_cdc_from_spi_d3),
        .I1(modf_strobe_cdc_from_spi_d2),
        .I2(s_axi_wdata[0]),
        .I3(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .O(\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0 ));
  LUT5 #(
    .INIT(32'h78FFFF78)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ),
        .I2(p_1_in22_in),
        .I3(drr_Overrun_int_cdc_from_spi_d3),
        .I4(drr_Overrun_int_cdc_from_spi_d2),
        .O(\s_axi_wdata[5] ));
  LUT5 #(
    .INIT(32'h78FFFF78)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ),
        .I2(p_1_in16_in),
        .I3(spisel_pulse_cdc_from_spi_d3),
        .I4(spisel_pulse_cdc_from_spi_d2),
        .O(\s_axi_wdata[7] ));
  LUT5 #(
    .INIT(32'hFFFFA900)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_1 
       (.I0(wr_data_count[7]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ),
        .I2(wr_data_count[6]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000FB0000000000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3 
       (.I0(wr_data_count[7]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ),
        .I2(wr_data_count[8]),
        .I3(Bus_RNW_reg),
        .I4(\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ),
        .I5(p_2_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_1 
       (.I0(wr_data_count[6]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFF90FF90FFFFFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_1 
       (.I0(wr_data_count[5]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_2 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_1 
       (.I0(wr_data_count[4]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_2 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA90000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_1 
       (.I0(wr_data_count[3]),
        .I1(wr_data_count[0]),
        .I2(wr_data_count[1]),
        .I3(wr_data_count[2]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFFA900)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1 
       (.I0(rd_data_count[2]),
        .I1(rd_data_count[1]),
        .I2(rd_data_count[0]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA900)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2 
       (.I0(wr_data_count[2]),
        .I1(wr_data_count[1]),
        .I2(wr_data_count[0]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_1 
       (.I0(rd_data_count[0]),
        .I1(rd_data_count[1]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2 
       (.I0(wr_data_count[0]),
        .I1(wr_data_count[1]),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_1 
       (.I0(wr_data_count[0]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 ),
        .I5(rd_data_count[0]),
        .O(D[0]));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_0_CMD_Error_int),
        .Q(SPISR_0_CMD_Error_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_0_CMD_Error_cdc_from_spi_d1),
        .Q(SPISR_0_CMD_Error_to_axi_clk),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0 ),
        .Q(drr_Overrun_int_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d1),
        .Q(drr_Overrun_int_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d2),
        .Q(drr_Overrun_int_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .Q(modf_strobe_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_strobe_cdc_from_spi_d1),
        .Q(modf_strobe_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_strobe_cdc_from_spi_d2),
        .Q(modf_strobe_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .Q(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(reset_RcFIFO_ptr_cdc_from_axi_d1),
        .Q(reset_RcFIFO_ptr_cdc_from_axi_d2),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_1_spe_frm_axi_clk),
        .Q(SPICR_1_SPE_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_1_SPE_cdc_from_axi_d1),
        .Q(spicr_1_spe_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_2_mst_n_slv_frm_axi_clk),
        .Q(SPICR_2_MST_N_SLV_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_2_MST_N_SLV_cdc_from_axi_d1),
        .Q(SPICR_2_MST_N_SLV_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_3_cpol_frm_axi_clk),
        .Q(SPICR_3_CPOL_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_3_CPOL_cdc_from_axi_d1),
        .Q(spicr_3_cpol_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_4_cpha_frm_axi_clk),
        .Q(SPICR_4_CPHA_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_4_CPHA_cdc_from_axi_d1),
        .Q(spicr_4_cpha_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 ),
        .Q(SPICR_5_TXFIFO_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_5_TXFIFO_cdc_from_axi_d1),
        .Q(spicr_5_txfifo_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_8_tr_inhibit_frm_axi_clk),
        .Q(SPICR_8_TR_INHIBIT_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_8_TR_INHIBIT_cdc_from_axi_d1),
        .Q(spicr_8_tr_inhibit_to_spi_clk),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk[0]),
        .Q(SPICR_bits_7_8_cdc_from_axi_d1_0),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_bits_7_8_cdc_from_axi_d1_0),
        .Q(spicr_bits_7_8_to_spi_clk[1]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk[1]),
        .Q(SPICR_bits_7_8_cdc_from_axi_d1_1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPICR_bits_7_8_cdc_from_axi_d1_1),
        .Q(spicr_bits_7_8_to_spi_clk[0]),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1 
       (.I0(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .I1(spicr_6_rxfifo_rst_frm_axi_clk),
        .O(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ));
  FDRE \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0 ),
        .Q(\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0 ),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_d1_reg),
        .Q(spisel_d1_reg_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_d1_reg_cdc_from_spi_d1),
        .Q(spisel_d1_reg_to_axi_clk),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_n_0 ),
        .Q(spisel_pulse_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_pulse_cdc_from_spi_d1),
        .Q(spisel_pulse_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_pulse_cdc_from_spi_d2),
        .Q(spisel_pulse_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISSR_frm_axi_clk),
        .Q(SPISSR_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISSR_cdc_from_axi_d1),
        .Q(register_Data_slvsel_int),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_1_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sr_3_MODF_int),
        .Q(SR_3_modf_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SR_3_modf_cdc_from_axi_d1),
        .Q(sr_3_modf_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0 ),
        .Q(spiXfer_done_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_d1),
        .Q(spiXfer_done_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_d2),
        .Q(spiXfer_done_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty),
        .Q(Tx_FIFO_Empty_SPISR_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_FIFO_Empty_SPISR_cdc_from_spi_d1),
        .Q(\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0 ),
        .I1(drr_Overrun_int),
        .O(D0));
  FDRE \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D0),
        .Q(\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0 ),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .I1(modf_strobe_int),
        .O(D04_out));
  FDRE \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D04_out),
        .Q(\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_n_0 ),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0 ),
        .I1(\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0 ),
        .O(D01_out));
  FDRE \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D01_out),
        .Q(\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0 ),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h9)) 
    \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_n_0 ),
        .I1(SPISEL_sync),
        .O(D08_out));
  FDRE \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D08_out),
        .Q(\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_n_0 ),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    QSPI_IO0_T_i_3
       (.I0(spicr_bits_7_8_to_spi_clk[0]),
        .I1(spicr_bits_7_8_to_spi_clk[1]),
        .I2(modf_strobe_int),
        .I3(sr_3_modf_to_spi_clk),
        .O(master_tri_state_en_control1__1));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_1 
       (.I0(sr_3_modf_to_spi_clk),
        .I1(modf_strobe_int),
        .I2(spicr_bits_7_8_to_spi_clk[1]),
        .I3(spicr_bits_7_8_to_spi_clk[0]),
        .I4(IO2_T_control__3),
        .O(\LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    QSPI_SCK_T_i_1
       (.I0(sr_3_modf_to_spi_clk),
        .I1(modf_strobe_int),
        .I2(spicr_bits_7_8_to_spi_clk[1]),
        .I3(spicr_bits_7_8_to_spi_clk[0]),
        .O(D_0));
  LUT4 #(
    .INIT(16'h0F07)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_2 
       (.I0(spicr_3_cpol_to_spi_clk),
        .I1(spicr_4_cpha_to_spi_clk),
        .I2(Q),
        .I3(transfer_start_d2),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF00400040FFFF)) 
    \icount_out[3]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\icount_out_reg[1] ),
        .I2(p_5_in),
        .I3(almost_full),
        .I4(spiXfer_done_d2),
        .I5(spiXfer_done_d3),
        .O(Bus_RNW_reg_reg));
  LUT6 #(
    .INIT(64'hFFFEFEFFFEFFFFFE)) 
    \icount_out[7]_i_1 
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\icount_out_reg[7] ),
        .I2(\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 ),
        .I3(wr_en),
        .I4(spiXfer_done_d3),
        .I5(spiXfer_done_d2),
        .O(rst_reg));
  LUT6 #(
    .INIT(64'h00000000DDDD0DD0)) 
    modf_i_1
       (.I0(modf_reg),
        .I1(modf_reg_0),
        .I2(modf_strobe_cdc_from_spi_d3),
        .I3(modf_strobe_cdc_from_spi_d2),
        .I4(sr_3_MODF_int),
        .I5(reset2ip_reset_int),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    transfer_start_i_1
       (.I0(Rst_to_spi),
        .I1(spicr_1_spe_to_spi_clk),
        .I2(sr_3_modf_to_spi_clk),
        .I3(spicr_8_tr_inhibit_to_spi_clk),
        .I4(stop_clock),
        .I5(transfer_start_reg),
        .O(RESET_SYNC_AX2S_2));
  LUT2 #(
    .INIT(4'h2)) 
    tx_FIFO_Occpncy_MSB_d1_i_1
       (.I0(tx_occ_msb_4),
        .I1(\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 ),
        .O(tx_occ_msb));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_quad_spi_0_0,axi_quad_spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_quad_spi,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axi_quad_spi_0_0
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    ip2intc_irpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_mode = "slave spi_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input ext_spi_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 lite_clk CLK" *) (* x_interface_mode = "slave lite_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 lite_reset RST" *) (* x_interface_mode = "slave lite_reset" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) (* x_interface_mode = "slave AXI_LITE" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [6:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgclk" *) (* x_interface_mode = "slave STARTUP_IO_S" *) output cfgclk;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgmclk" *) output cfgmclk;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S eos" *) output eos;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S preq" *) output preq;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S gsr" *) input gsr;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S gts" *) input gts;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S keyclearb" *) input keyclearb;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrclkts" *) input usrcclkts;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S userdoneo" *) input usrdoneo;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrdonets" *) input usrdonets;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_mode = "master interrupt" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;

  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire ip2intc_irpt;
  wire keyclearb;
  wire preq;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;
  wire NLW_U0_io0_1_o_UNCONNECTED;
  wire NLW_U0_io0_1_t_UNCONNECTED;
  wire NLW_U0_io0_o_UNCONNECTED;
  wire NLW_U0_io0_t_UNCONNECTED;
  wire NLW_U0_io1_1_o_UNCONNECTED;
  wire NLW_U0_io1_1_t_UNCONNECTED;
  wire NLW_U0_io1_o_UNCONNECTED;
  wire NLW_U0_io1_t_UNCONNECTED;
  wire NLW_U0_io2_1_o_UNCONNECTED;
  wire NLW_U0_io2_1_t_UNCONNECTED;
  wire NLW_U0_io2_o_UNCONNECTED;
  wire NLW_U0_io2_t_UNCONNECTED;
  wire NLW_U0_io3_1_o_UNCONNECTED;
  wire NLW_U0_io3_1_t_UNCONNECTED;
  wire NLW_U0_io3_o_UNCONNECTED;
  wire NLW_U0_io3_t_UNCONNECTED;
  wire NLW_U0_s_axi4_arready_UNCONNECTED;
  wire NLW_U0_s_axi4_awready_UNCONNECTED;
  wire NLW_U0_s_axi4_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_rlast_UNCONNECTED;
  wire NLW_U0_s_axi4_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_wready_UNCONNECTED;
  wire NLW_U0_sck_o_UNCONNECTED;
  wire NLW_U0_sck_t_UNCONNECTED;
  wire NLW_U0_ss_1_o_UNCONNECTED;
  wire NLW_U0_ss_1_t_UNCONNECTED;
  wire NLW_U0_ss_t_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi4_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi4_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_ss_o_UNCONNECTED;

  (* Async_Clk = "0" *) 
  (* C_BYTE_LEVEL_INTERRUPT_EN = "0" *) 
  (* C_DUAL_QUAD_MODE = "0" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_FIFO_DEPTH = "256" *) 
  (* C_INSTANCE = "axi_quad_spi_inst" *) 
  (* C_LSB_STUP = "0" *) 
  (* C_NEW_SEQ_EN = "1" *) 
  (* C_NUM_SS_BITS = "1" *) 
  (* C_NUM_TRANSFER_BITS = "8" *) 
  (* C_SCK_RATIO = "2" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SHARED_STARTUP = "0" *) 
  (* C_SPI_MEMORY = "2" *) 
  (* C_SPI_MEM_ADDR_BITS = "24" *) 
  (* C_SPI_MODE = "2" *) 
  (* C_SUB_FAMILY = "spartanuplus" *) 
  (* C_S_AXI4_ADDR_WIDTH = "24" *) 
  (* C_S_AXI4_BASEADDR = "32'b11111111111111111111111111111111" *) 
  (* C_S_AXI4_DATA_WIDTH = "32" *) 
  (* C_S_AXI4_HIGHADDR = "32'b00000000000000000000000000000000" *) 
  (* C_S_AXI4_ID_WIDTH = "4" *) 
  (* C_S_AXI_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TYPE_OF_AXI4_INTERFACE = "0" *) 
  (* C_UC_FAMILY = "1" *) 
  (* C_USE_STARTUP = "1" *) 
  (* C_USE_STARTUP_EXT = "0" *) 
  (* C_XIP_MODE = "0" *) 
  (* C_XIP_PERF_MODE = "1" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_axi_quad_spi_0_0_axi_quad_spi U0
       (.cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .clk(1'b0),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(gsr),
        .gts(gts),
        .io0_1_i(1'b0),
        .io0_1_o(NLW_U0_io0_1_o_UNCONNECTED),
        .io0_1_t(NLW_U0_io0_1_t_UNCONNECTED),
        .io0_i(1'b0),
        .io0_o(NLW_U0_io0_o_UNCONNECTED),
        .io0_t(NLW_U0_io0_t_UNCONNECTED),
        .io1_1_i(1'b0),
        .io1_1_o(NLW_U0_io1_1_o_UNCONNECTED),
        .io1_1_t(NLW_U0_io1_1_t_UNCONNECTED),
        .io1_i(1'b0),
        .io1_o(NLW_U0_io1_o_UNCONNECTED),
        .io1_t(NLW_U0_io1_t_UNCONNECTED),
        .io2_1_i(1'b0),
        .io2_1_o(NLW_U0_io2_1_o_UNCONNECTED),
        .io2_1_t(NLW_U0_io2_1_t_UNCONNECTED),
        .io2_i(1'b0),
        .io2_o(NLW_U0_io2_o_UNCONNECTED),
        .io2_t(NLW_U0_io2_t_UNCONNECTED),
        .io3_1_i(1'b0),
        .io3_1_o(NLW_U0_io3_1_o_UNCONNECTED),
        .io3_1_t(NLW_U0_io3_1_t_UNCONNECTED),
        .io3_i(1'b0),
        .io3_o(NLW_U0_io3_o_UNCONNECTED),
        .io3_t(NLW_U0_io3_t_UNCONNECTED),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(keyclearb),
        .pack(1'b0),
        .preq(preq),
        .s_axi4_aclk(1'b0),
        .s_axi4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arburst({1'b0,1'b0}),
        .s_axi4_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_aresetn(1'b0),
        .s_axi4_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arlock(1'b0),
        .s_axi4_arprot({1'b0,1'b0,1'b0}),
        .s_axi4_arready(NLW_U0_s_axi4_arready_UNCONNECTED),
        .s_axi4_arsize({1'b0,1'b0,1'b0}),
        .s_axi4_arvalid(1'b0),
        .s_axi4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(NLW_U0_s_axi4_awready_UNCONNECTED),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(1'b0),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[3:0]),
        .s_axi4_bready(1'b0),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(NLW_U0_s_axi4_bvalid_UNCONNECTED),
        .s_axi4_rdata(NLW_U0_s_axi4_rdata_UNCONNECTED[31:0]),
        .s_axi4_rid(NLW_U0_s_axi4_rid_UNCONNECTED[3:0]),
        .s_axi4_rlast(NLW_U0_s_axi4_rlast_UNCONNECTED),
        .s_axi4_rready(1'b0),
        .s_axi4_rresp(NLW_U0_s_axi4_rresp_UNCONNECTED[1:0]),
        .s_axi4_rvalid(NLW_U0_s_axi4_rvalid_UNCONNECTED),
        .s_axi4_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(NLW_U0_s_axi4_wready_UNCONNECTED),
        .s_axi4_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wvalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(1'b0),
        .sck_o(NLW_U0_sck_o_UNCONNECTED),
        .sck_t(NLW_U0_sck_t_UNCONNECTED),
        .spisel(1'b1),
        .ss_1_i(1'b0),
        .ss_1_o(NLW_U0_ss_1_o_UNCONNECTED),
        .ss_1_t(NLW_U0_ss_1_t_UNCONNECTED),
        .ss_i(1'b0),
        .ss_o(NLW_U0_ss_o_UNCONNECTED[0]),
        .ss_t(NLW_U0_ss_t_UNCONNECTED),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
endmodule

module design_1_axi_quad_spi_0_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in_0,
    irpt_rdack_d1,
    p_0_in,
    IP2Bus_WrAck_1,
    ip2intc_irpt,
    Q,
    IP2Bus_RdAck_1,
    reset2ip_reset_int,
    irpt_wrack,
    s_axi_aclk,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0 ,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ,
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ,
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0 ,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    tx_FIFO_Empty_d1,
    \FIFO_EXISTS.Tx_FIFO_Empty_intr ,
    rc_FIFO_Full_d1,
    dest_out,
    empty,
    tx_occ_msb_4,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    tx_FIFO_Occpncy_MSB_d1,
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ,
    SPISR_0_CMD_Error_to_axi_clk,
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ,
    SPISR_1_LOOP_Back_Error_int,
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ,
    SPISR_2_MSB_Error_int,
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ,
    spicr_2_mst_n_slv_frm_axi_clk,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    ip2Bus_WrAck_core_reg,
    wrack,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_RdAck_intr_reg_hole,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ,
    bus2ip_wrce_int,
    D);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in34_in;
  output p_1_in31_in;
  output p_1_in28_in;
  output p_1_in25_in;
  output p_1_in22_in;
  output p_1_in19_in;
  output p_1_in16_in;
  output p_1_in13_in;
  output p_1_in10_in;
  output p_1_in7_in;
  output p_1_in4_in;
  output p_1_in1_in;
  output p_1_in_0;
  output irpt_rdack_d1;
  output [0:0]p_0_in;
  output IP2Bus_WrAck_1;
  output ip2intc_irpt;
  output [13:0]Q;
  output IP2Bus_RdAck_1;
  input reset2ip_reset_int;
  input irpt_wrack;
  input s_axi_aclk;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  input \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0 ;
  input \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ;
  input \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ;
  input \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0 ;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input [12:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  input tx_FIFO_Empty_d1;
  input \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  input rc_FIFO_Full_d1;
  input dest_out;
  input empty;
  input tx_occ_msb_4;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input tx_FIFO_Occpncy_MSB_d1;
  input \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ;
  input SPISR_0_CMD_Error_to_axi_clk;
  input \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ;
  input SPISR_1_LOOP_Back_Error_int;
  input \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ;
  input SPISR_2_MSB_Error_int;
  input \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  input ip2Bus_WrAck_core_reg;
  input wrack;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_RdAck_intr_reg_hole;
  input \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  input [0:0]bus2ip_wrce_int;
  input [0:0]D;

  wire [0:0]D;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ;
  wire \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0 ;
  wire IP2Bus_RdAck_1;
  wire IP2Bus_WrAck_1;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire [13:0]Q;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire [0:0]bus2ip_wrce_int;
  wire dest_out;
  wire empty;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ip2intc_irpt_INST_0_i_4_n_0;
  wire ip2intc_irpt_INST_0_i_5_n_0;
  wire ip2intc_irpt_INST_0_i_6_n_0;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [0:0]p_0_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire rc_FIFO_Full_d1;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [12:0]s_axi_wdata;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire tx_FIFO_Empty_d1;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire tx_occ_msb_4;
  wire wrack;

  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'h787878FF)) 
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in7_in),
        .I3(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ),
        .I4(spicr_2_mst_n_slv_frm_axi_clk),
        .O(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ),
        .Q(p_1_in7_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'h78FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in4_in),
        .I3(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ),
        .I4(SPISR_2_MSB_Error_int),
        .O(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ),
        .Q(p_1_in4_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'h78FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in1_in),
        .I3(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ),
        .I4(SPISR_1_LOOP_Back_Error_int),
        .O(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ),
        .Q(p_1_in1_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'h78FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in_0),
        .I3(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ),
        .I4(SPISR_0_CMD_Error_to_axi_clk),
        .O(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ),
        .Q(p_1_in_0),
        .R(reset2ip_reset_int));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(p_1_in34_in),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(s_axi_wdata[1]),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in34_in),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'h78FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in31_in),
        .I3(tx_FIFO_Empty_d1),
        .I4(\FIFO_EXISTS.Tx_FIFO_Empty_intr ),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in31_in),
        .R(reset2ip_reset_int));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(p_1_in28_in),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(s_axi_wdata[3]),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in28_in),
        .R(reset2ip_reset_int));
  LUT6 #(
    .INIT(64'h7878787878FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in25_in),
        .I3(rc_FIFO_Full_d1),
        .I4(dest_out),
        .I5(empty),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in25_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0 ),
        .Q(p_1_in22_in),
        .R(reset2ip_reset_int));
  LUT6 #(
    .INIT(64'hFFFF78FF78787878)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I2(p_1_in19_in),
        .I3(tx_occ_msb_4),
        .I4(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .I5(tx_FIFO_Occpncy_MSB_d1),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in19_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 ),
        .Q(p_1_in16_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ),
        .Q(p_1_in13_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0 ),
        .Q(p_1_in10_in),
        .R(reset2ip_reset_int));
  LUT3 #(
    .INIT(8'hFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_i_1 
       (.I0(intr_ip2bus_rdack),
        .I1(ip2Bus_RdAck_intr_reg_hole),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .O(IP2Bus_RdAck_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_1 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I1(intr_ip2bus_wrack),
        .I2(ip2Bus_WrAck_core_reg),
        .I3(wrack),
        .I4(ip2Bus_WrAck_intr_reg_hole),
        .O(IP2Bus_WrAck_1));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr_ip2bus_rdack),
        .R(reset2ip_reset_int));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr_ip2bus_wrack),
        .R(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    ip2intc_irpt_INST_0
       (.I0(p_0_in),
        .I1(ip2intc_irpt_INST_0_i_1_n_0),
        .I2(ip2intc_irpt_INST_0_i_2_n_0),
        .I3(ip2intc_irpt_INST_0_i_3_n_0),
        .I4(ip2intc_irpt_INST_0_i_4_n_0),
        .O(ip2intc_irpt));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(p_1_in16_in),
        .I1(Q[7]),
        .I2(p_1_in13_in),
        .I3(Q[8]),
        .I4(ip2intc_irpt_INST_0_i_5_n_0),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(p_1_in28_in),
        .I1(Q[3]),
        .I2(p_1_in25_in),
        .I3(Q[4]),
        .I4(ip2intc_irpt_INST_0_i_6_n_0),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(Q[13]),
        .I1(p_1_in_0),
        .I2(p_1_in10_in),
        .I3(Q[9]),
        .I4(p_1_in4_in),
        .I5(Q[11]),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ip2intc_irpt_INST_0_i_4
       (.I0(Q[0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(p_1_in7_in),
        .I3(Q[10]),
        .I4(p_1_in1_in),
        .I5(Q[12]),
        .O(ip2intc_irpt_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_5
       (.I0(Q[5]),
        .I1(p_1_in22_in),
        .I2(Q[6]),
        .I3(p_1_in19_in),
        .O(ip2intc_irpt_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_6
       (.I0(Q[2]),
        .I1(p_1_in31_in),
        .I2(Q[1]),
        .I3(p_1_in34_in),
        .O(ip2intc_irpt_INST_0_i_6_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[9]),
        .Q(Q[10]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[10]),
        .Q(Q[11]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[11]),
        .Q(Q[12]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[12]),
        .Q(Q[13]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(D),
        .Q(Q[8]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[8]),
        .Q(Q[9]),
        .R(reset2ip_reset_int));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(p_0_in),
        .R(reset2ip_reset_int));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset_int));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset_int));
endmodule

module design_1_axi_quad_spi_0_0_qspi_cntrl_reg
   (spicr_bits_7_8_frm_axi_clk,
    SPISR_1_LOOP_Back_Error_int,
    spicr_1_spe_frm_axi_clk,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ,
    spicr_6_rxfifo_rst_frm_axi_clk,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    SPISR_2_MSB_Error_int,
    rst,
    s_axi_wdata_9_sp_1,
    s_axi_wdata_8_sp_1,
    SPISR_4_CPOL_CPHA_Error_int,
    D,
    SPISR_3_Slave_Mode_Error_int,
    reset2ip_reset_int,
    bus2ip_wrce_int,
    s_axi_wdata,
    s_axi_aclk,
    SPICR_data_int_reg0,
    SPICR_3_4_Reset,
    \icount_out_reg[3] ,
    bus2ip_reset_ipif_inverted,
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ,
    p_1_in10_in,
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ,
    \ip_irpt_enable_reg_reg[8] ,
    p_1_in13_in,
    \FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ,
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 );
  output [1:0]spicr_bits_7_8_frm_axi_clk;
  output SPISR_1_LOOP_Back_Error_int;
  output spicr_1_spe_frm_axi_clk;
  output \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ;
  output \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ;
  output \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ;
  output \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  output spicr_6_rxfifo_rst_frm_axi_clk;
  output spicr_7_ss_frm_axi_clk;
  output spicr_8_tr_inhibit_frm_axi_clk;
  output SPISR_2_MSB_Error_int;
  output rst;
  output s_axi_wdata_9_sp_1;
  output s_axi_wdata_8_sp_1;
  output SPISR_4_CPOL_CPHA_Error_int;
  output [0:0]D;
  output SPISR_3_Slave_Mode_Error_int;
  input reset2ip_reset_int;
  input [0:0]bus2ip_wrce_int;
  input [9:0]s_axi_wdata;
  input s_axi_aclk;
  input SPICR_data_int_reg0;
  input SPICR_3_4_Reset;
  input \icount_out_reg[3] ;
  input bus2ip_reset_ipif_inverted;
  input \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ;
  input p_1_in10_in;
  input \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ;
  input \ip_irpt_enable_reg_reg[8] ;
  input p_1_in13_in;
  input \FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ;
  input \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ;

  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ;
  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ;
  wire [0:0]D;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ;
  wire \FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ;
  wire SPICR_3_4_Reset;
  wire SPICR_data_int_reg0;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire SPISR_3_Slave_Mode_Error_int;
  wire SPISR_4_CPOL_CPHA_Error_int;
  wire bus2ip_reset_ipif_inverted;
  wire [0:0]bus2ip_wrce_int;
  wire \icount_out_reg[3] ;
  wire \ip_irpt_enable_reg_reg[8] ;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire reset2ip_reset_int;
  wire rst;
  wire s_axi_aclk;
  wire [9:0]s_axi_wdata;
  wire s_axi_wdata_8_sn_1;
  wire s_axi_wdata_9_sn_1;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;

  assign s_axi_wdata_8_sp_1 = s_axi_wdata_8_sn_1;
  assign s_axi_wdata_9_sp_1 = s_axi_wdata_9_sn_1;
  FDSE #(
    .INIT(1'b0)) 
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[8]),
        .Q(spicr_8_tr_inhibit_frm_axi_clk),
        .S(reset2ip_reset_int));
  FDSE #(
    .INIT(1'b0)) 
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[7]),
        .Q(spicr_7_ss_frm_axi_clk),
        .S(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[6]),
        .Q(spicr_6_rxfifo_rst_frm_axi_clk),
        .R(SPICR_3_4_Reset));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[5]),
        .Q(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .R(SPICR_3_4_Reset));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[4]),
        .Q(\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ),
        .R(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[3]),
        .Q(\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ),
        .R(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[2]),
        .Q(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ),
        .R(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[1]),
        .Q(spicr_1_spe_frm_axi_clk),
        .R(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[0]),
        .Q(SPISR_1_LOOP_Back_Error_int),
        .R(reset2ip_reset_int));
  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_i_1 
       (.I0(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ),
        .O(SPISR_3_Slave_Mode_Error_int));
  LUT2 #(
    .INIT(4'h6)) 
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_i_1 
       (.I0(\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ),
        .I1(\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ),
        .O(SPISR_4_CPOL_CPHA_Error_int));
  LUT3 #(
    .INIT(8'hFE)) 
    \FIFO_EXISTS.TX_FIFO_II_i_1 
       (.I0(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .I1(\icount_out_reg[3] ),
        .I2(bus2ip_reset_ipif_inverted),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5FF2A00)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ),
        .I2(\ip_irpt_enable_reg_reg[8] ),
        .I3(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ),
        .I4(p_1_in13_in),
        .I5(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ),
        .O(s_axi_wdata_8_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2 
       (.I0(\FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ),
        .I1(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 ),
        .I2(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ),
        .I3(\ip_irpt_enable_reg_reg[8] ),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h787878FF78FF7878)) 
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] ),
        .I2(p_1_in10_in),
        .I3(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ),
        .I4(\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 ),
        .I5(\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 ),
        .O(s_axi_wdata_9_sn_1));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[2]),
        .Q(spicr_bits_7_8_frm_axi_clk[1]),
        .R(reset2ip_reset_int));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[1]),
        .Q(spicr_bits_7_8_frm_axi_clk[0]),
        .R(reset2ip_reset_int));
  FDRE #(
    .INIT(1'b0)) 
    \SPICR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[9]),
        .Q(SPISR_2_MSB_Error_int),
        .R(reset2ip_reset_int));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ip_irpt_enable_reg[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 ),
        .I2(\ip_irpt_enable_reg_reg[8] ),
        .O(D));
endmodule

module design_1_axi_quad_spi_0_0_qspi_core_interface
   (SPISR_0_CMD_Error_to_axi_clk,
    spisel_d1_reg_to_axi_clk,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    spicr_1_spe_frm_axi_clk,
    spicr_2_mst_n_slv_frm_axi_clk,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    spicr_5_txfifo_rst_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    sr_3_MODF_int,
    SPISSR_frm_axi_clk,
    dout,
    empty,
    dest_out,
    almost_full,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    sck_t,
    p_1_in,
    SPISR_1_LOOP_Back_Error_int,
    spicr_6_rxfifo_rst_frm_axi_clk,
    spicr_7_ss_frm_axi_clk,
    SPISR_2_MSB_Error_int,
    sw_rst_cond_d1,
    irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    p_1_in34_in,
    p_1_in31_in,
    p_1_in28_in,
    p_1_in25_in,
    p_1_in22_in,
    p_1_in19_in,
    p_1_in16_in,
    p_1_in13_in,
    p_1_in10_in,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in_0,
    irpt_rdack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    ip2bus_wrack_int,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_RdAck_core_reg,
    ip2bus_rdack_int,
    ip2Bus_WrAck_core_reg_1,
    \RESET_FLOPS[15].RST_FLOPS ,
    p_0_in,
    rx_fifo_empty_i,
    ip2intc_irpt,
    Q,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 ,
    reset2ip_reset_int,
    s_axi_aclk,
    rd_ce_or_reduce_core_cmb,
    ext_spi_clk,
    s_axi_wdata,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    spisel,
    bus2ip_wrce_int,
    SPICR_data_int_reg0,
    SPICR_3_4_Reset,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    reset_trig0,
    irpt_wrack,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    ip2Bus_WrAck_intr_reg_hole_d1_reg_0,
    ip2Bus_WrAck_intr_reg_hole0,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ,
    ip2Bus_WrAck_core_reg0,
    intr_controller_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    ipif_glbl_irpt_enable_reg_reg,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    modf_reg,
    Bus_RNW_reg,
    p_5_in,
    D,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ,
    p_4_in,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 ,
    p_1_in_1,
    p_2_in,
    p_3_in);
  output SPISR_0_CMD_Error_to_axi_clk;
  output spisel_d1_reg_to_axi_clk;
  output Tx_FIFO_Empty_SPISR_to_axi_clk;
  output spicr_1_spe_frm_axi_clk;
  output spicr_2_mst_n_slv_frm_axi_clk;
  output spicr_3_cpol_frm_axi_clk;
  output spicr_4_cpha_frm_axi_clk;
  output spicr_5_txfifo_rst_frm_axi_clk;
  output spicr_8_tr_inhibit_frm_axi_clk;
  output sr_3_MODF_int;
  output [0:0]SPISSR_frm_axi_clk;
  output [7:0]dout;
  output empty;
  output dest_out;
  output almost_full;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  output sck_t;
  output [0:0]p_1_in;
  output SPISR_1_LOOP_Back_Error_int;
  output spicr_6_rxfifo_rst_frm_axi_clk;
  output spicr_7_ss_frm_axi_clk;
  output SPISR_2_MSB_Error_int;
  output sw_rst_cond_d1;
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output p_1_in34_in;
  output p_1_in31_in;
  output p_1_in28_in;
  output p_1_in25_in;
  output p_1_in22_in;
  output p_1_in19_in;
  output p_1_in16_in;
  output p_1_in13_in;
  output p_1_in10_in;
  output p_1_in7_in;
  output p_1_in4_in;
  output p_1_in1_in;
  output p_1_in_0;
  output irpt_rdack_d1;
  output ip2Bus_WrAck_intr_reg_hole_d1;
  output ip2Bus_WrAck_core_reg_d1;
  output ip2bus_wrack_int;
  output ip2Bus_RdAck_intr_reg_hole_d1;
  output ip2Bus_RdAck_core_reg;
  output ip2bus_rdack_int;
  output ip2Bus_WrAck_core_reg_1;
  output \RESET_FLOPS[15].RST_FLOPS ;
  output [0:0]p_0_in;
  output rx_fifo_empty_i;
  output ip2intc_irpt;
  output [13:0]Q;
  output [14:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 ;
  input reset2ip_reset_int;
  input s_axi_aclk;
  input rd_ce_or_reduce_core_cmb;
  input ext_spi_clk;
  input [13:0]s_axi_wdata;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input spisel;
  input [1:0]bus2ip_wrce_int;
  input SPICR_data_int_reg0;
  input SPICR_3_4_Reset;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input reset_trig0;
  input irpt_wrack;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input ip2Bus_WrAck_intr_reg_hole_d1_reg_0;
  input ip2Bus_WrAck_intr_reg_hole0;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  input ip2Bus_WrAck_core_reg0;
  input intr_controller_rd_ce_or_reduce;
  input ip2Bus_RdAck_intr_reg_hole0;
  input ipif_glbl_irpt_enable_reg_reg;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  input modf_reg;
  input Bus_RNW_reg;
  input p_5_in;
  input [6:0]D;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  input p_4_in;
  input \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 ;
  input p_1_in_1;
  input p_2_in;
  input p_3_in;

  wire Allow_MODF_Strobe;
  wire Bus_RNW_reg;
  wire CE;
  wire CONTROL_REG_I_n_13;
  wire CONTROL_REG_I_n_14;
  wire [6:0]D;
  wire D_0;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_11 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_12 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_13 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_14 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_15 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_16 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_17 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_27 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_28 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_29 ;
  wire \FIFO_EXISTS.CLK_CROSS_I_n_30 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ;
  wire \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ;
  wire \FIFO_EXISTS.RX_FIFO_II_i_2_n_0 ;
  wire [8:0]\FIFO_EXISTS.Rx_FIFO_occ_Reversed ;
  wire \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ;
  wire \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  wire [8:0]\FIFO_EXISTS.Tx_FIFO_occ_Reversed ;
  wire \FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ;
  wire \FIFO_EXISTS.data_Exists_RcFIFO_pulse044_in ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire IO2_T_control__3;
  wire IP2Bus_Error_1;
  wire IP2Bus_RdAck_1;
  wire IP2Bus_WrAck_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_5_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_5_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_8_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_5_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ;
  wire [14:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ;
  wire \LOGIC_FOR_MD_12_GEN.Addr_Bit_int ;
  wire \LOGIC_FOR_MD_12_GEN.Addr_Phase_int ;
  wire \LOGIC_FOR_MD_12_GEN.Data_Dir_int ;
  wire \LOGIC_FOR_MD_12_GEN.Data_Phase_int ;
  wire \LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_n_0 ;
  wire \LOGIC_FOR_MD_12_GEN.SCK_O_int ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_18 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_22 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_26 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_24 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_25 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_26 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_33 ;
  wire \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_38 ;
  wire [13:0]Q;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ;
  wire Quad_Phase_int;
  wire R;
  wire [4:4]\RATIO_OF_2_GENERATE.Count_reg ;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire RESET_SYNC_AXI_SPI_CLK_INST_n_2;
  wire Rx_FIFO_Full_Fifo;
  wire Rx_FIFO_Full_Fifo_d1;
  wire SOFT_RESET_I_n_3;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPICR_3_4_Reset;
  wire SPICR_data_int_reg0;
  wire SPISEL_sync;
  wire SPISR_0_CMD_Error_int;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire SPISR_3_Slave_Mode_Error_int;
  wire SPISR_4_CPOL_CPHA_Error_int;
  wire [0:0]SPISSR_frm_axi_clk;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int130_out__0;
  wire SPIXfer_done_int132_out__0;
  wire SPIXfer_done_int_pulse;
  wire [0:0]SS_O_int;
  wire SS_T_int;
  wire Serial_Dout_018_in;
  wire [6:7]Shift_Reg;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire almost_full_0;
  wire [23:23]bus2IP_Data_for_interrupt_core;
  wire bus2ip_reset_ipif_inverted;
  wire [1:0]bus2ip_wrce_int;
  wire cfgclk;
  wire cfgmclk;
  wire [0:7]data_from_txfifo;
  wire [0:7]data_to_rx_fifo;
  wire dest_out;
  wire dest_out_1;
  wire [3:0]di_int;
  wire di_int_sync_0;
  wire di_int_sync_1;
  wire di_int_sync_2;
  wire di_int_sync_3;
  wire [3:0]do_int;
  wire [7:0]dout;
  wire drr_Overrun_int;
  wire [3:0]dts_int;
  wire empty;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire [24:31]ip2Bus_Data_1;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_core_reg0;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_core_reg0;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg_0;
  wire ip2bus_rdack_int;
  wire ip2bus_wrack_int;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire keyclearb;
  wire master_tri_state_en_control1__1;
  wire mode_0__0;
  wire mode_1__3;
  wire modf_reg;
  wire modf_strobe_int;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire p_1_in_1;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire preq;
  wire [2:0]qspi_cntrl_ps;
  wire rc_FIFO_Full_d1;
  wire rd_ce_or_reduce_core_cmb;
  wire rd_en;
  wire read_ack_delay_6;
  wire read_ack_delay_7;
  wire receive_Data_int1__0;
  wire [0:0]register_Data_slvsel_int;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire rst;
  wire rst12_out;
  wire rst_to_spi_int;
  wire rx_fifo_empty_i;
  wire [4:7]rx_shft_reg_mode_0011;
  wire s_axi_aclk;
  wire [13:0]s_axi_wdata;
  wire sck_d3;
  wire sck_t;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire spiXfer_done_int;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_5_txfifo_to_spi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_8_tr_inhibit_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire stop_clock;
  wire stop_clock134_out__3;
  wire stop_clock1__3;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire transfer_start_d2;
  wire tx_FIFO_Empty_d1;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire tx_fifo_empty;
  wire tx_occ_msb;
  wire tx_occ_msb_1;
  wire tx_occ_msb_2;
  wire tx_occ_msb_3;
  wire tx_occ_msb_4;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;
  wire wr_en;
  wire wrack;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_data_valid_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED ;
  wire [8:0]\NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_almost_empty_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_data_valid_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_dbiterr_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_full_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_overflow_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_prog_empty_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_prog_full_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_rd_rst_busy_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_sbiterr_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_underflow_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_wr_ack_UNCONNECTED ;
  wire \NLW_FIFO_EXISTS.TX_FIFO_II_wr_rst_busy_UNCONNECTED ;
  wire [8:0]\NLW_FIFO_EXISTS.TX_FIFO_II_rd_data_count_UNCONNECTED ;

  design_1_axi_quad_spi_0_0_qspi_cntrl_reg CONTROL_REG_I
       (.\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 (spicr_5_txfifo_rst_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0 (spicr_4_cpha_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0 (spicr_3_cpol_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0 (spicr_2_mst_n_slv_frm_axi_clk),
        .D(bus2IP_Data_for_interrupt_core),
        .\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 (\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ),
        .\FIFO_EXISTS.data_Exists_RcFIFO_int_d1 (\FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ),
        .\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 (rx_fifo_empty_i),
        .SPICR_3_4_Reset(SPICR_3_4_Reset),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .SPISR_3_Slave_Mode_Error_int(SPISR_3_Slave_Mode_Error_int),
        .SPISR_4_CPOL_CPHA_Error_int(SPISR_4_CPOL_CPHA_Error_int),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int(bus2ip_wrce_int[0]),
        .\icount_out_reg[3] (\RESET_FLOPS[15].RST_FLOPS ),
        .\ip_irpt_enable_reg_reg[8] (spisel_d1_reg_to_axi_clk),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .rst(rst12_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .s_axi_wdata_8_sp_1(CONTROL_REG_I_n_14),
        .s_axi_wdata_9_sp_1(CONTROL_REG_I_n_13),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DATA_STARTUP_EN.DI_INT_IO0_I_REG 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(di_int[0]),
        .Q(di_int_sync_0),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DATA_STARTUP_EN.DI_INT_IO1_I_REG 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(di_int[1]),
        .Q(di_int_sync_1),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DATA_STARTUP_EN.DI_INT_IO2_I_REG 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(di_int[2]),
        .Q(di_int_sync_2),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \DATA_STARTUP_EN.DI_INT_IO3_I_REG 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(di_int[3]),
        .Q(di_int_sync_3),
        .R(1'b0));
  design_1_axi_quad_spi_0_0_cross_clk_sync_fifo_1 \FIFO_EXISTS.CLK_CROSS_I 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(\FIFO_EXISTS.CLK_CROSS_I_n_17 ),
        .D({ip2Bus_Data_1[24],ip2Bus_Data_1[25],ip2Bus_Data_1[26],ip2Bus_Data_1[27],ip2Bus_Data_1[28],ip2Bus_Data_1[29],ip2Bus_Data_1[30],ip2Bus_Data_1[31]}),
        .D_0(D_0),
        .E(\FIFO_EXISTS.CLK_CROSS_I_n_29 ),
        .\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg (rx_fifo_empty_i),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .IO2_T_control__3(IO2_T_control__3),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_1 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_2 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_5_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_1 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27]_2 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_5_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29]_1 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30]_1 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_1 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_5_n_0 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (\FIFO_EXISTS.CLK_CROSS_I_n_14 ),
        .\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0 (\FIFO_EXISTS.CLK_CROSS_I_n_13 ),
        .\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0 (\FIFO_EXISTS.CLK_CROSS_I_n_12 ),
        .\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0 (spicr_5_txfifo_rst_frm_axi_clk),
        .\LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2_0 (\FIFO_EXISTS.CLK_CROSS_I_n_30 ),
        .\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0 (\FIFO_EXISTS.CLK_CROSS_I_n_15 ),
        .\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0 (Tx_FIFO_Empty_SPISR_to_axi_clk),
        .\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0 (spiXfer_done_int),
        .Q(\RATIO_OF_2_GENERATE.Count_reg ),
        .RESET_SYNC_AX2S_2(\FIFO_EXISTS.CLK_CROSS_I_n_11 ),
        .Rst_to_spi(rst_to_spi_int),
        .SPICR_2_MST_N_SLV_to_spi_clk(SPICR_2_MST_N_SLV_to_spi_clk),
        .SPISEL_sync(SPISEL_sync),
        .SPISR_0_CMD_Error_int(SPISR_0_CMD_Error_int),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .almost_full(almost_full),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .drr_Overrun_int(drr_Overrun_int),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\icount_out_reg[1] (ip2Bus_WrAck_core_reg_1),
        .\icount_out_reg[7] (\RESET_FLOPS[15].RST_FLOPS ),
        .master_tri_state_en_control1__1(master_tri_state_en_control1__1),
        .modf_reg(ip2Bus_RdAck_core_reg),
        .modf_reg_0(modf_reg),
        .modf_strobe_int(modf_strobe_int),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in22_in(p_1_in22_in),
        .p_2_in(p_2_in),
        .p_5_in(p_5_in),
        .rd_data_count(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [2:0]),
        .register_Data_slvsel_int(register_Data_slvsel_int),
        .reset2ip_reset_int(reset2ip_reset_int),
        .rst(rst),
        .rst_reg(\FIFO_EXISTS.CLK_CROSS_I_n_16 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[7],s_axi_wdata[5],s_axi_wdata[0]}),
        .\s_axi_wdata[5] (\FIFO_EXISTS.CLK_CROSS_I_n_28 ),
        .\s_axi_wdata[7] (\FIFO_EXISTS.CLK_CROSS_I_n_27 ),
        .spiXfer_done_d2(spiXfer_done_d2),
        .spiXfer_done_d3(spiXfer_done_d3),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_3_cpol_to_spi_clk(spicr_3_cpol_to_spi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_4_cpha_to_spi_clk(spicr_4_cpha_to_spi_clk),
        .spicr_5_txfifo_to_spi_clk(spicr_5_txfifo_to_spi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spicr_8_tr_inhibit_to_spi_clk(spicr_8_tr_inhibit_to_spi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk),
        .spisel_d1_reg(spisel_d1_reg),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .stop_clock(stop_clock),
        .transfer_start_d2(transfer_start_d2),
        .transfer_start_reg(\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_26 ),
        .tx_occ_msb(tx_occ_msb),
        .tx_occ_msb_4(tx_occ_msb_4),
        .wr_data_count(\FIFO_EXISTS.Tx_FIFO_occ_Reversed ),
        .wr_en(wr_en));
  FDRE \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_0_CMD_Error_to_axi_clk),
        .Q(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_1_LOOP_Back_Error_int),
        .Q(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_2_MSB_Error_int),
        .Q(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_3_Slave_Mode_Error_int),
        .Q(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SPISR_4_CPOL_CPHA_Error_int),
        .Q(\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1 ),
        .R(reset2ip_reset_int));
  design_1_axi_quad_spi_0_0_qspi_fifo_ifmodule \FIFO_EXISTS.FIFO_IF_MODULE_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\FIFO_EXISTS.Tx_FIFO_Empty_intr (\FIFO_EXISTS.Tx_FIFO_Empty_intr ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 ),
        .Receive_ip2bus_error_reg_0(rx_fifo_empty_i),
        .dest_out(dest_out),
        .empty(empty),
        .p_4_in(p_4_in),
        .rc_FIFO_Full_d1(rc_FIFO_Full_d1),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .tx_FIFO_Empty_d1(tx_FIFO_Empty_d1),
        .tx_FIFO_Occpncy_MSB_d1(tx_FIFO_Occpncy_MSB_d1),
        .tx_occ_msb(tx_occ_msb));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_single__1 \FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC 
       (.dest_clk(ext_spi_clk),
        .dest_out(dest_out_1),
        .src_clk(1'b0),
        .src_in(empty));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_single \FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC 
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(Rx_FIFO_Full_Fifo_d1));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DONT_TOUCH *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1f1f" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_fifo_async \FIFO_EXISTS.RX_FIFO_II 
       (.almost_empty(\NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED ),
        .almost_full(almost_full_0),
        .data_valid(\NLW_FIFO_EXISTS.RX_FIFO_II_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED ),
        .din({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .dout(dout),
        .empty(empty),
        .full(\NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED ),
        .prog_empty(\NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED ),
        .rd_clk(s_axi_aclk),
        .rd_data_count(\FIFO_EXISTS.Rx_FIFO_occ_Reversed ),
        .rd_en(\FIFO_EXISTS.RX_FIFO_II_i_2_n_0 ),
        .rd_rst_busy(\NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED ),
        .rst(rst),
        .sbiterr(\NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED ),
        .wr_ack(\NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED ),
        .wr_clk(ext_spi_clk),
        .wr_data_count(\NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED [8:0]),
        .wr_en(spiXfer_done_int),
        .wr_rst_busy(\NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FIFO_EXISTS.RX_FIFO_II_i_2 
       (.I0(empty),
        .I1(ip2Bus_RdAck_core_reg),
        .I2(p_4_in),
        .I3(Bus_RNW_reg),
        .O(\FIFO_EXISTS.RX_FIFO_II_i_2_n_0 ));
  FDRE \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.CLK_CROSS_I_n_15 ),
        .Q(rx_fifo_empty_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1 
       (.I0(almost_full_0),
        .I1(dest_out_1),
        .O(Rx_FIFO_Full_Fifo));
  FDRE \FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Rx_FIFO_Full_Fifo),
        .Q(Rx_FIFO_Full_Fifo_d1),
        .R(rst_to_spi_int));
  design_1_axi_quad_spi_0_0_counter_f \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\FIFO_EXISTS.Tx_FIFO_Empty_intr (\FIFO_EXISTS.Tx_FIFO_Empty_intr ),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(almost_full),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .\icount_out_reg[0]_0 (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ),
        .\icount_out_reg[0]_1 (SOFT_RESET_I_n_3),
        .\icount_out_reg[1]_0 (\FIFO_EXISTS.CLK_CROSS_I_n_17 ),
        .\icount_out_reg[7]_0 (\RESET_FLOPS[15].RST_FLOPS ),
        .\icount_out_reg[7]_1 (spicr_5_txfifo_rst_frm_axi_clk),
        .\icount_out_reg[7]_2 (ip2Bus_WrAck_core_reg_1),
        .\icount_out_reg[7]_3 (\FIFO_EXISTS.CLK_CROSS_I_n_16 ),
        .p_5_in(p_5_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .rst(rst12_out),
        .s_axi_aclk(s_axi_aclk),
        .spiXfer_done_d2(spiXfer_done_d2),
        .spiXfer_done_d3(spiXfer_done_d3),
        .tx_occ_msb_1(tx_occ_msb_1),
        .wr_en(wr_en));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DONT_TOUCH *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_fifo_async__parameterized1 \FIFO_EXISTS.TX_FIFO_II 
       (.almost_empty(\NLW_FIFO_EXISTS.TX_FIFO_II_almost_empty_UNCONNECTED ),
        .almost_full(almost_full),
        .data_valid(\NLW_FIFO_EXISTS.TX_FIFO_II_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_FIFO_EXISTS.TX_FIFO_II_dbiterr_UNCONNECTED ),
        .din(s_axi_wdata[7:0]),
        .dout({data_from_txfifo[0],data_from_txfifo[1],data_from_txfifo[2],data_from_txfifo[3],data_from_txfifo[4],data_from_txfifo[5],data_from_txfifo[6],data_from_txfifo[7]}),
        .empty(tx_fifo_empty),
        .full(\NLW_FIFO_EXISTS.TX_FIFO_II_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_FIFO_EXISTS.TX_FIFO_II_overflow_UNCONNECTED ),
        .prog_empty(\NLW_FIFO_EXISTS.TX_FIFO_II_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_FIFO_EXISTS.TX_FIFO_II_prog_full_UNCONNECTED ),
        .rd_clk(ext_spi_clk),
        .rd_data_count(\NLW_FIFO_EXISTS.TX_FIFO_II_rd_data_count_UNCONNECTED [8:0]),
        .rd_en(rd_en),
        .rd_rst_busy(\NLW_FIFO_EXISTS.TX_FIFO_II_rd_rst_busy_UNCONNECTED ),
        .rst(rst12_out),
        .sbiterr(\NLW_FIFO_EXISTS.TX_FIFO_II_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_FIFO_EXISTS.TX_FIFO_II_underflow_UNCONNECTED ),
        .wr_ack(\NLW_FIFO_EXISTS.TX_FIFO_II_wr_ack_UNCONNECTED ),
        .wr_clk(s_axi_aclk),
        .wr_data_count(\FIFO_EXISTS.Tx_FIFO_occ_Reversed ),
        .wr_en(wr_en),
        .wr_rst_busy(\NLW_FIFO_EXISTS.TX_FIFO_II_wr_rst_busy_UNCONNECTED ));
  LUT1 #(
    .INIT(2'h1)) 
    \FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1 
       (.I0(rx_fifo_empty_i),
        .O(\FIFO_EXISTS.data_Exists_RcFIFO_pulse044_in ));
  FDRE \FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.data_Exists_RcFIFO_pulse044_in ),
        .Q(\FIFO_EXISTS.data_Exists_RcFIFO_int_d1 ),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.tx_occ_msb_2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb_1),
        .Q(tx_occ_msb_2),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.tx_occ_msb_3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb_2),
        .Q(tx_occ_msb_3),
        .R(reset2ip_reset_int));
  FDRE \FIFO_EXISTS.tx_occ_msb_4_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb_3),
        .Q(tx_occ_msb_4),
        .R(reset2ip_reset_int));
  design_1_axi_quad_spi_0_0_interrupt_control INTERRUPT_CONTROL_I
       (.D(bus2IP_Data_for_interrupt_core),
        .\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 (\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1 ),
        .\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 (\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1 ),
        .\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 (\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1 ),
        .\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 (\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1 ),
        .\FIFO_EXISTS.Tx_FIFO_Empty_intr (\FIFO_EXISTS.Tx_FIFO_Empty_intr ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1 (\FIFO_EXISTS.CLK_CROSS_I_n_13 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0 (\FIFO_EXISTS.CLK_CROSS_I_n_28 ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0 (\FIFO_EXISTS.CLK_CROSS_I_n_27 ),
        .\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0 (CONTROL_REG_I_n_14),
        .\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0 (CONTROL_REG_I_n_13),
        .IP2Bus_RdAck_1(IP2Bus_RdAck_1),
        .IP2Bus_WrAck_1(IP2Bus_WrAck_1),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg (ip2Bus_RdAck_core_reg),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg_0 ),
        .Q(Q),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .bus2ip_wrce_int(bus2ip_wrce_int[1]),
        .dest_out(dest_out),
        .empty(empty),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_core_reg(ip2Bus_WrAck_core_reg),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_1_in_0(p_1_in_0),
        .rc_FIFO_Full_d1(rc_FIFO_Full_d1),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[13:9],s_axi_wdata[7:0]}),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .tx_FIFO_Empty_d1(tx_FIFO_Empty_d1),
        .tx_FIFO_Occpncy_MSB_d1(tx_FIFO_Occpncy_MSB_d1),
        .tx_occ_msb_4(tx_occ_msb_4),
        .wrack(wrack));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2 
       (.I0(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [5]),
        .I1(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [3]),
        .I2(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [0]),
        .I3(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [1]),
        .I4(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [2]),
        .I5(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA900)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [7]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6_n_0 ),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [6]),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_1 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_5 
       (.I0(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [6]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [5]),
        .I1(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [3]),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [0]),
        .I3(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [1]),
        .I4(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [2]),
        .I5(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [6]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6_n_0 ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_0 ),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25]_1 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2 
       (.I0(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [4]),
        .I1(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [2]),
        .I2(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [1]),
        .I3(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [0]),
        .I4(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [3]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB0000000000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [7]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_8_n_0 ),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [8]),
        .I3(Bus_RNW_reg),
        .I4(empty),
        .I5(p_1_in_1),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_5 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [5]),
        .I1(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [3]),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [0]),
        .I3(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [1]),
        .I4(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [2]),
        .I5(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_8 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [6]),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_6_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2 
       (.I0(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [3]),
        .I1(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [0]),
        .I2(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [1]),
        .I3(\FIFO_EXISTS.Tx_FIFO_occ_Reversed [2]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_5 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I1(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [3]),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [0]),
        .I3(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [1]),
        .I4(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [2]),
        .I5(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [4]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA90000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2 
       (.I0(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [3]),
        .I1(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [0]),
        .I2(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [1]),
        .I3(\FIFO_EXISTS.Rx_FIFO_occ_Reversed [2]),
        .I4(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28]_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [14]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [13]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [12]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [11]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [10]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [9]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [8]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[24]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [7]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[25]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [6]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[26]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [5]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[27]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [4]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[28]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [3]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[29]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [2]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[30]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [1]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_Data_1[31]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0]_0 [0]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Error_1),
        .Q(p_1_in),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck_1),
        .Q(ip2bus_rdack_int),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck_1),
        .Q(ip2bus_wrack_int),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h2)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1 
       (.I0(read_ack_delay_6),
        .I1(read_ack_delay_7),
        .O(ip2Bus_RdAck_core_reg0));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_core_reg0),
        .Q(ip2Bus_RdAck_core_reg),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_core_reg),
        .Q(ip2Bus_WrAck_core_reg_1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg_0 ),
        .Q(ip2Bus_WrAck_core_reg_d1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_core_reg0),
        .Q(ip2Bus_WrAck_core_reg),
        .R(reset2ip_reset_int));
  (* srl_name = "U0/\\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2 " *) 
  SRL16E \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(rd_ce_or_reduce_core_cmb),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_2_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ),
        .I1(\LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ),
        .Q(read_ack_delay_6),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_delay_6),
        .Q(read_ack_delay_7),
        .R(reset2ip_reset_int));
  design_1_axi_quad_spi_0_0_qspi_startup_block \LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I 
       (.DI(di_int),
        .DO(do_int),
        .DTS(dts_int),
        .\LOGIC_FOR_MD_12_GEN.SCK_O_int (\LOGIC_FOR_MD_12_GEN.SCK_O_int ),
        .SS_O_int(SS_O_int),
        .SS_T_int(SS_T_int),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .eos(eos),
        .gsr(gsr),
        .gts(gts),
        .keyclearb(keyclearb),
        .pipe_signal_reg_r_3_0(\LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_n_0 ),
        .preq(preq),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
  design_1_axi_quad_spi_0_0_qspi_look_up_logic \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I 
       (.CE(CE),
        .D({rx_shft_reg_mode_0011[4],rx_shft_reg_mode_0011[5],rx_shft_reg_mode_0011[7]}),
        .DO(do_int[2]),
        .E(\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_18 ),
        .\FSM_sequential_qspi_cntrl_ps_reg[1] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24 ),
        .\FSM_sequential_qspi_cntrl_ps_reg[1]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25 ),
        .IO2_T_control__3(IO2_T_control__3),
        .Q({\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23 ,\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_24 ,\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_25 }),
        .QSPI_IO1_T(qspi_cntrl_ps),
        .QSPI_IO1_T_0(\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_33 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ),
        .R(R),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_38 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_26 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] ({Shift_Reg[6],Shift_Reg[7]}),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16 ),
        .Rst_to_spi(rst_to_spi_int),
        .SPISR_0_CMD_Error_int(SPISR_0_CMD_Error_int),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int130_out__0(SPIXfer_done_int130_out__0),
        .SPIXfer_done_int132_out__0(SPIXfer_done_int132_out__0),
        .SPIXfer_done_int_pulse(SPIXfer_done_int_pulse),
        .Serial_Dout_018_in(Serial_Dout_018_in),
        .di_int_sync_0(di_int_sync_0),
        .di_int_sync_1(di_int_sync_1),
        .di_int_sync_2(di_int_sync_2),
        .di_int_sync_3(di_int_sync_3),
        .dout({data_from_txfifo[0],data_from_txfifo[1],data_from_txfifo[2],data_from_txfifo[3],data_from_txfifo[4],data_from_txfifo[5],data_from_txfifo[6],data_from_txfifo[7]}),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15 ),
        .master_tri_state_en_control1__1(master_tri_state_en_control1__1),
        .mode_0__0(mode_0__0),
        .mode_1__3(mode_1__3),
        .qspo({\LOGIC_FOR_MD_12_GEN.Data_Dir_int ,\LOGIC_FOR_MD_12_GEN.Data_Phase_int ,Quad_Phase_int,\LOGIC_FOR_MD_12_GEN.Addr_Bit_int ,\LOGIC_FOR_MD_12_GEN.Addr_Phase_int }),
        .\qspo_int_reg[0] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13 ),
        .\qspo_int_reg[3] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_26 ),
        .\qspo_int_reg[8] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_22 ),
        .receive_Data_int1__0(receive_Data_int1__0),
        .sck_d3(sck_d3),
        .stop_clock134_out__3(stop_clock134_out__3),
        .stop_clock1__3(stop_clock1__3));
  design_1_axi_quad_spi_0_0_qspi_mode_control_logic \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_MODF_Strobe_reg_0(RESET_SYNC_AXI_SPI_CLK_INST_n_2),
        .Allow_MODF_Strobe_reg_1(\FIFO_EXISTS.CLK_CROSS_I_n_12 ),
        .CE(CE),
        .D({rx_shft_reg_mode_0011[4],rx_shft_reg_mode_0011[5],rx_shft_reg_mode_0011[7]}),
        .DO(do_int),
        .DTS(dts_int),
        .D_0(D_0),
        .E(\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_18 ),
        .\FSM_sequential_qspi_cntrl_ps_reg[0]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13 ),
        .\FSM_sequential_qspi_cntrl_ps_reg[1]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_22 ),
        .\FSM_sequential_qspi_cntrl_ps_reg[2]_0 (qspi_cntrl_ps),
        .IO2_T_control__3(IO2_T_control__3),
        .\LOGIC_FOR_MD_12_GEN.SCK_O_int (\LOGIC_FOR_MD_12_GEN.SCK_O_int ),
        .Q({\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23 ,\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_24 ,\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_25 }),
        .QSPI_IO0_T_0(\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25 ),
        .QSPI_IO1_T_0(\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ),
        .\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 (\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ),
        .\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0 (\FIFO_EXISTS.CLK_CROSS_I_n_30 ),
        .\RATIO_OF_2_GENERATE.Count_reg[0]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_26 ),
        .\RATIO_OF_2_GENERATE.Count_reg[4]_0 (\RATIO_OF_2_GENERATE.Count_reg ),
        .\RATIO_OF_2_GENERATE.Count_reg[4]_1 (\FIFO_EXISTS.CLK_CROSS_I_n_29 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0 (\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16 ),
        .\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 ({Shift_Reg[6],Shift_Reg[7]}),
        .\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 ({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .Rst_to_spi(rst_to_spi_int),
        .SPICR_2_MST_N_SLV_to_spi_clk(SPICR_2_MST_N_SLV_to_spi_clk),
        .SPISEL_sync(SPISEL_sync),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int130_out__0(SPIXfer_done_int130_out__0),
        .SPIXfer_done_int132_out__0(SPIXfer_done_int132_out__0),
        .SPIXfer_done_int_pulse(SPIXfer_done_int_pulse),
        .SPIXfer_done_int_pulse_d3_reg_0(spiXfer_done_int),
        .SS_O_int(SS_O_int),
        .SS_T_int(SS_T_int),
        .Serial_Dout_018_in(Serial_Dout_018_in),
        .almost_full(almost_full_0),
        .dest_out(dest_out_1),
        .di_int_sync_0(di_int_sync_0),
        .di_int_sync_1(di_int_sync_1),
        .dout({data_from_txfifo[0],data_from_txfifo[1],data_from_txfifo[2],data_from_txfifo[3],data_from_txfifo[4],data_from_txfifo[5],data_from_txfifo[6],data_from_txfifo[7]}),
        .drr_Overrun_int(drr_Overrun_int),
        .empty(tx_fifo_empty),
        .ext_spi_clk(ext_spi_clk),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_38 ),
        .master_tri_state_en_control1__1(master_tri_state_en_control1__1),
        .mode_0__0(mode_0__0),
        .mode_1__3(mode_1__3),
        .modf_strobe_int(modf_strobe_int),
        .qspo({\LOGIC_FOR_MD_12_GEN.Data_Dir_int ,\LOGIC_FOR_MD_12_GEN.Data_Phase_int ,Quad_Phase_int,\LOGIC_FOR_MD_12_GEN.Addr_Bit_int ,\LOGIC_FOR_MD_12_GEN.Addr_Phase_int }),
        .\qspo_int_reg[4] (\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_33 ),
        .rd_en(rd_en),
        .receive_Data_int1__0(receive_Data_int1__0),
        .register_Data_slvsel_int(register_Data_slvsel_int),
        .sck_d3(sck_d3),
        .sck_t(sck_t),
        .spicr_3_cpol_to_spi_clk(spicr_3_cpol_to_spi_clk),
        .spicr_4_cpha_to_spi_clk(spicr_4_cpha_to_spi_clk),
        .spicr_8_tr_inhibit_to_spi_clk(spicr_8_tr_inhibit_to_spi_clk),
        .spisel(spisel),
        .spisel_d1_reg(spisel_d1_reg),
        .stop_clock(stop_clock),
        .stop_clock134_out__3(stop_clock134_out__3),
        .stop_clock1__3(stop_clock1__3),
        .transfer_start_d2(transfer_start_d2),
        .transfer_start_reg_0(\FIFO_EXISTS.CLK_CROSS_I_n_11 ));
  design_1_axi_quad_spi_0_0_reset_sync_module RESET_SYNC_AXI_SPI_CLK_INST
       (.R(R),
        .RESET_SYNC_AX2S_2_0(RESET_SYNC_AXI_SPI_CLK_INST_n_2),
        .Rst_to_spi(rst_to_spi_int),
        .SPISEL_sync(SPISEL_sync),
        .ext_spi_clk(ext_spi_clk),
        .reset2ip_reset_int(reset2ip_reset_int),
        .spicr_5_txfifo_to_spi_clk(spicr_5_txfifo_to_spi_clk));
  design_1_axi_quad_spi_0_0_soft_reset SOFT_RESET_I
       (.\RESET_FLOPS[15].RST_FLOPS_0 (\RESET_FLOPS[15].RST_FLOPS ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .\icount_out_reg[0] (spicr_5_txfifo_rst_frm_axi_clk),
        .\icount_out_reg[0]_0 (\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2 ),
        .reset_trig0(reset_trig0),
        .rst_reg(SOFT_RESET_I_n_3),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  design_1_axi_quad_spi_0_0_qspi_status_slave_sel_reg \STATUS_REG_MODE_12_GEN.STATUS_SLAVE_SEL_REG_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0 (ip2Bus_WrAck_core_reg_1),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .modf_reg_0(\FIFO_EXISTS.CLK_CROSS_I_n_14 ),
        .p_3_in(p_3_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]),
        .sr_3_MODF_int(sr_3_MODF_int));
  FDRE ip2Bus_RdAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_controller_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_RdAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_intr_reg_hole0),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole_d1_reg_0),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole0),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(reset2ip_reset_int));
endmodule

module design_1_axi_quad_spi_0_0_qspi_fifo_ifmodule
   (rc_FIFO_Full_d1,
    tx_FIFO_Empty_d1,
    tx_FIFO_Occpncy_MSB_d1,
    IP2Bus_Error_1,
    reset2ip_reset_int,
    s_axi_aclk,
    \FIFO_EXISTS.Tx_FIFO_Empty_intr ,
    tx_occ_msb,
    dest_out,
    empty,
    Receive_ip2bus_error_reg_0,
    Bus_RNW_reg,
    p_4_in,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg );
  output rc_FIFO_Full_d1;
  output tx_FIFO_Empty_d1;
  output tx_FIFO_Occpncy_MSB_d1;
  output IP2Bus_Error_1;
  input reset2ip_reset_int;
  input s_axi_aclk;
  input \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  input tx_occ_msb;
  input dest_out;
  input empty;
  input Receive_ip2bus_error_reg_0;
  input Bus_RNW_reg;
  input p_4_in;
  input \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ;

  wire Bus_RNW_reg;
  wire \FIFO_EXISTS.Tx_FIFO_Empty_intr ;
  wire IP2Bus_Error_1;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ;
  wire Receive_ip2bus_error0;
  wire Receive_ip2bus_error_reg_0;
  wire Rx_FIFO_Full_Fifo_d1_synced_i;
  wire dest_out;
  wire empty;
  wire p_4_in;
  wire rc_FIFO_Full_d1;
  wire receive_ip2bus_error;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire tx_FIFO_Empty_d1;
  wire tx_FIFO_Occpncy_MSB_d1;
  wire tx_occ_msb;

  LUT2 #(
    .INIT(4'hE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1 
       (.I0(receive_ip2bus_error),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg ),
        .O(IP2Bus_Error_1));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    Receive_ip2bus_error_i_1
       (.I0(Receive_ip2bus_error_reg_0),
        .I1(empty),
        .I2(Bus_RNW_reg),
        .I3(p_4_in),
        .O(Receive_ip2bus_error0));
  FDRE Receive_ip2bus_error_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Receive_ip2bus_error0),
        .Q(receive_ip2bus_error),
        .R(reset2ip_reset_int));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rc_FIFO_Full_d1_i_1
       (.I0(dest_out),
        .I1(empty),
        .O(Rx_FIFO_Full_Fifo_d1_synced_i));
  FDRE rc_FIFO_Full_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_FIFO_Full_Fifo_d1_synced_i),
        .Q(rc_FIFO_Full_d1),
        .R(reset2ip_reset_int));
  FDSE tx_FIFO_Empty_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FIFO_EXISTS.Tx_FIFO_Empty_intr ),
        .Q(tx_FIFO_Empty_d1),
        .S(reset2ip_reset_int));
  FDRE tx_FIFO_Occpncy_MSB_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_occ_msb),
        .Q(tx_FIFO_Occpncy_MSB_d1),
        .R(reset2ip_reset_int));
endmodule

module design_1_axi_quad_spi_0_0_qspi_look_up_logic
   (qspo,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ,
    D,
    receive_Data_int1__0,
    SPIXfer_done_int130_out__0,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg ,
    SPIXfer_done_int132_out__0,
    \qspo_int_reg[0] ,
    SPISR_0_CMD_Error_int,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] ,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] ,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] ,
    E,
    Serial_Dout_018_in,
    mode_1__3,
    mode_0__0,
    \qspo_int_reg[8] ,
    IO2_T_control__3,
    \FSM_sequential_qspi_cntrl_ps_reg[1] ,
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ,
    \qspo_int_reg[3] ,
    ext_spi_clk,
    Rst_to_spi,
    R,
    CE,
    dout,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ,
    di_int_sync_2,
    Q,
    di_int_sync_3,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1 ,
    DO,
    SPIXfer_done_int_pulse,
    QSPI_IO1_T,
    empty,
    di_int_sync_1,
    di_int_sync_0,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] ,
    sck_d3,
    stop_clock134_out__3,
    stop_clock1__3,
    QSPI_IO1_T_0,
    master_tri_state_en_control1__1,
    SPIXfer_done_int);
  output [4:0]qspo;
  output \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ;
  output [2:0]D;
  output receive_Data_int1__0;
  output SPIXfer_done_int130_out__0;
  output \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg ;
  output SPIXfer_done_int132_out__0;
  output \qspo_int_reg[0] ;
  output SPISR_0_CMD_Error_int;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] ;
  output \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] ;
  output \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] ;
  output [0:0]E;
  output Serial_Dout_018_in;
  output mode_1__3;
  output mode_0__0;
  output \qspo_int_reg[8] ;
  output IO2_T_control__3;
  output \FSM_sequential_qspi_cntrl_ps_reg[1] ;
  output \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ;
  output \qspo_int_reg[3] ;
  input ext_spi_clk;
  input Rst_to_spi;
  input R;
  input CE;
  input [7:0]dout;
  input \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ;
  input \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ;
  input di_int_sync_2;
  input [2:0]Q;
  input di_int_sync_3;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1 ;
  input [0:0]DO;
  input SPIXfer_done_int_pulse;
  input [2:0]QSPI_IO1_T;
  input empty;
  input di_int_sync_1;
  input di_int_sync_0;
  input [1:0]\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] ;
  input sck_d3;
  input stop_clock134_out__3;
  input stop_clock1__3;
  input QSPI_IO1_T_0;
  input master_tri_state_en_control1__1;
  input SPIXfer_done_int;

  wire CE;
  wire [2:0]D;
  wire [0:0]DO;
  wire [0:0]E;
  wire \FSM_sequential_qspi_cntrl_ps_reg[1] ;
  wire \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ;
  wire IO2_T_control__3;
  wire \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int ;
  wire \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ;
  wire \LOGIC_FOR_MD_12_GEN.CMD_decoded_int ;
  wire \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ;
  wire \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ;
  wire [2:0]Q;
  wire [2:0]QSPI_IO1_T;
  wire QSPI_IO1_T_0;
  wire QSPI_IO1_T_i_2_n_0;
  wire QSPI_IO1_T_i_3_n_0;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ;
  wire [0:7]\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address ;
  wire [0:0]\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op ;
  wire \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0 ;
  wire R;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1 ;
  wire [1:0]\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7_n_0 ;
  wire Rst_to_spi;
  wire SPISR_0_CMD_Error_int;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int130_out__0;
  wire SPIXfer_done_int132_out__0;
  wire SPIXfer_done_int_pulse;
  wire Serial_Dout_018_in;
  wire di_int_sync_0;
  wire di_int_sync_1;
  wire di_int_sync_2;
  wire di_int_sync_3;
  wire [7:0]dout;
  wire empty;
  wire ext_spi_clk;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] ;
  wire master_tri_state_en_control1__1;
  wire mode_0__0;
  wire mode_1__3;
  wire [4:0]qspo;
  wire \qspo_int_reg[0] ;
  wire \qspo_int_reg[3] ;
  wire \qspo_int_reg[8] ;
  wire receive_Data_int1__0;
  wire sck_d3;
  wire stop_clock134_out__3;
  wire stop_clock1__3;
  wire [11:0]\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED ;
  wire [11:0]\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED ;
  wire [2:1]\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED ;
  wire [11:0]\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF440F440F440F44)) 
    \FSM_sequential_qspi_cntrl_ps[0]_i_3 
       (.I0(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op ),
        .I1(\LOGIC_FOR_MD_12_GEN.CMD_decoded_int ),
        .I2(SPIXfer_done_int_pulse),
        .I3(QSPI_IO1_T[0]),
        .I4(empty),
        .I5(qspo[0]),
        .O(\qspo_int_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_qspi_cntrl_ps[2]_i_3 
       (.I0(qspo[3]),
        .I1(empty),
        .I2(QSPI_IO1_T[0]),
        .O(\qspo_int_reg[8] ));
  LUT2 #(
    .INIT(4'h8)) 
    \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC_i_1 
       (.I0(\LOGIC_FOR_MD_12_GEN.CMD_decoded_int ),
        .I1(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op ),
        .O(SPISR_0_CMD_Error_int));
  LUT6 #(
    .INIT(64'hAA0000002A080808)) 
    QSPI_IO0_T_i_2
       (.I0(QSPI_IO1_T[1]),
        .I1(QSPI_IO1_T_0),
        .I2(qspo[4]),
        .I3(\LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int ),
        .I4(\LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ),
        .I5(\qspo_int_reg[8] ),
        .O(\FSM_sequential_qspi_cntrl_ps_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF7D7D7F7FFDFDFFF)) 
    QSPI_IO1_T_i_1
       (.I0(master_tri_state_en_control1__1),
        .I1(QSPI_IO1_T[1]),
        .I2(QSPI_IO1_T[2]),
        .I3(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .I4(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .I5(QSPI_IO1_T_i_2_n_0),
        .O(\FSM_sequential_qspi_cntrl_ps_reg[1] ));
  LUT6 #(
    .INIT(64'hBEAAFFFF14000000)) 
    QSPI_IO1_T_i_2
       (.I0(\qspo_int_reg[8] ),
        .I1(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .I2(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .I3(qspo[4]),
        .I4(QSPI_IO1_T_0),
        .I5(QSPI_IO1_T_i_3_n_0),
        .O(QSPI_IO1_T_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    QSPI_IO1_T_i_3
       (.I0(\LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ),
        .I1(\LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int ),
        .O(QSPI_IO1_T_i_3_n_0));
  FDRE \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1 ),
        .R(Rst_to_spi));
  FDRE \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1 ),
        .Q(\LOGIC_FOR_MD_12_GEN.CMD_decoded_int ),
        .R(Rst_to_spi));
  FDRE \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ),
        .R(Rst_to_spi));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[7]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[1].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[6]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[2].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[5]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[3].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[4]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [3]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[4].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[3]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [4]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[5].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[2]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [5]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[6].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[1]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [6]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[7].TXFIFO_FIRST_ENTRY_REG_I 
       (.C(ext_spi_clk),
        .CE(CE),
        .D(dout[0]),
        .Q(\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [7]),
        .R(R));
  (* C_FAMILY = "spartanuplus" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "1" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "mode_2_memory_2_nm.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "12" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_quad_spi_0_0_dist_mem_gen_v8_0_17 \QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I 
       (.a({\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [0],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [1],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [2],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [3],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [4],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [5],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [6],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_address [7]}),
        .clk(ext_spi_clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED [11:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED [11:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo({qspo[4],\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ,\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ,qspo[3:2],\LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ,\LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int ,qspo[1:0],\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED [2:1],\QSPI_LOOK_UP_MODE_2_MEMORY_2.Look_up_op }),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(Rst_to_spi),
        .spo(\NLW_QSPI_LOOK_UP_MODE_2_MEMORY_2.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_2.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED [11:0]),
        .we(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_2 
       (.I0(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .I1(QSPI_IO1_T[2]),
        .I2(QSPI_IO1_T[1]),
        .I3(\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0 ),
        .O(IO2_T_control__3));
  LUT5 #(
    .INIT(32'hDC8C8C8C)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3 
       (.I0(\qspo_int_reg[8] ),
        .I1(\LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ),
        .I2(QSPI_IO1_T_0),
        .I3(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .I4(qspo[4]),
        .O(\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_2 
       (.I0(SPIXfer_done_int130_out__0),
        .I1(dout[4]),
        .I2(dout[6]),
        .I3(receive_Data_int1__0),
        .I4(dout[7]),
        .O(\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] ));
  LUT6 #(
    .INIT(64'hFEFFFFFF10000000)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_i_1 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ),
        .I3(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_1 ),
        .I4(SPIXfer_done_int132_out__0),
        .I5(DO),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg ));
  LUT4 #(
    .INIT(16'hB888)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_4 
       (.I0(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .I1(QSPI_IO1_T[2]),
        .I2(QSPI_IO1_T[1]),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6_n_0 ),
        .O(mode_0__0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_5 
       (.I0(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .I1(QSPI_IO1_T[2]),
        .I2(QSPI_IO1_T[1]),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7_n_0 ),
        .O(mode_1__3));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] [1]),
        .I1(di_int_sync_3),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] ));
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] [0]),
        .I1(di_int_sync_2),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] ));
  LUT3 #(
    .INIT(8'h10)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1 
       (.I0(qspo[4]),
        .I1(sck_d3),
        .I2(Serial_Dout_018_in),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_3 
       (.I0(mode_1__3),
        .I1(mode_0__0),
        .O(Serial_Dout_018_in));
  LUT6 #(
    .INIT(64'h000005FF333305FF)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_4 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6_n_0 ),
        .I1(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .I2(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7_n_0 ),
        .I3(QSPI_IO1_T[1]),
        .I4(QSPI_IO1_T[2]),
        .I5(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .O(receive_Data_int1__0));
  LUT6 #(
    .INIT(64'h00000A00CCCC0A00)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_5 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6_n_0 ),
        .I1(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .I2(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7_n_0 ),
        .I3(QSPI_IO1_T[1]),
        .I4(QSPI_IO1_T[2]),
        .I5(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .O(SPIXfer_done_int130_out__0));
  LUT6 #(
    .INIT(64'hDCDDDCCC8C888CCC)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6 
       (.I0(\qspo_int_reg[8] ),
        .I1(\LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int ),
        .I2(qspo[4]),
        .I3(stop_clock134_out__3),
        .I4(stop_clock1__3),
        .I5(\LOGIC_FOR_MD_12_GEN.Data_Mode_0_int ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCDDDCCC8C888CCC)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7 
       (.I0(\qspo_int_reg[8] ),
        .I1(\LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int ),
        .I2(qspo[4]),
        .I3(stop_clock134_out__3),
        .I4(stop_clock1__3),
        .I5(\LOGIC_FOR_MD_12_GEN.Data_Mode_1_int ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(di_int_sync_3),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(di_int_sync_2),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1 
       (.I0(di_int_sync_1),
        .I1(receive_Data_int1__0),
        .I2(di_int_sync_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_4 
       (.I0(mode_1__3),
        .I1(mode_0__0),
        .O(SPIXfer_done_int132_out__0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    transfer_start_i_2
       (.I0(qspo[0]),
        .I1(SPIXfer_done_int),
        .I2(qspo[3]),
        .I3(empty),
        .O(\qspo_int_reg[3] ));
endmodule

module design_1_axi_quad_spi_0_0_qspi_mode_control_logic
   (SS_T_int,
    sck_t,
    DTS,
    SPISEL_sync,
    transfer_start_d2,
    SPIXfer_done_int,
    stop_clock,
    SPIXfer_done_int_pulse,
    sck_d3,
    SPIXfer_done_int_pulse_d3_reg_0,
    modf_strobe_int,
    SS_O_int,
    spisel_d1_reg,
    drr_Overrun_int,
    Allow_MODF_Strobe,
    \LOGIC_FOR_MD_12_GEN.SCK_O_int ,
    DO,
    Q,
    \RATIO_OF_2_GENERATE.Count_reg[0]_0 ,
    \FSM_sequential_qspi_cntrl_ps_reg[2]_0 ,
    CE,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ,
    \qspo_int_reg[4] ,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 ,
    stop_clock134_out__3,
    stop_clock1__3,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ,
    rd_en,
    \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 ,
    \RATIO_OF_2_GENERATE.Count_reg[4]_0 ,
    D_0,
    ext_spi_clk,
    QSPI_IO1_T_0,
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0 ,
    spisel,
    spicr_8_tr_inhibit_to_spi_clk,
    Rst_to_spi,
    Allow_MODF_Strobe_reg_0,
    register_Data_slvsel_int,
    transfer_start_reg_0,
    Allow_MODF_Strobe_reg_1,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ,
    dest_out,
    almost_full,
    D,
    receive_Data_int1__0,
    SPIXfer_done_int130_out__0,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0 ,
    Serial_Dout_018_in,
    SPIXfer_done_int132_out__0,
    mode_0__0,
    mode_1__3,
    spicr_3_cpol_to_spi_clk,
    spicr_4_cpha_to_spi_clk,
    master_tri_state_en_control1__1,
    IO2_T_control__3,
    qspo,
    \FSM_sequential_qspi_cntrl_ps_reg[0]_0 ,
    empty,
    QSPI_IO0_T_0,
    SPICR_2_MST_N_SLV_to_spi_clk,
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ,
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ,
    di_int_sync_1,
    dout,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0 ,
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0 ,
    di_int_sync_0,
    E,
    \RATIO_OF_2_GENERATE.Count_reg[4]_1 );
  output SS_T_int;
  output sck_t;
  output [3:0]DTS;
  output SPISEL_sync;
  output transfer_start_d2;
  output SPIXfer_done_int;
  output stop_clock;
  output SPIXfer_done_int_pulse;
  output sck_d3;
  output SPIXfer_done_int_pulse_d3_reg_0;
  output modf_strobe_int;
  output [0:0]SS_O_int;
  output spisel_d1_reg;
  output drr_Overrun_int;
  output Allow_MODF_Strobe;
  output \LOGIC_FOR_MD_12_GEN.SCK_O_int ;
  output [3:0]DO;
  output [2:0]Q;
  output \RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  output [2:0]\FSM_sequential_qspi_cntrl_ps_reg[2]_0 ;
  output CE;
  output \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ;
  output \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ;
  output \qspo_int_reg[4] ;
  output [1:0]\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 ;
  output stop_clock134_out__3;
  output stop_clock1__3;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  output rd_en;
  output [7:0]\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 ;
  output [0:0]\RATIO_OF_2_GENERATE.Count_reg[4]_0 ;
  input D_0;
  input ext_spi_clk;
  input QSPI_IO1_T_0;
  input \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0 ;
  input spisel;
  input spicr_8_tr_inhibit_to_spi_clk;
  input Rst_to_spi;
  input Allow_MODF_Strobe_reg_0;
  input [0:0]register_Data_slvsel_int;
  input transfer_start_reg_0;
  input Allow_MODF_Strobe_reg_1;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ;
  input dest_out;
  input almost_full;
  input [2:0]D;
  input receive_Data_int1__0;
  input SPIXfer_done_int130_out__0;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0 ;
  input Serial_Dout_018_in;
  input SPIXfer_done_int132_out__0;
  input mode_0__0;
  input mode_1__3;
  input spicr_3_cpol_to_spi_clk;
  input spicr_4_cpha_to_spi_clk;
  input master_tri_state_en_control1__1;
  input IO2_T_control__3;
  input [4:0]qspo;
  input \FSM_sequential_qspi_cntrl_ps_reg[0]_0 ;
  input empty;
  input QSPI_IO0_T_0;
  input SPICR_2_MST_N_SLV_to_spi_clk;
  input \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ;
  input \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ;
  input di_int_sync_1;
  input [7:0]dout;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0 ;
  input \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0 ;
  input di_int_sync_0;
  input [0:0]E;
  input [0:0]\RATIO_OF_2_GENERATE.Count_reg[4]_1 ;

  wire Allow_MODF_Strobe;
  wire Allow_MODF_Strobe_reg_0;
  wire Allow_MODF_Strobe_reg_1;
  wire CE;
  wire [2:0]D;
  wire [3:0]DO;
  wire DRR_Overrun_reg_int0__0;
  wire [3:0]DTS;
  wire D_0;
  wire [0:0]E;
  wire \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0 ;
  wire \FSM_sequential_qspi_cntrl_ps_reg[0]_0 ;
  wire \FSM_sequential_qspi_cntrl_ps_reg[1]_0 ;
  wire [2:0]\FSM_sequential_qspi_cntrl_ps_reg[2]_0 ;
  wire IO2_T_control__3;
  wire \LOGIC_FOR_MD_12_GEN.SCK_O_int ;
  wire MODF_strobe0;
  wire Mst_Trans_inhibit_d1;
  wire [2:0]Q;
  wire QSPI_IO0_T_0;
  wire QSPI_IO0_T_i_1_n_0;
  wire QSPI_IO1_T_0;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ;
  wire \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ;
  wire \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0 ;
  wire \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0 ;
  wire \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0 ;
  wire [2:0]\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg ;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1_n_0 ;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[4]_0 ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[4]_1 ;
  wire \RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ;
  wire \RATIO_OF_2_GENERATE.Count_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_4_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[7]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0 ;
  wire [1:0]\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1] ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2] ;
  wire \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ;
  wire \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0 ;
  wire \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0 ;
  wire [7:0]\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 ;
  wire Rst_to_spi;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPISEL_sync;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int1;
  wire SPIXfer_done_int130_out__0;
  wire SPIXfer_done_int132_out__0;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_pulse;
  wire SPIXfer_done_int_pulse_d1;
  wire SPIXfer_done_int_pulse_d2;
  wire SPIXfer_done_int_pulse_d3_reg_0;
  wire [0:0]SS_O_int;
  wire SS_T_int;
  wire Serial_Dout_018_in;
  wire [4:5]Shift_Reg;
  wire Shift_Reg1__0;
  wire almost_full;
  wire dest_out;
  wire di_int_sync_0;
  wire di_int_sync_1;
  wire [7:0]dout;
  wire drr_Overrun_int;
  wire empty;
  wire ext_spi_clk;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  wire master_tri_state_en_control1__1;
  wire mode_0__0;
  wire mode_1__3;
  wire modf_strobe_int;
  wire p_0_in38_in;
  wire p_1_in;
  wire p_37_in;
  wire [4:1]plusOp__0;
  wire [2:0]plusOp__1;
  wire [4:0]qspo;
  wire \qspo_int_reg[4] ;
  wire rd_en;
  wire [0:0]receive_Data_int;
  wire receive_Data_int1__0;
  wire [0:0]register_Data_slvsel_int;
  wire [0:6]rx_shft_reg_mode_0011;
  wire sck_d1;
  wire sck_d2;
  wire sck_d3;
  wire sck_o_int;
  wire sck_t;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_8_tr_inhibit_to_spi_clk;
  wire spisel;
  wire spisel_d1_reg;
  wire stop_clock;
  wire stop_clock134_out__3;
  wire stop_clock1__3;
  wire stop_clock28_out__0;
  wire stop_clock_reg;
  wire stop_clock_reg_i_2_n_0;
  wire stop_clock_reg_i_3_n_0;
  wire transfer_start;
  wire transfer_start_d1;
  wire transfer_start_d2;
  wire transfer_start_pulse__0;
  wire transfer_start_reg_0;

  FDSE Allow_MODF_Strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Allow_MODF_Strobe_reg_1),
        .Q(Allow_MODF_Strobe),
        .S(Allow_MODF_Strobe_reg_0));
  LUT4 #(
    .INIT(16'h0400)) 
    DRR_Overrun_reg_int0
       (.I0(dest_out),
        .I1(almost_full),
        .I2(drr_Overrun_int),
        .I3(SPIXfer_done_int_pulse_d3_reg_0),
        .O(DRR_Overrun_reg_int0__0));
  FDRE DRR_Overrun_reg_int_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(DRR_Overrun_reg_int0__0),
        .Q(drr_Overrun_int),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FIFO_EXISTS.TX_FIFO_II_i_3 
       (.I0(transfer_start_d1),
        .I1(transfer_start),
        .I2(SPIXfer_done_int_pulse_d2),
        .O(rd_en));
  LUT5 #(
    .INIT(32'hAAAEAAFE)) 
    \FSM_sequential_qspi_cntrl_ps[0]_i_1 
       (.I0(\FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0 ),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[0]_0 ),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I4(empty),
        .O(\FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEAAAAAAAA)) 
    \FSM_sequential_qspi_cntrl_ps[0]_i_2 
       (.I0(\FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0 ),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I2(empty),
        .I3(qspo[3]),
        .I4(\qspo_int_reg[4] ),
        .I5(\FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0 ),
        .O(\FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044000400)) 
    \FSM_sequential_qspi_cntrl_ps[0]_i_4 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I2(qspo[3]),
        .I3(empty),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I5(register_Data_slvsel_int),
        .O(\FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C04040C0C0404)) 
    \FSM_sequential_qspi_cntrl_ps[0]_i_5 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I2(empty),
        .I3(qspo[3]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I5(register_Data_slvsel_int),
        .O(\FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFFF000000000000)) 
    \FSM_sequential_qspi_cntrl_ps[1]_i_1 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[1]_0 ),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I2(qspo[4]),
        .I3(\qspo_int_reg[4] ),
        .I4(\FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0 ),
        .I5(\FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0 ),
        .O(\FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5754FFFFFFFFFFFF)) 
    \FSM_sequential_qspi_cntrl_ps[1]_i_2 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I3(qspo[3]),
        .I4(empty),
        .I5(register_Data_slvsel_int),
        .O(\FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \FSM_sequential_qspi_cntrl_ps[1]_i_3 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I2(SPIXfer_done_int_d1),
        .I3(SPIXfer_done_int),
        .I4(qspo[0]),
        .I5(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .O(\FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7700770077F07700)) 
    \FSM_sequential_qspi_cntrl_ps[2]_i_1 
       (.I0(empty),
        .I1(register_Data_slvsel_int),
        .I2(\qspo_int_reg[4] ),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I5(\FSM_sequential_qspi_cntrl_ps_reg[1]_0 ),
        .O(\FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400800)) 
    \FSM_sequential_qspi_cntrl_ps[2]_i_2 
       (.I0(qspo[1]),
        .I1(qspo[3]),
        .I2(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .I3(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .I4(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .O(\qspo_int_reg[4] ));
  (* FSM_ENCODED_STATES = "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_qspi_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0 ),
        .Q(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_qspi_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0 ),
        .Q(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_qspi_cntrl_ps_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0 ),
        .Q(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h8)) 
    MODF_strobe_i_2
       (.I0(Allow_MODF_Strobe),
        .I1(SPICR_2_MST_N_SLV_to_spi_clk),
        .O(MODF_strobe0));
  FDRE MODF_strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(MODF_strobe0),
        .Q(modf_strobe_int),
        .R(Allow_MODF_Strobe_reg_0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    MST_TRANS_INHIBIT_D1_I
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_8_tr_inhibit_to_spi_clk),
        .Q(Mst_Trans_inhibit_d1),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    QSPI_IO0_T
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(QSPI_IO0_T_i_1_n_0),
        .Q(DTS[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBBBFBBF)) 
    QSPI_IO0_T_i_1
       (.I0(QSPI_IO0_T_0),
        .I1(master_tri_state_en_control1__1),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .O(QSPI_IO0_T_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    QSPI_IO1_T
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(QSPI_IO1_T_0),
        .Q(DTS[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d1_i_1 
       (.I0(\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .O(\QSPI_LOOK_UP_MODE_2_MEMORY_2.CMD_decoded_int_d10 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1_i_1 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I3(empty),
        .O(\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d10 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_2 
       (.I0(\QSPI_LOOK_UP_MODE_2_MEMORY_2.DTR_FIFO_Data_Exists_d1 ),
        .I1(empty),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .O(CE));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0 ),
        .Q(DTS[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0 ),
        .Q(DTS[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777777777775777)) 
    \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1 
       (.I0(master_tri_state_en_control1__1),
        .I1(IO2_T_control__3),
        .I2(qspo[2]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I5(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .O(\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[0]_i_1 
       (.I0(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I1(SPIXfer_done_int_d1),
        .I2(SPIXfer_done_int),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[1]_i_1 
       (.I0(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .O(plusOp__1[1]));
  LUT3 #(
    .INIT(8'hFD)) 
    \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1 
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .O(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(SPIXfer_done_int),
        .I2(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I3(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .I4(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .O(plusOp__1[2]));
  FDRE \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(plusOp__1[0]),
        .Q(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .R(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0 ));
  FDRE \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(plusOp__1[1]),
        .Q(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .R(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0 ));
  FDRE \QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(plusOp__1[2]),
        .Q(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .R(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    QSPI_SCK_T
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(sck_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    QSPI_SPISEL
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel),
        .Q(SPISEL_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    QSPI_SS_T
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(SS_T_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h22303030)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1 
       (.I0(sck_o_int),
        .I1(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_2_n_0 ),
        .I2(spicr_3_cpol_to_spi_clk),
        .I3(transfer_start),
        .I4(transfer_start_d1),
        .O(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDDF)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_2 
       (.I0(SPICR_2_MST_N_SLV_to_spi_clk),
        .I1(Rst_to_spi),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .O(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_2_n_0 ));
  FDRE \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1_n_0 ),
        .Q(\LOGIC_FOR_MD_12_GEN.SCK_O_int ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_OF_2_GENERATE.Count[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .O(SPIXfer_done_int1));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RATIO_OF_2_GENERATE.Count[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I1(p_37_in),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \RATIO_OF_2_GENERATE.Count[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I1(p_37_in),
        .I2(p_0_in38_in),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \RATIO_OF_2_GENERATE.Count[3]_i_1 
       (.I0(p_37_in),
        .I1(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I2(p_0_in38_in),
        .I3(\RATIO_OF_2_GENERATE.Count_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  LUT3 #(
    .INIT(8'hFD)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_1 
       (.I0(transfer_start),
        .I1(SPIXfer_done_int),
        .I2(Rst_to_spi),
        .O(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_3 
       (.I0(p_0_in38_in),
        .I1(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I2(p_37_in),
        .I3(\RATIO_OF_2_GENERATE.Count_reg_n_0_[3] ),
        .O(plusOp__0[4]));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.Count_reg[4]_1 ),
        .D(SPIXfer_done_int1),
        .Q(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.Count_reg[4]_1 ),
        .D(plusOp__0[1]),
        .Q(p_37_in),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.Count_reg[4]_1 ),
        .D(plusOp__0[2]),
        .Q(p_0_in38_in),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[3] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.Count_reg[4]_1 ),
        .D(plusOp__0[3]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg_n_0_[3] ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[4] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.Count_reg[4]_1 ),
        .D(plusOp__0[4]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg[4]_0 ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg_0 ),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3_n_0 ),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I4(Serial_Dout_018_in),
        .I5(DO[0]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3 
       (.I0(SPIXfer_done_int130_out__0),
        .I1(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3] ),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1] ),
        .I3(receive_Data_int1__0),
        .I4(p_1_in),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF700)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_4 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(transfer_start),
        .O(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_0_i_1_n_0 ),
        .Q(DO[0]),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'hEFEFEFFF20202000)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0 ),
        .I1(receive_Data_int1__0),
        .I2(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I3(SPIXfer_done_int132_out__0),
        .I4(SPIXfer_done_int130_out__0),
        .I5(DO[1]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2] ),
        .I1(dout[5]),
        .I2(SPIXfer_done_int130_out__0),
        .I3(dout[7]),
        .I4(Shift_Reg1__0),
        .I5(p_1_in),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_2_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_1_i_1_n_0 ),
        .Q(DO[1]),
        .R(Rst_to_spi));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_i_2 
       (.I0(dout[6]),
        .I1(transfer_start_d1),
        .I2(transfer_start),
        .I3(SPIXfer_done_int_d1),
        .I4(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1] ),
        .O(\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_2_reg_0 ),
        .Q(DO[2]),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'hFFCFFFAF00C000A0)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0 ),
        .I1(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0 ),
        .I2(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I3(mode_0__0),
        .I4(mode_1__3),
        .I5(DO[3]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2 
       (.I0(qspo[2]),
        .I1(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I2(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I3(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3 
       (.I0(dout[7]),
        .I1(transfer_start_d1),
        .I2(transfer_start),
        .I3(SPIXfer_done_int_d1),
        .I4(p_1_in),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_3_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Serial_Dout_3_i_1_n_0 ),
        .Q(DO[3]),
        .R(Rst_to_spi));
  LUT5 #(
    .INIT(32'hFF008F00)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1 
       (.I0(Serial_Dout_018_in),
        .I1(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I2(transfer_start_d1),
        .I3(transfer_start),
        .I4(SPIXfer_done_int_d1),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2 
       (.I0(dout[7]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_4_n_0 ),
        .I3(receive_Data_int1__0),
        .I4(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1] ),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_3 
       (.I0(transfer_start_d1),
        .I1(transfer_start),
        .I2(SPIXfer_done_int_d1),
        .O(Shift_Reg1__0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_4 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2] ),
        .I1(Shift_Reg[4]),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1 
       (.I0(dout[6]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0 ),
        .I3(receive_Data_int1__0),
        .I4(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2] ),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3] ),
        .I1(Shift_Reg[5]),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1 
       (.I0(dout[5]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0 ),
        .I3(receive_Data_int1__0),
        .I4(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3] ),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2 
       (.I0(Shift_Reg[4]),
        .I1(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [1]),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1 
       (.I0(dout[4]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0 ),
        .I3(receive_Data_int1__0),
        .I4(Shift_Reg[4]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2 
       (.I0(Shift_Reg[5]),
        .I1(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [0]),
        .I2(receive_Data_int1__0),
        .I3(SPIXfer_done_int130_out__0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1 
       (.I0(dout[3]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4]_0 ),
        .I3(receive_Data_int1__0),
        .I4(Shift_Reg[5]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1 
       (.I0(dout[2]),
        .I1(Shift_Reg1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5]_0 ),
        .I3(receive_Data_int1__0),
        .I4(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [1]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1 
       (.I0(di_int_sync_1),
        .I1(receive_Data_int1__0),
        .I2(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [0]),
        .I3(Shift_Reg1__0),
        .I4(dout[1]),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[7]_i_1 
       (.I0(dout[0]),
        .I1(Shift_Reg1__0),
        .I2(di_int_sync_1),
        .I3(receive_Data_int1__0),
        .I4(di_int_sync_0),
        .O(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[7]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[0] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_2_n_0 ),
        .Q(p_1_in),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[1] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[1]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[1] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[2] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[2]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[3] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[3]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[4] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[4]_i_1_n_0 ),
        .Q(Shift_Reg[4]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[5] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[5]_i_1_n_0 ),
        .Q(Shift_Reg[5]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[6]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [1]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[7] 
       (.C(ext_spi_clk),
        .CE(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[0]_i_1_n_0 ),
        .D(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg[7]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_NM_MEM_GEN.Shift_Reg_reg[6]_0 [0]),
        .R(Rst_to_spi));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_2 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(Q[2]),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .O(rx_shft_reg_mode_0011[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_8 
       (.I0(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I1(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .I2(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .I3(qspo[1]),
        .I4(qspo[3]),
        .O(stop_clock134_out__3));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_9 
       (.I0(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I1(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .I2(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .I3(qspo[3]),
        .I4(qspo[1]),
        .O(stop_clock1__3));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(Q[1]),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .O(rx_shft_reg_mode_0011[2]));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .O(rx_shft_reg_mode_0011[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1 
       (.I0(Q[0]),
        .I1(receive_Data_int1__0),
        .I2(di_int_sync_1),
        .O(rx_shft_reg_mode_0011[6]));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(rx_shft_reg_mode_0011[1]),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(rx_shft_reg_mode_0011[2]),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(rx_shft_reg_mode_0011[3]),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(D[2]),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[2]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(rx_shft_reg_mode_0011[6]),
        .Q(Q[1]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_o_int),
        .Q(sck_d1),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d1),
        .Q(sck_d2),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d3_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d2),
        .Q(sck_d3),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h00060F060F060006)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_1 
       (.I0(sck_o_int),
        .I1(transfer_start),
        .I2(Rst_to_spi),
        .I3(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ),
        .I4(spicr_3_cpol_to_spi_clk),
        .I5(spicr_4_cpha_to_spi_clk),
        .O(\RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_2 
       (.I0(Mst_Trans_inhibit_d1),
        .I1(spicr_8_tr_inhibit_to_spi_clk),
        .I2(SPIXfer_done_int),
        .O(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.sck_o_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0 ),
        .Q(sck_o_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1011101010101010)) 
    \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1 
       (.I0(Rst_to_spi),
        .I1(transfer_start_pulse__0),
        .I2(\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0 ),
        .I3(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I4(p_37_in),
        .I5(SPIXfer_done_int132_out__0),
        .O(\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_2 
       (.I0(transfer_start),
        .I1(transfer_start_d1),
        .O(transfer_start_pulse__0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h08080800)) 
    \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3 
       (.I0(p_0_in38_in),
        .I1(p_37_in),
        .I2(\RATIO_OF_2_GENERATE.Count_reg_n_0_[0] ),
        .I3(SPIXfer_done_int130_out__0),
        .I4(\RATIO_OF_2_GENERATE.Count_reg_n_0_[3] ),
        .O(\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0 ));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0 ),
        .Q(SPIXfer_done_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_1 
       (.I0(SPIXfer_done_int_pulse_d2),
        .I1(Serial_Dout_018_in),
        .O(receive_Data_int));
  LUT5 #(
    .INIT(32'hFEBA5410)) 
    \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_2 
       (.I0(receive_Data_int1__0),
        .I1(SPIXfer_done_int130_out__0),
        .I2(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .I3(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .O(rx_shft_reg_mode_0011[0]));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(rx_shft_reg_mode_0011[0]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [7]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(rx_shft_reg_mode_0011[1]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [6]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(rx_shft_reg_mode_0011[2]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [5]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(rx_shft_reg_mode_0011[3]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [4]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(D[2]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [3]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(D[1]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [2]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(rx_shft_reg_mode_0011[6]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [1]),
        .R(Rst_to_spi));
  FDRE \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(receive_Data_int),
        .D(D[0]),
        .Q(\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0 [0]),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int),
        .Q(SPIXfer_done_int_d1),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    SPIXfer_done_int_pulse_d1_i_1
       (.I0(SPIXfer_done_int),
        .I1(SPIXfer_done_int_d1),
        .O(SPIXfer_done_int_pulse));
  FDRE SPIXfer_done_int_pulse_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse),
        .Q(SPIXfer_done_int_pulse_d1),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_pulse_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d1),
        .Q(SPIXfer_done_int_pulse_d2),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_pulse_d3_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d2),
        .Q(SPIXfer_done_int_pulse_d3_reg_0),
        .R(Rst_to_spi));
  FDSE \SS_O_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(register_Data_slvsel_int),
        .Q(SS_O_int),
        .S(Rst_to_spi));
  FDSE spisel_d1_reg__0
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISEL_sync),
        .Q(spisel_d1_reg),
        .S(Rst_to_spi));
  LUT6 #(
    .INIT(64'h5550FE545050FF55)) 
    stop_clock_reg_i_1
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [2]),
        .I1(stop_clock_reg_i_2_n_0),
        .I2(stop_clock_reg_i_3_n_0),
        .I3(stop_clock28_out__0),
        .I4(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [0]),
        .I5(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .O(stop_clock));
  LUT6 #(
    .INIT(64'h0020000008000000)) 
    stop_clock_reg_i_2
       (.I0(empty),
        .I1(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [0]),
        .I2(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [2]),
        .I3(\QSPI_QUAD_MODE_NM_MEM_GEN.addr_cnt_reg [1]),
        .I4(qspo[3]),
        .I5(qspo[1]),
        .O(stop_clock_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    stop_clock_reg_i_3
       (.I0(\FSM_sequential_qspi_cntrl_ps_reg[2]_0 [1]),
        .I1(empty),
        .I2(qspo[0]),
        .I3(SPIXfer_done_int_d1),
        .I4(SPIXfer_done_int),
        .O(stop_clock_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF020000)) 
    stop_clock_reg_i_4
       (.I0(SPIXfer_done_int),
        .I1(SPIXfer_done_int_d1),
        .I2(register_Data_slvsel_int),
        .I3(stop_clock_reg),
        .I4(empty),
        .O(stop_clock28_out__0));
  FDRE stop_clock_reg_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(stop_clock),
        .Q(stop_clock_reg),
        .R(Rst_to_spi));
  FDRE transfer_start_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start),
        .Q(transfer_start_d1),
        .R(Rst_to_spi));
  FDRE transfer_start_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_d1),
        .Q(transfer_start_d2),
        .R(Rst_to_spi));
  FDRE transfer_start_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_reg_0),
        .Q(transfer_start),
        .R(1'b0));
endmodule

module design_1_axi_quad_spi_0_0_qspi_startup_block
   (pipe_signal_reg_r_3_0,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    DI,
    reset2ip_reset_int,
    s_axi_aclk,
    SS_O_int,
    SS_T_int,
    gsr,
    gts,
    keyclearb,
    \LOGIC_FOR_MD_12_GEN.SCK_O_int ,
    usrcclkts,
    usrdoneo,
    usrdonets,
    DO,
    DTS);
  output pipe_signal_reg_r_3_0;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  output [3:0]DI;
  input reset2ip_reset_int;
  input s_axi_aclk;
  input [0:0]SS_O_int;
  input SS_T_int;
  input gsr;
  input gts;
  input keyclearb;
  input \LOGIC_FOR_MD_12_GEN.SCK_O_int ;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input [3:0]DO;
  input [3:0]DTS;

  wire [3:0]DI;
  wire [3:0]DO;
  wire [3:0]DTS;
  wire \LOGIC_FOR_MD_12_GEN.SCK_O_int ;
  wire [0:0]SS_O_int;
  wire SS_T_int;
  wire cfgclk;
  wire cfgmclk;
  wire eos;
  wire gsr;
  wire gts;
  wire keyclearb;
  wire [7:7]pipe_signal;
  wire \pipe_signal[0]_i_1_n_0 ;
  wire \pipe_signal_reg[5]_srl5___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ;
  wire \pipe_signal_reg[6]_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_4_n_0 ;
  wire pipe_signal_reg_gate_n_0;
  wire \pipe_signal_reg_n_0_[0] ;
  wire pipe_signal_reg_r_0_n_0;
  wire pipe_signal_reg_r_1_n_0;
  wire pipe_signal_reg_r_2_n_0;
  wire pipe_signal_reg_r_3_0;
  wire pipe_signal_reg_r_4_n_0;
  wire pipe_signal_reg_r_n_0;
  wire preq;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;
  wire [3:0]\NLW_STARTUP_8SERIES_GEN.STARTUP3_8SERIES_inst_DATA_IN_UNCONNECTED ;
  wire [3:0]\NLW_STARTUP_8SERIES_GEN.STARTUP3_8SERIES_inst_DATA_OUT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  STARTUPE3 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    \STARTUP_8SERIES_GEN.STARTUP3_8SERIES_inst 
       (.CFGCLK(cfgclk),
        .CFGMCLK(cfgmclk),
        .DI(DI),
        .DO(DO),
        .DTS(DTS),
        .EOS(eos),
        .FCSBO(SS_O_int),
        .FCSBTS(SS_T_int),
        .GSR(gsr),
        .GTS(gts),
        .KEYCLEARB(keyclearb),
        .PACK(pipe_signal),
        .PREQ(preq),
        .USRCCLKO(\LOGIC_FOR_MD_12_GEN.SCK_O_int ),
        .USRCCLKTS(usrcclkts),
        .USRDONEO(usrdoneo),
        .USRDONETS(usrdonets));
  LUT2 #(
    .INIT(4'hE)) 
    \pipe_signal[0]_i_1 
       (.I0(preq),
        .I1(\pipe_signal_reg_n_0_[0] ),
        .O(\pipe_signal[0]_i_1_n_0 ));
  FDRE \pipe_signal_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\pipe_signal[0]_i_1_n_0 ),
        .Q(\pipe_signal_reg_n_0_[0] ),
        .R(reset2ip_reset_int));
  (* srl_bus_name = "U0/\\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I/pipe_signal_reg " *) 
  (* srl_name = "U0/\\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I/pipe_signal_reg[5]_srl5___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3 " *) 
  SRL16E \pipe_signal_reg[5]_srl5___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(\pipe_signal_reg_n_0_[0] ),
        .Q(\pipe_signal_reg[5]_srl5___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ));
  FDRE \pipe_signal_reg[6]_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\pipe_signal_reg[5]_srl5___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_3_n_0 ),
        .Q(\pipe_signal_reg[6]_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \pipe_signal_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_gate_n_0),
        .Q(pipe_signal),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h8)) 
    pipe_signal_reg_gate
       (.I0(\pipe_signal_reg[6]_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I_pipe_signal_reg_r_4_n_0 ),
        .I1(pipe_signal_reg_r_4_n_0),
        .O(pipe_signal_reg_gate_n_0));
  FDRE pipe_signal_reg_r
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(pipe_signal_reg_r_n_0),
        .R(reset2ip_reset_int));
  FDRE pipe_signal_reg_r_0
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_r_n_0),
        .Q(pipe_signal_reg_r_0_n_0),
        .R(reset2ip_reset_int));
  FDRE pipe_signal_reg_r_1
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_r_0_n_0),
        .Q(pipe_signal_reg_r_1_n_0),
        .R(reset2ip_reset_int));
  FDRE pipe_signal_reg_r_2
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_r_1_n_0),
        .Q(pipe_signal_reg_r_2_n_0),
        .R(reset2ip_reset_int));
  FDRE pipe_signal_reg_r_3
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_r_2_n_0),
        .Q(pipe_signal_reg_r_3_0),
        .R(reset2ip_reset_int));
  FDRE pipe_signal_reg_r_4
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pipe_signal_reg_r_3_0),
        .Q(pipe_signal_reg_r_4_n_0),
        .R(reset2ip_reset_int));
endmodule

module design_1_axi_quad_spi_0_0_qspi_status_slave_sel_reg
   (sr_3_MODF_int,
    SPISSR_frm_axi_clk,
    modf_reg_0,
    s_axi_aclk,
    reset2ip_reset_int,
    s_axi_wdata,
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0 ,
    p_3_in,
    Bus_RNW_reg);
  output sr_3_MODF_int;
  output [0:0]SPISSR_frm_axi_clk;
  input modf_reg_0;
  input s_axi_aclk;
  input reset2ip_reset_int;
  input [0:0]s_axi_wdata;
  input \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0 ;
  input p_3_in;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ;
  wire \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0 ;
  wire [0:0]SPISSR_frm_axi_clk;
  wire modf_reg_0;
  wire p_3_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire sr_3_MODF_int;

  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1 
       (.I0(s_axi_wdata),
        .I1(\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0 ),
        .I2(p_3_in),
        .I3(Bus_RNW_reg),
        .I4(SPISSR_frm_axi_clk),
        .O(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ),
        .Q(SPISSR_frm_axi_clk),
        .S(reset2ip_reset_int));
  FDRE modf_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_reg_0),
        .Q(sr_3_MODF_int),
        .R(1'b0));
endmodule

module design_1_axi_quad_spi_0_0_reset_sync_module
   (R,
    Rst_to_spi,
    RESET_SYNC_AX2S_2_0,
    spicr_5_txfifo_to_spi_clk,
    SPISEL_sync,
    reset2ip_reset_int,
    ext_spi_clk);
  output R;
  output Rst_to_spi;
  output RESET_SYNC_AX2S_2_0;
  input spicr_5_txfifo_to_spi_clk;
  input SPISEL_sync;
  input reset2ip_reset_int;
  input ext_spi_clk;

  wire Q;
  wire R;
  wire RESET_SYNC_AX2S_2_0;
  wire Rst_to_spi;
  wire SPISEL_sync;
  wire ext_spi_clk;
  wire reset2ip_reset_int;
  wire spicr_5_txfifo_to_spi_clk;

  LUT2 #(
    .INIT(4'hE)) 
    MODF_strobe_i_1
       (.I0(Rst_to_spi),
        .I1(SPISEL_sync),
        .O(RESET_SYNC_AX2S_2_0));
  LUT2 #(
    .INIT(4'hE)) 
    \QSPI_LOOK_UP_MODE_2_MEMORY_2.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_1 
       (.I0(Rst_to_spi),
        .I1(spicr_5_txfifo_to_spi_clk),
        .O(R));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_1
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(reset2ip_reset_int),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_2
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q),
        .Q(Rst_to_spi),
        .R(1'b0));
endmodule

module design_1_axi_quad_spi_0_0_slave_attachment
   (SR,
    p_1_in_0,
    p_2_in,
    p_3_in,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ,
    s_axi_rresp,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    s_axi_bresp,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    ip2Bus_RdAck_intr_reg_hole0,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_WrAck_core_reg0,
    SPICR_3_4_Reset,
    reset2ip_reset_int,
    Bus_RNW_reg_reg_2,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ,
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ,
    \ip_irpt_enable_reg_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ,
    Bus_RNW_reg_reg_3,
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ,
    SPICR_data_int_reg0,
    bus2ip_wrce_int,
    irpt_wrack,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    interrupt_wrce_strb,
    \ip_irpt_enable_reg_reg[6] ,
    Bus_RNW_reg_reg_4,
    reset_trig0,
    sw_rst_cond,
    D,
    irpt_rdack,
    intr2bus_rdack0,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    Bus_RNW_reg_reg_5,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    modf_reg,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    intr_controller_rd_ce_or_reduce,
    rd_ce_or_reduce_core_cmb,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    \s_axi_wdata[31] ,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    ip2Bus_RdAck_core_reg,
    almost_full,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ,
    dout,
    Q,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_1_in19_in,
    SPISR_1_LOOP_Back_Error_int,
    SPISSR_frm_axi_clk,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ,
    empty,
    rx_fifo_empty_i,
    ip2Bus_WrAck_core_reg_1,
    irpt_wrack_d1,
    spicr_3_cpol_frm_axi_clk,
    spicr_4_cpha_frm_axi_clk,
    s_axi_wdata,
    sw_rst_cond_d1,
    p_0_in,
    irpt_rdack_d1,
    spicr_1_spe_frm_axi_clk,
    p_1_in34_in,
    dest_out,
    p_1_in31_in,
    spicr_2_mst_n_slv_frm_axi_clk,
    Tx_FIFO_Empty_SPISR_to_axi_clk,
    p_1_in28_in,
    sr_3_MODF_int,
    p_1_in25_in,
    spicr_5_txfifo_rst_frm_axi_clk,
    p_1_in22_in,
    spisel_d1_reg_to_axi_clk,
    p_1_in16_in,
    spicr_7_ss_frm_axi_clk,
    spicr_8_tr_inhibit_frm_axi_clk,
    SPISR_2_MSB_Error_int,
    p_1_in13_in,
    p_1_in10_in,
    SPISR_0_CMD_Error_to_axi_clk,
    p_1_in7_in,
    p_1_in4_in,
    p_1_in1_in,
    p_1_in_1,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_aresetn,
    ip2bus_rdack_int,
    ip2bus_wrack_int,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output p_1_in_0;
  output p_2_in;
  output p_3_in;
  output \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ;
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output [0:0]s_axi_bresp;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output ip2Bus_RdAck_intr_reg_hole0;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_WrAck_core_reg0;
  output SPICR_3_4_Reset;
  output reset2ip_reset_int;
  output Bus_RNW_reg_reg_2;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  output \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  output \ip_irpt_enable_reg_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  output Bus_RNW_reg_reg_3;
  output \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  output SPICR_data_int_reg0;
  output [1:0]bus2ip_wrce_int;
  output irpt_wrack;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output interrupt_wrce_strb;
  output \ip_irpt_enable_reg_reg[6] ;
  output Bus_RNW_reg_reg_4;
  output reset_trig0;
  output sw_rst_cond;
  output [6:0]D;
  output irpt_rdack;
  output intr2bus_rdack0;
  output \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  output Bus_RNW_reg_reg_5;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output modf_reg;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output intr_controller_rd_ce_or_reduce;
  output rd_ce_or_reduce_core_cmb;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output \s_axi_wdata[31] ;
  output [14:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input ip2Bus_RdAck_core_reg;
  input almost_full;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  input [7:0]dout;
  input [13:0]Q;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_1_in19_in;
  input SPISR_1_LOOP_Back_Error_int;
  input [0:0]SPISSR_frm_axi_clk;
  input \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ;
  input empty;
  input rx_fifo_empty_i;
  input ip2Bus_WrAck_core_reg_1;
  input irpt_wrack_d1;
  input spicr_3_cpol_frm_axi_clk;
  input spicr_4_cpha_frm_axi_clk;
  input [4:0]s_axi_wdata;
  input sw_rst_cond_d1;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input spicr_1_spe_frm_axi_clk;
  input p_1_in34_in;
  input dest_out;
  input p_1_in31_in;
  input spicr_2_mst_n_slv_frm_axi_clk;
  input Tx_FIFO_Empty_SPISR_to_axi_clk;
  input p_1_in28_in;
  input sr_3_MODF_int;
  input p_1_in25_in;
  input spicr_5_txfifo_rst_frm_axi_clk;
  input p_1_in22_in;
  input spisel_d1_reg_to_axi_clk;
  input p_1_in16_in;
  input spicr_7_ss_frm_axi_clk;
  input spicr_8_tr_inhibit_frm_axi_clk;
  input SPISR_2_MSB_Error_int;
  input p_1_in13_in;
  input p_1_in10_in;
  input SPISR_0_CMD_Error_to_axi_clk;
  input p_1_in7_in;
  input p_1_in4_in;
  input p_1_in1_in;
  input p_1_in_1;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [14:0]\s_axi_rdata_i_reg[31]_0 ;
  input s_axi_aresetn;
  input ip2bus_rdack_int;
  input ip2bus_wrack_int;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  wire [6:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire [13:0]Q;
  wire SPICR_3_4_Reset;
  wire SPICR_data_int_reg0;
  wire SPISR_0_CMD_Error_to_axi_clk;
  wire SPISR_1_LOOP_Back_Error_int;
  wire SPISR_2_MSB_Error_int;
  wire [0:0]SPISSR_frm_axi_clk;
  wire [0:0]SR;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire almost_full;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire \bus2ip_addr_i_reg_n_0_[6] ;
  wire bus2ip_rnw_i;
  wire [1:0]bus2ip_wrce_int;
  wire clear;
  wire dest_out;
  wire [7:0]dout;
  wire empty;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ;
  wire \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg0;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_int;
  wire ip2bus_wrack_int;
  wire \ip_irpt_enable_reg_reg[3] ;
  wire \ip_irpt_enable_reg_reg[6] ;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire modf_reg;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in16_in;
  wire p_1_in19_in;
  wire p_1_in1_in;
  wire p_1_in22_in;
  wire p_1_in25_in;
  wire p_1_in28_in;
  wire p_1_in31_in;
  wire p_1_in34_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_1_in_0;
  wire p_1_in_1;
  wire p_2_in;
  wire p_3_in;
  wire p_5_in;
  wire [5:0]plusOp;
  wire rd_ce_or_reduce_core_cmb;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire rst_i_1_n_0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [0:0]s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [14:0]s_axi_rdata;
  wire [14:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [0:0]s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wvalid;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_5_txfifo_rst_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .R(clear));
  design_1_axi_quad_spi_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_4),
        .Bus_RNW_reg_reg_6(Bus_RNW_reg_reg_5),
        .\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] (\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ),
        .\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0 (SR),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] (\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]_0 (\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0 (\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] ),
        .\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0 ({\bus2ip_addr_i_reg_n_0_[6] ,\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_2 (\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_0 (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[18] (Q),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .Q(start2),
        .SPICR_3_4_Reset(SPICR_3_4_Reset),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .SPISR_0_CMD_Error_to_axi_clk(SPISR_0_CMD_Error_to_axi_clk),
        .SPISR_1_LOOP_Back_Error_int(SPISR_1_LOOP_Back_Error_int),
        .SPISR_2_MSB_Error_int(SPISR_2_MSB_Error_int),
        .SPISSR_frm_axi_clk(SPISSR_frm_axi_clk),
        .Tx_FIFO_Empty_SPISR_to_axi_clk(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .almost_full(almost_full),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .dest_out(dest_out),
        .dout(dout),
        .empty(empty),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] (\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] ),
        .\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] (\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg0(ip2Bus_WrAck_core_reg0),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_int(ip2bus_rdack_int),
        .ip2bus_wrack_int(ip2bus_wrack_int),
        .\ip_irpt_enable_reg_reg[3] (\ip_irpt_enable_reg_reg[3] ),
        .\ip_irpt_enable_reg_reg[6] (\ip_irpt_enable_reg_reg[6] ),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .modf_reg(modf_reg),
        .p_0_in(p_0_in),
        .p_1_in10_in(p_1_in10_in),
        .p_1_in13_in(p_1_in13_in),
        .p_1_in16_in(p_1_in16_in),
        .p_1_in19_in(p_1_in19_in),
        .p_1_in1_in(p_1_in1_in),
        .p_1_in22_in(p_1_in22_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in28_in(p_1_in28_in),
        .p_1_in31_in(p_1_in31_in),
        .p_1_in34_in(p_1_in34_in),
        .p_1_in4_in(p_1_in4_in),
        .p_1_in7_in(p_1_in7_in),
        .p_1_in_0(p_1_in_0),
        .p_1_in_1(p_1_in_1),
        .p_2_in(p_2_in),
        .p_3_in(p_3_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_awready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .spicr_1_spe_frm_axi_clk(spicr_1_spe_frm_axi_clk),
        .spicr_2_mst_n_slv_frm_axi_clk(spicr_2_mst_n_slv_frm_axi_clk),
        .spicr_3_cpol_frm_axi_clk(spicr_3_cpol_frm_axi_clk),
        .spicr_4_cpha_frm_axi_clk(spicr_4_cpha_frm_axi_clk),
        .spicr_5_txfifo_rst_frm_axi_clk(spicr_5_txfifo_rst_frm_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_7_ss_frm_axi_clk(spicr_7_ss_frm_axi_clk),
        .spicr_8_tr_inhibit_frm_axi_clk(spicr_8_tr_inhibit_frm_axi_clk),
        .spisel_d1_reg_to_axi_clk(spisel_d1_reg_to_axi_clk),
        .sr_3_MODF_int(sr_3_MODF_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  LUT2 #(
    .INIT(4'hE)) 
    RESET_SYNC_AX2S_1_i_1
       (.I0(SR),
        .I1(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] ),
        .O(reset2ip_reset_int));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[6] ),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .O(is_read));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(is_write));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(p_1_in),
        .Q(s_axi_rresp),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

module design_1_axi_quad_spi_0_0_soft_reset
   (sw_rst_cond_d1,
    wrack,
    \RESET_FLOPS[15].RST_FLOPS_0 ,
    rst_reg,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0,
    \icount_out_reg[0] ,
    \icount_out_reg[0]_0 );
  output sw_rst_cond_d1;
  output wrack;
  output \RESET_FLOPS[15].RST_FLOPS_0 ;
  output rst_reg;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;
  input \icount_out_reg[0] ;
  input \icount_out_reg[0]_0 ;

  wire FF_WRACK_i_1_n_0;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire bus2ip_reset_ipif_inverted;
  wire flop_q_chain_1;
  wire flop_q_chain_10;
  wire flop_q_chain_11;
  wire flop_q_chain_12;
  wire flop_q_chain_13;
  wire flop_q_chain_14;
  wire flop_q_chain_15;
  wire flop_q_chain_2;
  wire flop_q_chain_3;
  wire flop_q_chain_4;
  wire flop_q_chain_5;
  wire flop_q_chain_6;
  wire flop_q_chain_7;
  wire flop_q_chain_8;
  wire flop_q_chain_9;
  wire \icount_out_reg[0] ;
  wire \icount_out_reg[0]_0 ;
  wire reset_trig0;
  wire rst_reg;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .I1(flop_q_chain_1),
        .O(FF_WRACK_i_1_n_0));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain_15),
        .R(bus2ip_reset_ipif_inverted));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_5),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_6),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_4),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_5),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_3),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_4),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_2),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_3),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_1),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_2),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .R(bus2ip_reset_ipif_inverted));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_1),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_14),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_15),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_13),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_14),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_12),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_13),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_11),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_12),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_10),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_11),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_9),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_10),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_8),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_9),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_7),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_8),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain_6),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain_7),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \icount_out[0]_i_1 
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\RESET_FLOPS[15].RST_FLOPS_0 ),
        .I2(\icount_out_reg[0] ),
        .I3(\icount_out_reg[0]_0 ),
        .O(rst_reg));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_ipif_inverted));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_ipif_inverted));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[1] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[1] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[1] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__3
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[1] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[3] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[3] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [5]),
        .I2(\dest_graysync_ff[3] [7]),
        .I3(\dest_graysync_ff[3] [8]),
        .I4(\dest_graysync_ff[3] [6]),
        .I5(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[3] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[3] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [5]),
        .I2(\dest_graysync_ff[3] [7]),
        .I3(\dest_graysync_ff[3] [8]),
        .I4(\dest_graysync_ff[3] [6]),
        .I5(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [8]),
        .I2(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SINGLE" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__3
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module design_1_axi_quad_spi_0_0_xpm_counter_updn
   (Q,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn_4
   (Q,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized0
   (Q,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized0_15
   (Q,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized1
   (Q,
    src_in_bin,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    SR,
    rd_clk);
  output [1:0]Q;
  output [0:0]src_in_bin;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \gen_fwft.count_en ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q[1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 [0]),
        .I5(Q[0]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .O(src_in_bin));
  LUT4 #(
    .INIT(16'h9669)) 
    \grdc.rd_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[7] [1]),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[7]_i_16 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized1_9
   (Q,
    src_in_bin,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    SR,
    rd_clk);
  output [1:0]Q;
  output [0:0]src_in_bin;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \gen_fwft.count_en ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q[1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 [0]),
        .I5(Q[0]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .O(src_in_bin));
  LUT4 #(
    .INIT(16'h9669)) 
    \grdc.rd_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[7] [1]),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[7]_i_16 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2
   (Q,
    enb,
    DI,
    \count_value_i_reg[7]_0 ,
    D,
    S,
    src_in_bin,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[8] ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ,
    \count_value_i_reg[8]_0 ,
    rd_clk);
  output [7:0]Q;
  output enb;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[7]_0 ;
  output [7:0]D;
  output [4:0]S;
  output [7:0]src_in_bin;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [7:0]\grdc.rd_data_count_i_reg[8] ;
  input [7:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ;
  input \count_value_i_reg[8]_0 ;
  input rd_clk;

  wire [7:0]D;
  wire [0:0]DI;
  wire [7:0]Q;
  wire [4:0]S;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \count_value_i_reg[8]_0 ;
  wire \count_value_i_reg_n_0_[8] ;
  wire enb;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ;
  wire [7:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [7:0]\grdc.rd_data_count_i_reg[8] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [7:0]src_in_bin;
  wire [7:7]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[0]_i_1__5 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__5 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__3_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__3_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\count_value_i_reg_n_0_[8] ),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(enb),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[8] ),
        .R(\count_value_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\count_value_i_reg_n_0_[8] ),
        .O(src_in_bin[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBBAFB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .O(src_in_bin[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I2(Q[5]),
        .O(src_in_bin[4]));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(src_in_bin[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hABAA5455)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2 
       (.I0(Q[6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3 
       (.I0(Q[5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4 
       (.I0(Q[4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5 
       (.I0(Q[3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6 
       (.I0(Q[2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7 
       (.I0(Q[1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8 
       (.I0(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [0]),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED [7],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 }),
        .DI({1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 }),
        .O(D),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[8] [4]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[8] [5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[8] [3]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[8] [4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[8] [2]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[8] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[8] [1]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[8] [2]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \grdc.rd_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(\grdc.rd_data_count_i_reg[8] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[8] [5]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[8] [6]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[8]_i_3 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[8] [6]),
        .I2(\count_value_i_reg_n_0_[8] ),
        .I3(\grdc.rd_data_count_i_reg[8] [7]),
        .O(\count_value_i_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_10
   (Q,
    enb,
    DI,
    \count_value_i_reg[7]_0 ,
    D,
    S,
    src_in_bin,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[8] ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ,
    \count_value_i_reg[8]_0 ,
    rd_clk);
  output [7:0]Q;
  output enb;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[7]_0 ;
  output [7:0]D;
  output [4:0]S;
  output [7:0]src_in_bin;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [7:0]\grdc.rd_data_count_i_reg[8] ;
  input [7:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ;
  input \count_value_i_reg[8]_0 ;
  input rd_clk;

  wire [7:0]D;
  wire [0:0]DI;
  wire [7:0]Q;
  wire [4:0]S;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \count_value_i_reg[8]_0 ;
  wire \count_value_i_reg_n_0_[8] ;
  wire enb;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ;
  wire [7:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [7:0]\grdc.rd_data_count_i_reg[8] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [7:0]src_in_bin;
  wire [7:7]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[0]_i_1__5 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__5 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__3_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__3_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\count_value_i_reg_n_0_[8] ),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(enb),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[8] ),
        .R(\count_value_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\count_value_i_reg_n_0_[8] ),
        .O(src_in_bin[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBBAFB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .O(src_in_bin[5]));
  LUT3 #(
    .INIT(8'hE1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0 ),
        .I2(Q[5]),
        .O(src_in_bin[4]));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0 ),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(src_in_bin[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hABAA5455)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2 
       (.I0(Q[6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3 
       (.I0(Q[5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4 
       (.I0(Q[4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5 
       (.I0(Q[3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6 
       (.I0(Q[2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7 
       (.I0(Q[1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8 
       (.I0(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [7]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] [0]),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED [7],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_4 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_5 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_6 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_7 }),
        .DI({1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8_n_0 }),
        .O(D),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_9_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_10_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_11_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_12_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_13_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_14_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_15_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_16_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[8] [4]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[8] [5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[8] [3]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[8] [4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[8] [2]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[8] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[8] [1]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[8] [2]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \grdc.rd_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(\grdc.rd_data_count_i_reg[8] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[8] [5]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[8] [6]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[8]_i_3 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[8] [6]),
        .I2(\count_value_i_reg_n_0_[8] ),
        .I3(\grdc.rd_data_count_i_reg[8] [7]),
        .O(\count_value_i_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_13
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gwdc.wr_data_count_i_reg[8] ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [8:0]\gwdc.wr_data_count_i_reg[8] ;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_7_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_8_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_9_n_0 ;
  wire \gwdc.wr_data_count_i[8]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire [8:0]\gwdc.wr_data_count_i_reg[8] ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:0]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[8] [7]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[8] [6]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[8] [5]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[8] [4]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[8] [3]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[8] [2]),
        .O(\gwdc.wr_data_count_i[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[8] [1]),
        .O(\gwdc.wr_data_count_i[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[8] [0]),
        .O(\gwdc.wr_data_count_i[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[8]_i_2 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[8] [8]),
        .O(\gwdc.wr_data_count_i[8]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,\gwdc.wr_data_count_i[7]_i_7_n_0 ,\gwdc.wr_data_count_i[7]_i_8_n_0 ,\gwdc.wr_data_count_i[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[8]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[8]_i_2_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_2
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gwdc.wr_data_count_i_reg[8] ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [8:0]\gwdc.wr_data_count_i_reg[8] ;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_7_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_8_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_9_n_0 ;
  wire \gwdc.wr_data_count_i[8]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire [8:0]\gwdc.wr_data_count_i_reg[8] ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:0]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[8] [7]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[8] [6]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[8] [5]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[8] [4]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[8] [3]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[8] [2]),
        .O(\gwdc.wr_data_count_i[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[8] [1]),
        .O(\gwdc.wr_data_count_i[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[8] [0]),
        .O(\gwdc.wr_data_count_i[7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[8]_i_2 
       (.I0(Q[8]),
        .I1(\gwdc.wr_data_count_i_reg[8] [8]),
        .O(\gwdc.wr_data_count_i[8]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI(Q[7:0]),
        .O(D[7:0]),
        .S({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,\gwdc.wr_data_count_i[7]_i_7_n_0 ,\gwdc.wr_data_count_i[7]_i_8_n_0 ,\gwdc.wr_data_count_i[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[8]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[8]_i_2_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3
   (Q,
    E,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_clk);
  output [7:0]Q;
  input [0:0]E;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input \count_value_i_reg[0]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_2__4_n_0 ;
  wire \count_value_i[7]_i_1__4_n_0 ;
  wire \count_value_i[7]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__4 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__4_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__4_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__4 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__4 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(E),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__4_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__4_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_11
   (Q,
    E,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    rd_clk);
  output [7:0]Q;
  input [0:0]E;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input \count_value_i_reg[0]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_2__4_n_0 ;
  wire \count_value_i[7]_i_1__4_n_0 ;
  wire \count_value_i[7]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__4 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__4_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__4_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__4 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__4 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(E),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__4_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__4_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_14
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ,
    wr_clk);
  output [7:0]Q;
  output [4:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [7:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ;
  input wr_clk;

  wire [4:0]D;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ;
  wire [7:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:7]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(wr_pntr_plus1_pf_carry),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED [7],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({1'b0,Q[6:0]}),
        .O({D,\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_3
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[6]_0 ,
    wrst_busy,
    rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ,
    wr_clk);
  output [7:0]Q;
  output [4:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[6]_0 ;
  input wrst_busy;
  input rst_d1;
  input [7:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ;
  input wr_clk;

  wire [4:0]D;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ;
  wire [7:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [7:7]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[6]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [7]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(wr_pntr_plus1_pf_carry),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED [7],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({1'b0,Q[6:0]}),
        .O({D,\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_7_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_8_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_9_n_0 }));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "0" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "9" *) 
(* READ_DATA_WIDTH = "8" *) (* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1f1f" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "2048" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1f1f" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_1_axi_quad_spi_0_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "9" *) (* READ_DATA_WIDTH = "8" *) (* READ_MODE = "fwft" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "9" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_async__parameterized1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "2048" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "9" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "8" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "8" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_1_axi_quad_spi_0_0_xpm_fifo_base__parameterized0 \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "256" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "2048" *) 
(* FIFO_WRITE_DEPTH = "256" *) (* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "7" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "9" *) 
(* RD_DC_WIDTH_EXT = "9" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "8" *) (* READ_DATA_WIDTH = "8" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1f1f" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "8" *) 
(* WR_DATA_COUNT_WIDTH = "9" *) (* WR_DC_WIDTH_EXT = "9" *) (* WR_DEPTH_LOG = "8" *) 
(* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire [7:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [7:0]diff_pntr_pe;
  wire [8:4]diff_pntr_pf_q;
  wire [8:4]diff_pntr_pf_q0;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_13 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_14 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_15 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_16 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_17 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire [8:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [8:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire [7:0]rd_pntr_wr;
  wire [7:0]rd_pntr_wr_cdc;
  wire [8:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdp_inst_n_8;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire rst_d1_inst_n_3;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire [8:0]wr_pntr_ext;
  wire [8:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [7:0]wr_pntr_rd_cdc;
  wire [8:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  design_1_axi_quad_spi_0_0_xpm_counter_updn_4 \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .\count_value_i_reg[6]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1__1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,rdp_inst_n_30,src_in_bin00_out,rdp_inst_n_31}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__2 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_5 \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (rst_d1_inst_n_3),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 (count_value_i),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7}),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 (full),
        .ram_full_i0(ram_full_i0),
        .\reg_out_i_reg[7]_0 (rd_pntr_wr),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_6 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_7 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(curr_fwft_state),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_8 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_9,\gen_fwft.rdpp1_inst_n_5 }),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_13 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_14 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_15 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_17 }),
        .S({rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[7]_0 (rd_pntr_ext[6:1]),
        .\grdc.rd_data_count_i_reg[8] (rdp_inst_n_10),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[8]_0 (rd_rst_busy),
        .\reg_out_i_reg[8]_1 (wr_pntr_rd_cdc_dc));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0__1 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__1 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[7:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized1_9 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_5 ),
        .Q({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .S({\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\grdc.rd_data_count_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_17 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  LUT4 #(
    .INIT(16'h88B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "8" *) 
  (* ADDR_WIDTH_B = "8" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "256" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "8" *) 
  (* P_WIDTH_ADDR_READ_B = "8" *) 
  (* P_WIDTH_ADDR_WRITE_A = "8" *) 
  (* P_WIDTH_ADDR_WRITE_B = "8" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  design_1_axi_quad_spi_0_0_xpm_memory_base__1 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[7:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_8),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [0]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [8]),
        .Q(wr_data_count[8]),
        .R(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_10 rdp_inst
       (.D(diff_pntr_pe),
        .DI(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[7]_0 (rdp_inst_n_10),
        .\count_value_i_reg[8]_0 (rd_rst_busy),
        .enb(rdp_inst_n_8),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .\grdc.rd_data_count_i_reg[7] ({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\grdc.rd_data_count_i_reg[8] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_13 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_14 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_15 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_16 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin({rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31}));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_11 rdpp1_inst
       (.E(rdp_inst_n_8),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_bit_12 rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .d_out_int_reg_0(rst_d1_inst_n_3),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (rst_d1_inst_n_1),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_13 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[6]_0 (full),
        .\gwdc.wr_data_count_i_reg[8] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_14 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[6]_0 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized0_15 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7}),
        .\count_value_i_reg[6]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_rst_16 xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\gen_fwft.count_rst ),
        .d_out_int_reg(xpm_fifo_rst_inst_n_2),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_1 (\grdc.rd_data_count_i0 ),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) 
(* FIFO_READ_DEPTH = "256" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "2048" *) 
(* FIFO_WRITE_DEPTH = "256" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "251" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "251" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "9" *) (* RD_DC_WIDTH_EXT = "9" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "8" *) (* READ_DATA_WIDTH = "8" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "8" *) (* WR_DATA_COUNT_WIDTH = "9" *) (* WR_DC_WIDTH_EXT = "9" *) 
(* WR_DEPTH_LOG = "8" *) (* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "3" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_base__parameterized0
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [7:0]din;
  output full;
  output full_n;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [7:0]dout;
  output empty;
  output prog_empty;
  output [8:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [7:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [7:0]diff_pntr_pe;
  wire [8:4]diff_pntr_pf_q;
  wire [8:4]diff_pntr_pf_q0;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_13 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_14 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_15 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_16 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_17 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_fwft.rdpp1_inst_n_5 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire [8:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [8:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire [7:0]rd_pntr_wr;
  wire [7:0]rd_pntr_wr_cdc;
  wire [8:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdp_inst_n_8;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire [8:0]wr_pntr_ext;
  wire [8:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [7:0]wr_pntr_rd_cdc;
  wire [8:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [7:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  design_1_axi_quad_spi_0_0_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .\count_value_i_reg[6]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,rdp_inst_n_30,src_in_bin00_out,rdp_inst_n_31}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .d_out_int_reg(\gen_cdc_pntr.rpw_gray_reg_n_9 ),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7}),
        .\reg_out_i_reg[7]_0 (rd_pntr_wr),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(curr_fwft_state),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_9,\gen_fwft.rdpp1_inst_n_5 }),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_13 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_14 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_15 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_17 }),
        .S({rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[7]_0 (rd_pntr_ext[6:1]),
        .\grdc.rd_data_count_i_reg[8] (rdp_inst_n_10),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[8]_0 (rd_rst_busy),
        .\reg_out_i_reg[8]_1 (wr_pntr_rd_cdc_dc));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_gray__3 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[7:0]));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_5 ),
        .Q({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .S({\gen_fwft.rdpp1_inst_n_3 ,\gen_fwft.rdpp1_inst_n_4 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\grdc.rd_data_count_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_16 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_17 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_9 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  LUT4 #(
    .INIT(16'h88B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "8" *) 
  (* ADDR_WIDTH_B = "8" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "8" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "256" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "8" *) 
  (* P_MIN_WIDTH_DATA_A = "8" *) 
  (* P_MIN_WIDTH_DATA_B = "8" *) 
  (* P_MIN_WIDTH_DATA_ECC = "8" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "8" *) 
  (* P_WIDTH_ADDR_READ_B = "8" *) 
  (* P_WIDTH_ADDR_WRITE_A = "8" *) 
  (* P_WIDTH_ADDR_WRITE_B = "8" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "8" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "8" *) 
  (* READ_DATA_WIDTH_B = "8" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "8" *) 
  (* WRITE_DATA_WIDTH_B = "8" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  design_1_axi_quad_spi_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[7:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [7:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_8),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [0]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [8]),
        .Q(wr_data_count[8]),
        .R(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2 rdp_inst
       (.D(diff_pntr_pe),
        .DI(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[7]_0 (rdp_inst_n_10),
        .\count_value_i_reg[8]_0 (rd_rst_busy),
        .enb(rdp_inst_n_8),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .\grdc.rd_data_count_i_reg[7] ({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\grdc.rd_data_count_i_reg[8] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_13 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_14 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_15 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_16 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin({rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31}));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(rdp_inst_n_8),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_axi_quad_spi_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .d_out_int_reg_0(rst_d1_inst_n_1),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_2 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[6]_0 (full),
        .\gwdc.wr_data_count_i_reg[8] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_3 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[6]_0 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7}),
        .\count_value_i_reg[6]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_axi_quad_spi_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\gen_fwft.count_rst ),
        .d_out_int_reg(xpm_fifo_rst_inst_n_2),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_1 (\grdc.rd_data_count_i0 ),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module design_1_axi_quad_spi_0_0_xpm_fifo_reg_bit
   (rst_d1,
    d_out_int_reg_0,
    overflow_i0,
    clr_full,
    wrst_busy,
    wr_clk,
    Q,
    rst,
    \gof.overflow_i_reg ,
    prog_full,
    wr_en);
  output rst_d1;
  output d_out_int_reg_0;
  output overflow_i0;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input [4:0]Q;
  input rst;
  input \gof.overflow_i_reg ;
  input prog_full;
  input wr_en;

  wire [4:0]Q;
  wire clr_full;
  wire d_out_int_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gof.overflow_i_reg ),
        .I4(prog_full),
        .O(d_out_int_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_bit_12
   (rst_d1,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    overflow_i0,
    d_out_int_reg_0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    rst,
    wr_en);
  output rst_d1;
  output \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  output overflow_i0;
  output d_out_int_reg_0;
  input wrst_busy;
  input wr_clk;
  input [4:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input rst;
  input wr_en;

  wire [4:0]Q;
  wire d_out_int_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire overflow_i0;
  wire p_1_in__0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(d_out_int_reg_0));
  LUT6 #(
    .INIT(64'h00000000E200E2E2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(p_1_in__0),
        .I1(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I2(prog_full),
        .I3(rst),
        .I4(rst_d1),
        .I5(wrst_busy),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(p_1_in__0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \reg_out_i_reg[7]_0 ,
    d_out_int_reg,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    clr_full,
    almost_full,
    wr_pntr_plus1_pf_carry,
    Q,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ,
    rst_d1,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [7:0]\reg_out_i_reg[7]_0 ;
  output d_out_int_reg;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input clr_full;
  input almost_full;
  input wr_pntr_plus1_pf_carry;
  input [7:0]Q;
  input [7:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [7:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ;
  input rst_d1;
  input wrst_busy;
  input [7:0]D;
  input wr_clk;

  wire [7:0]D;
  wire [7:0]Q;
  wire almost_full;
  wire clr_full;
  wire d_out_int_reg;
  wire [7:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire [7:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire going_afull;
  wire leaving_afull;
  wire leaving_full;
  wire [7:0]\reg_out_i_reg[7]_0 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'hFF00FFFE0000000E)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(leaving_afull),
        .I1(going_afull),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I3(rst),
        .I4(clr_full),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ),
        .I3(wr_pntr_plus1_pf_carry),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [6]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [6]),
        .I2(\reg_out_i_reg[7]_0 [7]),
        .I3(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0 [7]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEAEA00EA)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(leaving_full),
        .I1(leaving_afull),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(rst_d1),
        .I4(rst),
        .O(d_out_int_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(Q[6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_full));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(Q[4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[7]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[7]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[7]_0 [2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[7]_0 [3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[7]_0 [4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[7]_0 [5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[7]_0 [6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[7]_0 [7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_0
   (ram_empty_i0,
    \reg_out_i_reg[7]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [7:0]\reg_out_i_reg[7]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [7:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input \reg_out_i_reg[0]_0 ;
  input [7:0]D;
  input rd_clk;

  wire [7:0]D;
  wire [1:0]Q;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [7:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_empty0;
  wire leaving_empty;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [7:0]\reg_out_i_reg[7]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00FD0000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(going_empty0),
        .I5(leaving_empty),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.ram_empty_i_reg_0 [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ),
        .O(going_empty0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .O(leaving_empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[7]_0 [0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[7]_0 [1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[7]_0 [2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[7]_0 [3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[7]_0 [4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[7]_0 [5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[7]_0 [6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[7]_0 [7]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_5
   (\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    \reg_out_i_reg[7]_0 ,
    ram_full_i0,
    almost_full,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    Q,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ,
    wr_en,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ,
    rst_d1,
    rst,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  output [7:0]\reg_out_i_reg[7]_0 ;
  output ram_full_i0;
  input almost_full;
  input wr_pntr_plus1_pf_carry;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input [7:0]Q;
  input [7:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input [7:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  input wr_en;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input rst_d1;
  input rst;
  input wrst_busy;
  input [7:0]D;
  input wr_clk;

  wire [7:0]D;
  wire [7:0]Q;
  wire almost_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [7:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire [7:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire going_afull0;
  wire leaving_afull;
  wire leaving_full;
  wire ram_full_i0;
  wire [7:0]\reg_out_i_reg[7]_0 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'h00000000EEE2E2E2)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(almost_full),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ),
        .I2(leaving_afull),
        .I3(going_afull0),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(rst),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ),
        .I5(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ),
        .O(going_afull0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ),
        .I2(rst_d1),
        .I3(leaving_afull),
        .I4(leaving_full),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(Q[6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I5(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_full));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(Q[4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[7]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[7]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[7]_0 [2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[7]_0 [3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[7]_0 [4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[7]_0 [5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[7]_0 [6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[7]_0 [7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec_7
   (ram_empty_i0,
    \reg_out_i_reg[7]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [7:0]\reg_out_i_reg[7]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [7:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input \reg_out_i_reg[0]_0 ;
  input [7:0]D;
  input rd_clk;

  wire [7:0]D;
  wire [1:0]Q;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [7:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_empty0;
  wire leaving_empty;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [7:0]\reg_out_i_reg[7]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00FD0000)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(going_empty0),
        .I5(leaving_empty),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.ram_empty_i_reg_0 [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ),
        .O(going_empty0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .I1(\reg_out_i_reg[7]_0 [7]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .I3(\reg_out_i_reg[7]_0 [6]),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .O(leaving_empty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg[7]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .I3(\reg_out_i_reg[7]_0 [5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .I5(\reg_out_i_reg[7]_0 [4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg[7]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(\reg_out_i_reg[7]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(\reg_out_i_reg[7]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[7]_0 [0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[7]_0 [1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[7]_0 [2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[7]_0 [3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[7]_0 [4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[7]_0 [5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[7]_0 [6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[7]_0 [7]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [8:0]Q;
  input wrst_busy;
  input [8:0]D;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_1
   (D,
    Q,
    DI,
    S,
    \grdc.rd_data_count_i_reg[8] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    \reg_out_i_reg[8]_0 ,
    \reg_out_i_reg[8]_1 ,
    rd_clk);
  output [8:0]D;
  output [8:0]Q;
  input [1:0]DI;
  input [6:0]S;
  input [0:0]\grdc.rd_data_count_i_reg[8] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [5:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input \reg_out_i_reg[8]_0 ;
  input [8:0]\reg_out_i_reg[8]_1 ;
  input rd_clk;

  wire [8:0]D;
  wire [1:0]DI;
  wire [8:0]Q;
  wire [6:0]S;
  wire \grdc.rd_data_count_i[7]_i_14_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_2_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_5_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_6_n_0 ;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [5:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_4 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_5 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_6 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_7 ;
  wire [0:0]\grdc.rd_data_count_i_reg[8] ;
  wire rd_clk;
  wire \reg_out_i_reg[8]_0 ;
  wire [8:0]\reg_out_i_reg[8]_1 ;
  wire [7:0]\NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .I4(Q[2]),
        .O(\grdc.rd_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [5]),
        .O(\grdc.rd_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [4]),
        .O(\grdc.rd_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [3]),
        .O(\grdc.rd_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [2]),
        .O(\grdc.rd_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(\grdc.rd_data_count_i[7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\grdc.rd_data_count_i_reg[7]_i_1_n_0 ,\grdc.rd_data_count_i_reg[7]_i_1_n_1 ,\grdc.rd_data_count_i_reg[7]_i_1_n_2 ,\grdc.rd_data_count_i_reg[7]_i_1_n_3 ,\grdc.rd_data_count_i_reg[7]_i_1_n_4 ,\grdc.rd_data_count_i_reg[7]_i_1_n_5 ,\grdc.rd_data_count_i_reg[7]_i_1_n_6 ,\grdc.rd_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\grdc.rd_data_count_i[7]_i_2_n_0 ,\grdc.rd_data_count_i[7]_i_3_n_0 ,\grdc.rd_data_count_i[7]_i_4_n_0 ,\grdc.rd_data_count_i[7]_i_5_n_0 ,\grdc.rd_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S({S[6:2],\grdc.rd_data_count_i[7]_i_14_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[8]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i_reg[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_6
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [8:0]Q;
  input wrst_busy;
  input [8:0]D;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_8
   (D,
    Q,
    DI,
    S,
    \grdc.rd_data_count_i_reg[8] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    \reg_out_i_reg[8]_0 ,
    \reg_out_i_reg[8]_1 ,
    rd_clk);
  output [8:0]D;
  output [8:0]Q;
  input [1:0]DI;
  input [6:0]S;
  input [0:0]\grdc.rd_data_count_i_reg[8] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [5:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input \reg_out_i_reg[8]_0 ;
  input [8:0]\reg_out_i_reg[8]_1 ;
  input rd_clk;

  wire [8:0]D;
  wire [1:0]DI;
  wire [8:0]Q;
  wire [6:0]S;
  wire \grdc.rd_data_count_i[7]_i_14_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_2_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_5_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_6_n_0 ;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [5:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_4 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_5 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_6 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_7 ;
  wire [0:0]\grdc.rd_data_count_i_reg[8] ;
  wire rd_clk;
  wire \reg_out_i_reg[8]_0 ;
  wire [8:0]\reg_out_i_reg[8]_1 ;
  wire [7:0]\NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .I4(Q[2]),
        .O(\grdc.rd_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [5]),
        .O(\grdc.rd_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [4]),
        .O(\grdc.rd_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [3]),
        .O(\grdc.rd_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [2]),
        .O(\grdc.rd_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(\grdc.rd_data_count_i[7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\grdc.rd_data_count_i_reg[7]_i_1_n_0 ,\grdc.rd_data_count_i_reg[7]_i_1_n_1 ,\grdc.rd_data_count_i_reg[7]_i_1_n_2 ,\grdc.rd_data_count_i_reg[7]_i_1_n_3 ,\grdc.rd_data_count_i_reg[7]_i_1_n_4 ,\grdc.rd_data_count_i_reg[7]_i_1_n_5 ,\grdc.rd_data_count_i_reg[7]_i_1_n_6 ,\grdc.rd_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\grdc.rd_data_count_i[7]_i_2_n_0 ,\grdc.rd_data_count_i[7]_i_3_n_0 ,\grdc.rd_data_count_i[7]_i_4_n_0 ,\grdc.rd_data_count_i[7]_i_5_n_0 ,\grdc.rd_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S({S[6:2],\grdc.rd_data_count_i[7]_i_14_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \grdc.rd_data_count_i_reg[8]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i_reg[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[8]_1 [8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[8]_0 ));
endmodule

module design_1_axi_quad_spi_0_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    d_out_int_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    SR,
    \gen_rst_ic.fifo_rd_rst_ic_reg_1 ,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    ram_empty_i,
    Q,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output d_out_int_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output [0:0]SR;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input ram_empty_i;
  input [1:0]Q;
  input rd_en;
  input \guf.underflow_i_reg ;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire d_out_int_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1__3 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(SR));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[8]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_1 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_int_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module design_1_axi_quad_spi_0_0_xpm_fifo_rst_16
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    d_out_int_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    SR,
    \gen_rst_ic.fifo_rd_rst_ic_reg_1 ,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    ram_empty_i,
    Q,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output d_out_int_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output [0:0]SR;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input ram_empty_i;
  input [1:0]Q;
  input rd_en;
  input \guf.underflow_i_reg ;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire d_out_int_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1__3 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(SR));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__1 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_quad_spi_0_0_xpm_cdc_sync_rst__3 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[8]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_1 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_int_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "8" *) (* ADDR_WIDTH_B = "8" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "256" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "8" *) 
(* P_MIN_WIDTH_DATA_A = "8" *) (* P_MIN_WIDTH_DATA_B = "8" *) (* P_MIN_WIDTH_DATA_ECC = "8" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "8" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) (* P_NUM_COL_READ_B = "1" *) 
(* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
(* P_WIDTH_ADDR_READ_A = "8" *) (* P_WIDTH_ADDR_READ_B = "8" *) (* P_WIDTH_ADDR_WRITE_A = "8" *) 
(* P_WIDTH_ADDR_WRITE_B = "8" *) (* P_WIDTH_COL_WRITE_A = "8" *) (* P_WIDTH_COL_WRITE_B = "8" *) 
(* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "8" *) (* READ_DATA_WIDTH_B = "8" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "8" *) (* WRITE_DATA_WIDTH_B = "8" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "8" *) (* rstb_loop_iter = "8" *) 
module design_1_axi_quad_spi_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_SPO_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[0]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[1]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[2]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[3]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[4]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[5]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[6]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[7]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1 
       (.I0(addra[6]),
        .I1(addra[7]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1 
       (.I0(addra[7]),
        .I1(addra[6]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
endmodule

(* ADDR_WIDTH_A = "8" *) (* ADDR_WIDTH_B = "8" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "8" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "256" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "8" *) (* P_MIN_WIDTH_DATA_A = "8" *) (* P_MIN_WIDTH_DATA_B = "8" *) 
(* P_MIN_WIDTH_DATA_ECC = "8" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "8" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "8" *) (* P_WIDTH_ADDR_READ_B = "8" *) 
(* P_WIDTH_ADDR_WRITE_A = "8" *) (* P_WIDTH_ADDR_WRITE_B = "8" *) (* P_WIDTH_COL_WRITE_A = "8" *) 
(* P_WIDTH_COL_WRITE_B = "8" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "8" *) 
(* READ_DATA_WIDTH_B = "8" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "8" *) (* WRITE_DATA_WIDTH_B = "8" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "8" *) 
(* rstb_loop_iter = "8" *) 
module design_1_axi_quad_spi_0_0_xpm_memory_base__1
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [7:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [7:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [7:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [7:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [7:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_SPO_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[0]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[1]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[2]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[3]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[4]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[5]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[6]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg[7]_i_1 
       (.I0(\gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ),
        .I2(addrb[7]),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ),
        .I4(addrb[6]),
        .I5(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1 
       (.I0(addra[6]),
        .I1(addra[7]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(dina[3]),
        .DIE(dina[4]),
        .DIF(dina[5]),
        .DIG(dina[6]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1 
       (.I0(addra[7]),
        .I1(addra[6]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[7]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_7_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_6_i_1_n_0 ));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ucFC30e5vmQ8oT7umG3Y1D8Yf5e1cD8sjdBGUk30m4Msp+M3x9Jfhf5iTAerlLiDyp3QEkfqov3Y
YJq0CR7Sz3GY+nY+5RiwWa+uxdDUPnkBRwT4gTwFCNVGDXwwS5DGL6vZnCiOeDm+kJRjJa6/7uZa
k0A9XolySvAgOo3j1yQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+12WmwsTd8fioQZb2sFiLm1ThDeamghqcDKa1U/ehDWrSFOkixn/eg/POIy7VE5v2AdNLIy1s6r
hNWBUfGndqx9I8caB0ZpReTzabt5P5Ziaqv3ZtN+7P4YTwy3tRuH2lYlRmtzgZ4PtnddCUcNu+tx
8uODqSimbZVxO6YbkxVeA27NKrn5ErmD4xAuEGT0UPPIFRA3YUzIsZitNmkgCH9C7GuPnHiPqEvf
tknGzsX2eVLzN2CDDFE1URrTHTc71nECncAZ5eHNuQrdJUrACdcYOTVUvAHX9p26Nh6tymz292To
2E5Mhefra3H93CByMSickNWOsFY4yHS6qKlWyA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OGEvdwKFMPAWmnpx1WZPCcSQQ2qQrh1fZuiLzgb88mhp8angXVmgXc3YhiqAtKMqKBg5NtgrWwHA
rpWNudvOEM/INlt4QOpNI3Ppikq80Qlipe1t3/sJ9G+2kkJ2LY0DpOxP66odtxMk1IT59oz/6NYC
Uo11QKeec5anOI0rog8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y6i1ZuSETAM/aPTjnnuScDD/iJVrSETtQzMkOG/DuHCTT8e474a0cqw4N1b7r+wVyy564aT2zcvi
h5wwPIc22zvXRHDkNSb4H1RikdghWo0+agXqiMgBo7E3QSpEE+WTbLwuxquMPy9+MzfWhy9BoFB6
3U4Kna2Qio/eOIuHccRwgrFl7JA8Bgckoy5TO4yim071FDvMfsGlT78Ve/Y3OnCBjISFhLAMdXJy
gLRUSsm8EWukc0fMjEabyyrmfopwHmM5gQLNV73erxaAGs5deaMwy2wFczRmT2mjqZtLa+hdDKgP
NPMqrPU/Pblsk+gC1nbrPcWnYHMgPGUekhhdPg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
znHYjd0VJwRVyT8hEMYYFlL4e6XM8IN4b+IdEpWMEgH7/VgvYUGhq/HU/EXZmcv2K+U9rgBt5l7+
rEgiHyXflmVTYYDOsU9MQR2/iBsCMNQ3KQkG7OvAbpIyb3F0RyNwO/tQB1EzEWLSvhJIvk9vC7MT
uVTov/djK56ZUTocA8v4ZYiJI+4iQ7rkGE+z/zcMhABO0YGw6SrYQfujml6J7G8H3AsbwULQbgld
EbltU4BsDpB4ZgYkkHIkQ+uBiBLexnNtwXe9ELODzKZQEkDhyB9JTRtC6Q7Qy5nDKUsOzKT1ebeO
zz3qrnaNE5IvfIOvkArLbwfeJ41HA6flqo/+4Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iCPGk8mJx8Dx2yHya1ZtUq6Fxx4fyMZ8jj3CDSrCKl1OIbOckEyqTxa/d2eodlRYyk1R3HtsYFca
fHdImbFibMWe9HKhpGCaBo4gB7SJGKis6YIJ5dJV/138lOGwI0/KHRKmfYMBQIgE3Ph4ScV/c/cI
vOu34MFDjS07rV83GKGYs4/R7KrEsoM6n9h+m33A1I6bVxzHQa/1AESsxh11yKRqI9GxYa6rm6DW
7icE60BEPiPxg2gqdBdfaWA8R+m6cgDO4mzbBOgr6h1YntqQ+WQoMVvs4hIBO5Af9Lncmv4jRIWQ
NcpdlzoOBlbfhGRlU7CM+fwczWWZ29W2NvGPbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nR00e06yXtTXePTzpCXLZ6h6cpQKxaytl+tmUHYMrYKI54i9FJbkvmPZo8QQBINyqhV0rYggxiC6
ZRIMpSvGIddhduMoJMncbT9T0pQwgZ3oI7K8tx4lysPp0banhV47XhR8yC0IpvI2zZQ5h+WR5Xzg
6weS/8Cbr3Drp7TbM2TEKUoCcPW/WmqJ7hdfHQR2Y2IM2G0Xt/tEOYQ7/sGIyX5/flLfKu1yP8/M
Zg68tboAarqnCYiHtosJYwOcBYnXbCMXuSE1VP+7XG5h0lZLER1m85pi5CPpnu52sXHTPRzYopNX
meyWo83j5hqMejdk9bRllOLgjs9DmRpOX4bppw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
PNSkIJ852qBwC1XfxbU42ajBwUi5AfdUVcRVXY4zOaGqSRkM76JtRXf8GSAiKv6+XCxwdYYsw0lo
gL5kS7ybYNmzoMeqahTCmviCLHzF1VZpoqzVudzgsg58nqtlM+KRtP8xkYqYj/zfBOX8CHJLKK1o
A7HEvX4310AHmSHCiyn9142+egHlVPDqcRwdP2MbGKM0D77irnXGgcArbuLi4Ii1qtnFhTdJ9K/X
8eQtexFAF61I1neOOIlBDzXI7uRzK1MNPmBsad/mqz0KBsEzmjlTrHI4b4C8RrZ1B6Hx6nLu3sUU
RPed/B84EW6PFPPzYbqwOPyVOTTgq3YYhZdiVR0I4TMxSFxdm35PB4gFUKpPETh3oM/oyjSjnZY3
VgoU28LdHArC6fKCvHSQlA+oGNSDMhjw/yNfybSvHjN3bfyUuIwZJ4cBES+bRl53otFiHqotzcMw
upsJfXaZBhZYpQIztnTLlXj0DBBOGpKl3kRgRBDcOt7VdCOjFnZVaM22

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BqVxcaoDWqd+XbWvX4s/vXBF2RJH0EXUJifZcoTrOxrlDu+c5Q5ectL4zGt0j084tLGyfOwDXzEG
1pfyuKUvf4p907Wr+f8yuC6YbnzW3PdsSpR0AHb9Bd9EYKdScy1i+YD2d8OI5Rkgn9Sak5xAvbxZ
SVcRMQYbwOVC7DJXfYZN26acMboR3HGEhTVkIcZHsjteI79SO2qttsbrBTchzax5jcSgUtFI/DZM
yiWjLLVP+KXXvpV7FssH0er13NIH+BZHGcBhLH6rlAlcgeNEPVWhVA0bIuTQULJ1WbOaG7MbmWYZ
wmyTNhWycUIz5BXbLG2XkqBy1wQPv/mYf4MwXA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14960)
`pragma protect data_block
8ztaNJ4w6aVd2xvUkx0ziukuDE2MQ65pkrK7vyvtsbM+f5KKIu4BlIEZuxsC8S64zzx6O9NRuxw8
9kXKphVZklFFfA+l+EuhyC0nKs1LZ/k7BceDY8lsAc/i8OmhOUI3rFOy6M1PlKuswtfRM6xfPTxq
SXfItt6kxmqGYzPDz/tZEdvlGO4wV4K7K2zcI2FNP2YLilr3lzJrIqEDPqH+XmBqhiv1IDDHa5Ng
trf2Z57mpr0vpWHbb2htVxWKHZ/w94OeLHt7SS8uWZN56YD20+ZpEsIdeQ28K5ely2LqbmsV/LTc
urkipIyUPuvZzbUsoEIjcPZroyk2xGWr1Pow+G/hLXC7Ki2JdjRQBM3Xf31ZeqXzpG311xgA2v79
67oClQzhWDi1/behuXBoRs8+64fqKS/6Y5tS1YhpYCHvnYEW/wTWCdvnNDknuvVUtxw/9c3kkEzC
58Iu0VWjLm+CxAz4x8HjgJssV4pSB9FNcdgQvx54AGPYRITYut8PM7ealqVVcsRonJ1SABJhl4kx
Bg0mCrf7LjN+acjmxhBTRRNGT7zx56wFCsngGCb3HsSI/es6DT1uup2MycT4d/GIkMKdHnVGDAtv
uvQpyuHfPAr5skba6DxkBQ9VWo3dhrOE3Wow1o5+aYdhEpPdO1V8ZXLGhfXMvQoVAnhFMtbWoUqU
bPBDB3gx2lyWYRHTNFGdYiiNUKAfemlIUT5LR0ipAidr3UZBxWqcqJvVGXdOVs+DagonT/rHN2O7
lBXCN83fTGlX3e0ap8fQBMoEJc1UPQINZQHOPdTTYx6o760GgpBpNWSCOf/ID7FXmAKJloGv+3UU
ioFx4NiIq3FtbdUyhxU/PjvhXZAEBUllSIR9LadN4sqQRsTqb1WnkZx8k6+Tx4MeLf3BzB+kWmRt
nqxXQRTdgpSXfDTev+HsukAS3HOrxlOBdnc5oU5OZawWdAxjfyg8lA+naArpK8KpGZksoDQhm29w
21R9IVXFfNL7zcGRHnX06xPXmEFdZZ/p7XHb5dTD4QxmMS3kHJ0yXiL3tZpMDBwc11BrHWpGGahp
Xg0b/Ga2Qkah0xa4ArCLR3WagWVknBApN8FR2T/BCemi9iqI2T7FmhYECZEWSDbRsUiNF+1AlUJG
PaBRLeOlOL10J76aU4mMSwJ9IHxcmS/XA63QH94XxAE3o8nmxNtAAZHyeZnXPpaQ1+vWzcIh7fnb
GZ7Rh2HCeG8IBwB0OPWtnPf6EQbUsk0fGLJHgFPcn/6rR7V2cLxhqTDuubj7B/qcLN+WUeJ7jXPz
UshmKbbpsMJ+5LSqSZjzJrLgdeqMY3x7VOF+FEwZtjY0DnVkxYovseIioFuJpXYxkBZtTcKhVZuL
wU3f4lJzaB82kvZm49Spkf1m1X91+A/ank35v1OSJ2ceI+m6hLRIMvoV2Lzo3si7WKln60QrcoJ7
TLWmuUAD6LJe9R+ZSftObLA/ncSnx5wY5eOQHF+YIFdR1FMreps1jP7W57TUVf3IsuLpBmuYXf9P
jxp6z14EmnTOcwTLcVFnAkf0vS0HgHAvQHqvOUCJjOJ/u0yZN3W2klSRU0X2zLAQkYQgESL7xyKk
bWKRpFmT8ae9bgUKrdXHFWxjfqVs7PESe/Qu5JR68WPoamGa5UOf0ypFCdA/vI4vJV9czahNK2I3
5x6wg358a78GQKkgvPRpXLZ5/qJa5+JHd+8rVHOCvUy4bMz7Wwe3S8micKyqjGvwi7r5GiTL7ihm
JMkWjxfX35k7X4exfElJuj4EAVWtNOxCuJu7/BsgcXQBT7PyQfiNnmXR1UxWAxD5Snz2480E9+TT
/hdldfxVYXJ+DnzTWhTTNzW1MgltMoFhTY3qNVHVmRtXQsKLosjWIPOQjqNpshM63pr971PgL9Ft
g+ReeJW2S13I7rsYjFq2sQjcU8ivkBVGNX31/vcm9GTOWiNqclu/j0ELbbljddmXulx2ma6kGpfj
E+qaTZKRwQiMCDBajZwox0EY8snXdKDLbHW02ZuMTPS2MOKBIksrJb5MEGaMrLbDux802GqQr8do
3qO0k5zenbvcVFKrxkthW1K7X5zqyfggrB3no742z0hHz/notZpO5AB9KCpobc34ZhHk/xHDjVqm
00W/VINsmC6nF49TUB0y7oMjSWHcO3zjPBh0yChokhrUXI0+2mrFsPvwBg7fMtp2hKoqmwutWBKd
V1u22qRlnPG2xjMZbWmFAI1fbMleOk4O6oN4OPDDfF58OVMEytOhYh7kmi3mjbXID/j3zSuskHOL
NxN2aIpp1WgSJM3DlYoA/8CQbzjE/eQckQAn5T8tY2lmIE8JlbQzJXffMVUGYsEJaSs31wwShFK5
dq0wMjcOyrqxakxOemX838qDZYup9To/mSEd57QkMBPAy5vx6aAMj7HfaRLonLUp9cMfN4WIqddS
jA6A2gT39All/xSxR77gQbo2BTGJfYf3ox/vz5R2F/wiqtTsTCGCz/lDDROwLDt+WPKMGbNQpmwl
ZNg2/LA6S5rAhbHwmuIFCMGocZEMqhi+TxQSXujx3wytUrzMN/X6kqRiIHJ81ocLVl4KTijEbMPF
jwYsEc/naMQ9OvTJ42xR+InTBkSkZMFgBzoPBzSH4wrVQ/B+uARsVPTGYxbhXJ05H7vtpWabxy0H
hqCviTiwe8UuX4yyf+m1OXvoDzep0qXtDRh/H8n+5zi/iZSDA+88VIc1NOD6eWeWDkqgT6bS20ho
vlzLd3uOJB8hRePHCVWM3Q168CeY3VgrkL0G5VBfdsLKKmN8d2PQUbYv+J/jt7uRa2a2rShZr8uH
XFTSIGtoEivnHU8Iczh0G6Gu4/5oFQxIPGcu3q+UIQMwTxIXFKaS1yMt+emy4KTWw5McdXRIyZOk
8ZZFETE+ug41z8/y3s8vh/eW4JHxj31kWUQqUN2HZJICjp8kUqxjMlObhRafuq4noBS6EhvZtR+g
tKb65athWzfhrURRKwViyxzGhXS9LwmZZ1DXbUz5jRwC4zRWryLLRFutT/u3qynMbQyBp1BUF869
RHj4pCVOD9rghVjIVFVw7R5FmBne4sTopqi323FNTf66Udwy+ba/qmE476EA3MiSxJPOI9I6vBi0
mgELzHkdTUrJWnwpP79q4qXsztVaktcEkV4F07jeyBxfmmiDPxjqX18v+YyW5JTuWPeKY++hT4i4
njq+Mjl/3IVEibRj/QlwEWRNczU6s8Hhs/96T+DGG0vWy8csu7QFBxOKr0l3ygoMMNLwSOU4f2k1
yDLrzEQIMRBFhAZb8G+TRiptmA6Jr7c/q+8pSSI3e9km+2QBiVoapeOT+P3FhdqJEiT7COZApCvJ
6nUN8l8udLEXak97q4rKeRxDwOALmQAGGy1ZNi7f0zm3qHIiJecdl+MoAuht3u9CawkF3ZlvzLpr
K+0bhgkFDTlpbPmMKmzus2u2v69qZeR6XM8+w5NC2TmyjSdpdjim6G2zteGCNmGf9F6C032yDqch
No13SJl8pFul6E447IIiDtIFX0UYfDrJffZJ55soWJRa3Now51EqLU7Tqie/BACzQtou4bSWqgKz
Brwr4QdZ1J5IouNHS+zcHfKejasHuiuO62mBh/jRYfXQJeOka/pWFVmiO5m4Zd/YsxG0tMnODj/R
eFjTJEOIcUxqsoJ+1o1eO4+8PK/VS31JPM5KPrfs08HHC3Pb3qO39zPMvOudKNE4w+vYueOLg2y/
/6GGNiVxvd2HKRzYG8F9H3nV+sPS4D61NTg3cr/qkmLuMkWK+VJ2nYdqI42fDrU/e6CwysPYzgoL
fLSm9Td4XaiEG1PezSWQRN9vrMkTtCShgNI/AO2FFBsUJEXlocaJp4vLae/R1nNg6mAJSUefhrHW
a8daJ/y/ufe+VijZBf5K8DfJ6vWvFhOkAP/xIcvmFL1JjtKOXvhBUthKh/kPvrPEJz/w0QM+RRrV
oWMhywcFKTkRWwcsYVLuhAw5GRh4rcaLwG2OOVaZP0aY8tlPaKeMHjhiwC+URRcwjhN5bzkxOJ0p
kTb/AS5ToQJlqfhLaBjnglfBiDQqe5s/fTKJZ1lmCtSFh7svuA7vgP6zyBMXsv3KrvgGYm8HDyXM
/fETl2z2HKVT3OZqFiP5GombrL3b21l/ZzjFvelv1IWMPcX0m0Nh5KdOrX6GFR5bGTPU2wVT4Bjm
d+Fjmh6OM+nTiwGx5uQv4nDXnMzK8Ump7OykHVZ7MFnoOMyeS53J3qjxm5YEy/1dtDlTuwVu5dVA
hxhHyLKmaUXD+OcnvLHmQtI0Fg2d74TgTiOsbuAsysffjfqp2ucZPlLFxqA31bjiPLczR1deBvCb
osWbVsF+Z6ZPMRhG6pdpxIW24CjAV732aNQWJO4kSnCFg27njlBIa0JhFs1FruwU2lJqBKZNcEtE
Gxk9y8zsfo94Hc8GZKpYGjssSLw4zacespSNb4xrfFKfiXeS6xVD+d+QgBPGm2TQa7VPnOmDH7Va
tyzMA2lDMH8YXiMbI3jb6SfNdLXWVtLXQQXbJcmGb/zMYQmyJ6yzgo78bU8Eg9AfE4VmXnbS8MI3
0p5UfsKNzQDfPXAWbNO4JnFnDIh535j/ziMSJvbiEd/f//wlZ1oNYO558x5uVg+DOIhZe3xE4CNT
dkionbKGyVSxn2O9knSdnEt+2FxyXSOlBWerfU085ExGeLJLEyDp1RlfYqZ2cfeiVya1LNUka3L7
Mps6BiZILOGeebkKcsFFK7PhbXkPUcVnJUg14KIakbqjWGjzYke9/74Ke+BQv8+CN2yn4cnx1ATe
4qfWMpSbcwnURBBMipO1S9T8UA0HtlIBk5XLp3uG4KbvvDjomrZtNiA4y67FDbnvhld6z+vWlLdP
Sq7EbDFY9SFEfJJ3dej32Vzzcnis53PofX4CwGwLGiGnnjWjBg8ON79GaBW2FJPwDZjSE0E3hife
LM4TXWML+TOuVZi403gA4EB3f7t+wfu6gXgKxtLnhTgelcrgrJM8/pwhJlnSNbekHfM2xsR70Ysu
P4clBVE3Eq0DI/az3Bdn4QfomWiIyGcUflkEWzca21VwPostXLpzHkRP7ifolzyQT1izRQ2n+jKv
k9LsKmK4RsetGvOiNk9907K8sjh89/d0NwLTa2VgvfThINlpdUkUSuXglLuY//qkBflatMU8Telm
z4KUNETo3M1k22yseUGs7LYq6m3SpdQvVohx/oGanmz3z7j2km4IjMlY08L1clKPYcbA3iQTMkxZ
dHe09CpNu72NhsRzZn1dD4b41umdUW7+CuW7s5r1v1WtGulJAr1ychqKlATZlcHzKfj3N+rOGmMA
t6PUYvUP0Va7ZPEj9LK0BsAoxrC9uiNREAzZYWv+rnREXpWCGq6yda4w6g9pLO69admAr4hUAln/
YX0Bs93d8Na29N3JRKQfCj3Ff+W62IKSc42Kd+s7FRd7NXUdx8W6XlraskCRoTeZDFMqH/qTuCMZ
Eisk567307kJl3q/nWsdCXsjj0vjNys6guvN0LXkEUVOeLwuua93aRniTS/dfN90BnOWPTw8RUdW
fF+6NibW4stYkK+6PsrpQxeiMhuvyzeH2ZtlB0zmEHHtAWX+RnBJAqlwr/Cy4p5Ywfd+3m58oNpl
pK1BJTBILjm5vRxYyJTAqsfNFeEgX6jymolvYCd05oZ+WplcGVQ7jdG4+EDnpj3LOCEejhc7odfM
0JzyJTvq9+NLXJQ6n3E2u8LXs/9xGE0lqBhA51dHoaHQ4WuTb5iTCjzs3+QSkbFjH48Kfy4qUzJI
dRFnqKdrXuYkbEQFvgfhVeoBxyXytwA9eQ4ZpBU8U0IG5tMeMMAKw9hKHhXhdMNE33hbi5j2MEHV
rTt5l/7CuSCNz50h6c6fhbkHA7gZEoEb39wSVIBhT3LULhltMjpLVZVsRxl6vK8gShWtCIG0qVeT
/xZL5g+a7KOda9bxhFxngEO3rtPvYLxtJiPJAx/v3Bt0JhT1IzJ0exWa9SZO+liwZ81yHKkNdvNr
slKYWMb/7ScqzUnM9YX+W9doIcBtsOp04z0tH33Ve1ccatnhhjfbQeZniNikNscXNL6pG2bp3mG1
cxDhEjj3I7Wj9sPcCNrWApnHWp+Ef1i++aDLHnBZlhQKApR4YXxD1TEv3yaihmEGZ0K/t9MuD5qC
7XuD7pjYxGFo5DWNVSpZzF1mDrS2aGx9MAI+VsfirJsu3TU54ktcyLMB0vCXdz3TABxUJl/curhi
dL4WOVwlLfpRSktOs88N79JadaV/q9Rgh3C+VCAmn1181k1THX/95UxzSWEHpG1f5qHwFwFaJwPv
FEtFxIVzXEw+fhKIlaB9AWS0hNm4NnFOkn8Sy2eFX6kr6at+TpvucL8v4ScpD4hhG99yzRhPGyxy
0cD/4K1iWA0c3qtgAKSMHn3XxelD5v8vr4LVtgXZ3yl2mLjdf6w1gzr0xywNkQHFhVqW6OkO+MF0
nJimJKErb+dDYCoX9e5z84ljGAXlExNCVJo9CA0cAoxtFpXin5ZQP3pZRN2l4CBHHN6aTl1Y9c5/
4ssDsi6kdFb/tUiBZo/DA4HXkAxHg3kn2QUn5/z8IMkm7yXbp/9a6dO14SnMETjCv+rA1vWu0lPY
jgWVnfIpR5ufaOyzPmbbAw7Lai0noqp6Pgt2+mrM2TfgLfLgGf8AqnQeHhUpjKB0aEQIoz1ZjpEO
H82mvmDrW84OfdNZ/3lyWHwTvKo3Jk3PcslqcQMJvNWHRCgcWtIKfHo6Pfc6XbddMCEG+sz1536v
pxMX3zA3tsIUSbJR8C01HTZFbMPs9/ztY0caPZ+feTAvoSrxUqqKstqJgqFVtBmt0dVRNTqwnb+Q
3m3vVHWkOSBGm/Qq5wIonF4YrmDLweepEFVZfhkEjBeJuVjxXdVzwUVp52nTTap1LBGNpeDPIG3R
//DBbz4QsLflhZ2JDZoGfdjHINfzUaa+rO8BO6eK96rRFFkPu2/jNWOLrMRdb+KtGpAiQIHP6uSf
htOF5YUYTBbyRigdLgRBo1B/9wH/ThvQP1bG6nZVGFh1ZueBr0e3GVGjTKbXarZnAfKs7GRzjmfl
MpmZfP5J3vymKB3KCh5muytrb35NqZgMDihqN6PkwywvSZ368mnkHru8z0z+5gIc25y1pl2UVydt
34clxFLWRLTNuTDz7R+c82Udtexts8UcIwygkid3Ydm0Ls2D2sjtHjnkk7tIaf5nQOsCBRwhLlU6
VASpWc+4hxZ+8QqWAVKpIiWMelA7N5X4eBIXchkZ6hKf3Bp8Q1AQOYMbTHnf7Hul3lpfZ/XZPpM6
A99fS4grA2CfUbMzVZOpVuHA3dZHgBS2hMYyZz9l9omrj+Lm642WrlZPKy+6cfeZzm5JO+oVuH3N
s+peS+oXD/P44+GiMIzesj+38COFwL0hphIBfQouah7lL49EENQArQqEb5TP43HlviZsT3So5+ux
Wd0CmcjpUQxmtholoXvYOKswaYMtbCI4/dZJrJRCltg1Zml0hKMASLp0Uzz5zInRJsBVKXRn8D00
I2GxFwz/u9jgdmL08w7QyGZbTAhG9c2cYXhrlgkoSdt1t+LiD4IjyORix5H94HQiCn9KpPhlXM5Y
ZExOUrIODGrhCSzUrupZGVtJ2jI7mNLF4y+LaudNLflCIDvUcU/K1aky0aCvWyThUVAMkqv9EN+w
l+CZzInsHwwRUOgxbOWXjXSckyWMqjI3LCfguce2Oi140uhtd8/yvJEMpdZbVqEhpR8udC1W3U5b
4YnCw6MSpYgBYvSO7mhpCICzdf9JoY4z8iDa9jpFlpu4opYI+mo1FVkHvQwty1WYSR7hJeWRgYbJ
lG3p8/fj5Ayw9yk4KF3GJ448d5al98rvULyClxk6CbGcLVAX/JrdrFCAk+hiicQyn5b4avCX0ICK
PGRqJTNAJf2Gpg7KgG4nbZXC6o51Q6jmuYjjR4elF68qXvmerzZEQxcM2eQPY9yXWJgQoECOl+Oz
UC9OvjeaJxKObOGB72n9avPP0STAEcEWWo+l0IFKFALGyMVsXcOcBVCZ3/XeWdGT+KnICuxnEsqZ
VYW3pidpFDpMGVZkWljO22W/+Lv5KrdGxeSasx7xEWBbUNzzCF1YxkPHVR2cK8UIp/FTNnrRotZK
4X5WHzQJ3C8Tqb9ReJg9Rk2c1BQAgJHUI8EYHLf2qkxWWuWoUbNQD1Ynwo/fQFGcyG5pEUF4Wac2
H8KWEEznO4ShylJQ2CVHt78MckqDEJTFLO4eXf5+BqH+BY8sQABMxDedxsMuZFCJfotKhqb+lWzv
wWOvdX1QpRvqw8KDEC6F9bLex6QMDVcBzcVJOodDhwGaNdgVEoLoTNMPdLpb48TxCrgaK2nbXlEX
hukZ+3N+MRhdItDZIyeie0PGd4Hc900q+OYSAhfJes31Vj7F2NuNKTYsLEnwmuA4Ur7xVGZOrqmd
t+l0wBbpR4Bmf4mX1GiLMmpmIu6/LDjdCzwh68IKUDgskkUAKLtx96OhGLV44pDPzK9sU4XmkK55
2J1ZIvOUUxsSdmz9ThnBMmrLG5IqIx+xyIcDU4B4BiBMvNLbND/IA4/uPIfJ3TwnkkXPMlOltU1x
Z759ai0r4eitsqhHOSox3B65lZHxtRrVz6WL9jqbvCLykCN3PKmz4V2z31DRVp1C0+10Pg88aCyd
oxtyQjLdRczAJekVw6y+dcyPXuXgcSDVdtjtLEhKSxiCVCbMN57zAAyj6dyGVztDkSQmarwZ99/i
uF06fPwP7OpxqNtmBD+lhBqvbd+12UywNxDRe+nlgDhunjEkiqS5BS4+NAMnsws5nT8/Bc6R6rM9
x9XR9MgBKRRrq2qirxKyEOCIvhrLxKd0MBaLwhoQbgi3E7XCALAoH816bw7kylT6OaSZstsv+bl5
0QKxjzBxH7cUodu9IFVRltkU/sSD3gFZjXK9irtZ4YX9tfcfbnxUjVTtKIJvbOdPF/mNd+fkqERL
jXP3ZlvHxGb78ZX2TYBGo9j84607r/Te4vO60NCxLiqqVS7XFkmTKNq0thXCFDak5BJKWdduzRJ9
ZXF6roJJld/MWff3TQ73b5oMrjlBWpacZUy1VluPlwARIYTT4UppirG2IL+WL2as9bv0Vtv9W3+b
WdhqjDH78gLbARJVAODP2zoPJ125VZqkIRmsdGWb0uDRCFL2hTGVkxN7HRZ8WAlhza3K7ayK6fYx
oWBzzAqmNEOxcWWnAiQ5bTUYVqUFjlFYiHGfyYGaEvIUFSlBrA0SLYHKQ9tRb+1PPd5yru1t8biW
bGKd4ZIst7ScDb2LEZa+mnx+2oPKM+DCP6rujuI41M0k1+b+QBeT8IjCl+0KMGScLhzjIv3HgEcB
znuJP1vIi4tmBcKJtUTZ7Wg0DWrDkSE+MivKG+FORPB4Rz8zSJykRFgHjItIEaTMS/ncmLQAQj8w
pIlONNvIdK7lXCnL1eKka0n96u8IwFgokelX76Yuqypl6soOPjb/yEBk/CGQ1sn7/5xLdW7PI3H/
RQtgGg2K5tpwxwK4wiIyDDHGkFTOaDadUcTjZRXXFGxB19/FxzlSrcS42Y5+4yV5bEh/sIdZwazu
xK3Sdmt8kBUrdE7bY+YyYv/yUoNH0vSXI/dyPbA8GP3lGyWidEe+NDPgQxZfOeFZ+nzQJp/OVQGx
bAb1Umj61GUX7qmjoxuTs5rg6qndYmPRYk/HdxsDJE+HpkAqYXk4mpeeMv0XwMA4EY93anayz9sX
LRFyiT3Mq9yC9MqcRH/rIi8qqfJsoGFCScMh1FnPOhEyorvPWKmLJROTgvj5/ybMstl4U1sCxP8s
EQSkCJfvPVZJ94hmJRylWp8F1WORW/bb69eRIQnKrEBXwJcWbaEDJTx1Mxp82tSywaAuQTI5j4iF
djh67xEUHr/8s3V+nCg7ZsRWxqsLa51UOINnelicvFMK8s5BrscIi5syEx3EBHJHnNrn/ip++yo/
HNnkaNv2irFu8QXrC8aQdhl4oRW5sNeClL/AL5CkQE3C4dKSpfkfxpOWxM/f2GxOsc0NRh1Wunof
MeXWHEkBkmXJPCETMiiRtGnLG4iknc4+Toq+oklfvNBblVX6iZBkk6D59co+RYEIlRjq1mDG/c6F
L7tNVqkqrD6OaZDEc60n+0pmT6mwsSf3X4iPKiPCW4UGVKzDnGgh0pDXUafmhajUAl9agCSYGhwf
aF6J1jjIvea3raG2pmb3HWku9tXiykKJJmLEPGA+aZtTl7bIcADeUdaY45YYMdFyicLMvyPBi8p8
fDW+MSBdXBuK8PW3ASVQMWFNUIlChRRILjkLxT7X987moO/vdF0Zhmc+jeCgJeKTnpBxqX3Fe7EE
sHCzGsKKlzW5ziUVaH4zPs8H4Vyx9e2GJ+LjZzM81l4ZhPVCL5pSaLVv9TKv7oWXEzQFlAUsev42
c8lEyw4Um+uI9JotXghl2hw1BdBEwMW1LK/KnqnAQu9SlGjbif8OKaIU2A+1NBnN/7sNiu5m1uxE
ZKad/l4vuZxgZ+qKn1cuVQG5NHpUGiuEtxK5dO7699QXF+uyEj5SeURYHncLt/DSBQGneJLrOZS3
s52lEep71eQfhbx+i+5R9L2vagJmYWIVk8Wu7tDJKb1XQiLu9zkohu7XZ4GTQRmdVAecc8EWuPSO
UN4Jeu1F4kgypCpZBQCBrSyT6wRAn+nPA6aAk3iggMPM54zwalpM3LNaf44C5c8uECaLajo3MgCv
WRvWNXQknjRP6a1t0M/Y75QxxSXQDQ7WPLSByh8RD9SPkxO24SEApyGKUxDh7i4cK8ie+nNxeqU3
WJn16N5ISvn5ucDgHVXRlorlFTnrr5t9Vo9TWqrzDietYtf/MdmL3Q5R2oXSjcpSE1Mn4pq1raJP
K8ReANlrZGS/an4r3z2rhs5h5TxxXQeka9VuEWeS6ERk0fsfXvshDwCKGb7lkq2EKhLX3QwJpTMh
0W/Ej5FKUkd6ZX2Q/Nw+lwtTQvJvob3cV6MRw/zkaWoh7Vn412DtZ0gjPX+iogkJsIw3gQwxwLKl
aW1/OrRETZhgoqcJsvf26DoSw7OBhTzM6AX6FROqdCO7EotilfJEQTcygTZxrho5h7yeMQZ0y/HM
moCbQozoQAxiEcJ/b9N7NCcuYLkrp+xzpLs7NyYpVl9N72aAv+8zc5UBMH39MjiEh/Npp/Gobqqi
Y7Y0E69KyqJQKlfzXMUpC4Xisj+4v8DLBOxfi99BtRAgHzuBIjsn4MXczfsd3XPJNIVx9Bz49kvf
4MPEkGtyCij+oexafBsveEadXXWK/m8d83RP+d9AGLmlOapZIW3szsXyisRaM9zAJI7ovmzAbrl6
IuCwM4BHc1AFcRZPuZFdkqXxaoE8pSPBtHDiyySkg3ZpDbC30sk6bSPUY4bQ9MLbxnQFyuxk3kew
9m1CRPSNr4irMlWPOAvejOgWCoDAK649iEvZ8N3DkFhEmHoUXzl6VXi1Y8wfkorUNoCu8c0KJW6c
yguWA7T8F/3l5a4jRKEza5yBgFh0DiQvwbusZcIZC5M3k16VyTdsdb9mz2y0gGGs4spvMHNgtJ/V
72xKFCUkx3mTtk1fhcC2NaxxZFJ9uFhHHLa6Xn3ebZTyoEmork/1ETrDifwPCjQ7KKIXiXgITSug
4EY+TWk6uEJZcLpa4gaKlJ3GC6DhcPbWzz1KdlkfdvSSUVFAwtOyupBbYkq7kPnhIvgP+jrP9Bmt
fEk/425WPp5+AkSF5Q51tzN0YRyxwlgFYh1Il9LyyQbTECG5rtcIdj4lMEaX+ydfkHdaK/7GtXqa
Q8UljawszGFy4yRJWW661bMeT/xCc9jCiPvzqCNqKHvuVkPweN6LT2P0HwmD1iH3EjIxfzoZxzjl
CxVByHz3HgP7vIjV72yUe3nWsdEyv5tVGxNWHMUWTO4ZnpiQkQha0Q+Bz47XlIw8mIszP95TYMmo
pzbyC4blfPqGcr1gBcrHXBlBiybx3Yht02RtNLz4pZ3CKSAMoA+n+GY1o36rfn/ocj2GmnjaSO3S
F+FcAIXwJ9+SGRE8gvWXeUGJ/lIlaxEvHdySxNNxOrEwf1rIL/TtYQktLJ6XDxSbjWdSR2dvlmiF
FFEdGwxinRdrjGOINzLnxo8MfCnfURsYJFkOWnlgKgPG0RMPQIlKZ2fLAfyzwKrWubBAYzIx7F1h
CZOQo4eU1glE+P7RidzNuHOFsHRIPItnSPmF1MxR2RanZjBkgxLZp334uphhviXSg0OaQEEJ6Xz7
+0T90wNkmQxdymxqR/TX22nCR1/x2DEzGI++OPRSawUxIhjgpHJ9z4Acrbt5E8YtXrHSksCM2pKK
wRbPRE67CxgsX9nLiPIV58LD0GmEuibiJNXVb/AI5rbJkGAFCi86XiOd8/FkDUT5uqQXiVbU1Qs7
Xhtjlbb4lh8G4vZHcgUaPLWlsoxFL5Pyqw9b+piKXnmfkEwoHbhHJJRPPr3+WrQF3aqBD0+H/S5I
w0m8CeTVu74GhXdkOL07CAt1H6noK/EzP/5/kIUf7HlYMJ5F/FaWlIXPrq3BKBH15nlidVQFw7z3
8Bh+hn/LSknDtAF0YQFtsIdecRubNFtdnzGbtwA8alBUOX/QOL7+Zn0g42u0qcE5oBnXzciV8k+J
q81feWHG9/Va1mR6fob8boe0ZMCjNnGfYaZoyUqfuS7St7/xP8QrglrFje00sB3o7wOCpBfGgf4a
SIBbuBeBNfgHd0r9MTrSJwSJ2vnnbyJu/qUJSnNH+XB0xxwDn6iQMD5DecrzOt7HF+FYakfeY7lU
4wK6uUFmHk5lJtbru6JnhfiI6+IHczMiRv0cDJp1BaV/bQ+8G4ygRAyB6ZgTdMQNNLdWN4NKXiWO
20XZNfmr16Y9OozXhVK/ocHGp5UvD5k4g/nBkGxRPEzFEl9865bAYINbAFW0yUFzidtySYXK/DCL
pvN6pIUECaJN8e8GYhxU388mssQyFXgA1puHojG1tePC7nmvbe1psStn4k3S3OR1BenEaQEdn4i6
l0IvKBq1zsy8DdImn8W9yhtHDLhxS8izN6ad/TRfkO61SWpNUOyH+JUFnG64J5TzbL1Z0s0eFGH7
pG+cIA5yOiPPMqaB+zvtVfZ9h98nGemyyHunPrfxhq//j1wqExvLsYyR/L5nDw/JGWCQnVsV0lPi
QSm/jYH0Jh5ZwAoax+Cpz49e7zcbtEjrIj2aHFm4XkBzrSwLEHM+cgWpsoisKL7l6GLQgqCrjpqP
Mqgre/MUGa4gbZlyYN2IR7jjlkIV1adlg1jhN58hWkpwkQKY1LcKRkETJhHEnpRrQ/RbhbyA8dfy
F3CHwxcIrjjiF1zU2H0UnVIzLgS5hdnxZlRoospp0WJv5MfjBpuExhHPkKNvTl4ZnpAyBSPgaxtV
WOdvGPmN3hgy/BHQvYw8qgvOcR5xpLdGv2Ce21FJu6g1j8QSivA0hZPZlMysS57uJ9720P6QNwBB
FsXz9kvp8T2t/FmUP+g2G2jzJxPwNTLtBgDDgCnHsf+HhbEf5VnVtN52vjLRthXbnDLqYqdSe9Fp
Hdr1YEjnhFkTmD1m9JvnJsGwdUUfLUBmz30gDMdX2QCF9kAxu8Ksgp+GdAfttcyUWnVf+Y0F3gdg
QT/XWkRO20o28+hTJ5+/rjSGVAL+V5G9+rhHE/j8mcnW8oqLRqBbvmT2CD0O5QH3ebkz0AJYp11S
Pb0v0ZHDrYjYXPxKIqSHIyHRZiK61kl2fk/ExbT+tuqAaVHNw7/+zo8ycviDiLm398EpViCYffAi
VmTbHbcLMaByBoe06kh85y5WF3Pkne4sXEm3j/g/XejJ+ld2NSfhEzE5ike1A4yUDBDKpXBeJYHw
GLjRz5PCc6NArtm0NxGcsOvL8Qzhg95YAwsY16MvPvAMNMSih07Wv9qr2xiFhJPWuJRO37FbYjAQ
RiQ49qDhUf0UjPnEEOY87tGmUu131Zul3jW3CQ4NKyfvkfg/YHcCCHcBjwEeuVao7EMbJniYGqmP
i2B1ZJQxBAHHYFaN/hq8k7W16Ot5s0TlUFcXrGiulGcJIcKgS7SkiiVNnFxffXINFOU6brSvmHaZ
XyxqWOM91OCkhqIaPVSZrxR2FTea2uzCFx9Dwu4cP0xVLNxVPA5uMiDXCz9VSBMKsYuZ3ZIWAft6
+lC2bx4J3nTkwXVIxNKMXb753AVsQoj5i3gE4k5N7jNRnqsvXOwvc+HIMNjjnCiDymcyLz2ZBQZ4
MFrSAl+Ubo7Lt97mC0oJFNOJY7KMyuK1ONUJKkVgQbuUg5aKuBiAT6rWpfZ2/Mb/NTAqDG+xKIqr
qbj2u0hfqti+erfN7P7DDpzIq+kLzbiEJt2MS94GtfmtzWGTUQm2g1+MZ34bHHwhazB1wc4HQVrv
5Oc1qFpdXhZGogUHby5UuZnu/fPN9cFJH107SNlGV2ugT1xQxFSSeCxqnKRVqFf+qRC6oCzxISHm
CsNXuVwQAUOkXFi1TJ11nc18G8NMCbHe9OI+sMbRwuNqpA5WvuAkfOS05c2oi3x1xBwnILYEBXJH
D4NP30PAzirbyGiAI2Im3xe9IgaJORl6IYXCDarmwJqGZk/67M676pb14l0pfmA4f1Ym0bvddkEj
uKzyMujp5UCp6SLWygcGax9nbA5gmCgbrvLeQc1XMKfo9HM5ujCvlmMaVYvNKSGt/dt4EyZb3xBp
rItqUn/Me12ZaCxFiSufg7JNb7x1CEPYByWD68NgvSuLNCP2CcVIKCPo5/0H6KUYd1YV3iQmAYwp
irzMXg3kRzkdlcbBDSiEwUJ2pVIGZSwmr1ukrKN/7U2hTRLZLGBt+0e+vvM8HWhrTPkBTB5ivft0
aSWAcQH7Q0mPL+LM09SBvT5NFdHMzi5cFMKFHxPOhFXKflzzu6Ll8LcrTIvBi4oXIigITmxskxz9
DjM7Pc3BttdoVzFpPXWHYcNWqITBUqg4QY46EHtHwvw6ytLgQW8bo9BvgAgcbZVI+Vjl+3Dug29o
BsuLbRtvPlUfYbySbbWYsx9H2QXLCEjS6Qg7fQloB+GHk6BPXm4R67RBuXzNJIlYiJDvdAHPQmTY
F9DGv6ahJe170Kb7D2DURmnR/BxzL0BQkLnZQ5q17Z7DCoPCO/WnBYN0XwtaCoGVhERRv9eb41df
0+7fFPTHnzl1dmVy3nlpXgMbU1gP1DL+GfK/794ul8a0b8xYlfh5MibiOG19etLA7WruH9xAWgi/
okgHDdscP1/jqwsrfxBJ4yhbxvEQKdgs+fd3L4jgrVvHsUVuk9Isp9cWD3gsZFC8Gi5dK/8KKxtb
ACNZYmOjOOFGbvTz7YpasepqU8k4IEtTNH3lZ+e3Js5LrnY80ycn/n/VB271fFc5tcrT+L86M1EB
EcjyIf7RxWyN28wMwLKNmCQ7mbcwFGN93wRgBE2ZFjjXZkEuVzP/M93sOtOKmn9DtO3qpHq9iruS
bCS4A70Th7B+ivHb1k2I7+uO/wvVRu4qNbn3Kfs6pC423fmf4Nvhzh2htAduxk1xj80TU2dLxCT/
lWUyvVWIxuK7QObWtGmXu2ap3HZLdB19+nGQT/zVwNYOVi3e2wHIiOeOZhc3n/4wHh6s0qQJYA0c
oz/ve+vbymhd9/8GWHDdvELFYZAu65Gw1ZNBUti+Lf/Id2ltwjVSsOOPB4jFY8HorVEWFHWDHZ6Z
Dg0CrlIh2GHfKTCycWWKP1cld/HHTQDJUsHssJdYcv1921UApvHUYI+xkPfyRrYMtzzaIt/04SLE
Suts4iu5rhUNE0cpJSzgf0iw32EuN6jIdeW+5retkZAjwHRgCHLSMZ17kji/63j3agHqrb7eHc37
XvrF1DC+ngpksel2LlAnTY1wVCd3/k+eRplbp/11seglPh4AbtwcmugHPwA34pMIns6KH8Ai8M+x
1BAVipimdqqs3c1YtuQh9EU5KzD23b/ZrVGTG/g6uEqTs7RRFe6OAf7pPdIEkmv58sXLnjfEpSDh
DOVVw83Q3Pyb/DKnwobEQYxA32H5L92YsGfs+swnTJ+B/wsvRxk7TUcMtYeNG89BthT1dvSMjVNL
pSNuGqWxaAbIKthUyF25AeAYuiorB7cgbDjgx9oRXCr68LWpAE0XvsC2pDe1Jz5B1Cxt60SVK78Y
yUAR3S7c8l8aZo+re2KwY81Mi8DOe/qUqhQa1yUZTVcMRGz8/xdG9Ew97YtuRzO/os4czgWekbBU
kNYm0iXVdXvCwg8PNs7Gk9BFdV5p76ZdYO40YP5MN1uicTE/TMLM0RzLI+BqOge+Tmm2taxkWfaA
8kptKptyQeGmke4fnVxbnlP75ku7S9QGwjYOX7TZuXJBoBOju8prILpfXewnSx4ZZwLH+UCaeDME
ODgwZIA08d9JEe3R3M5umR6Rr6oGuSDIEPDOS28KjSgw1hF7WemOJ7uoC5x6TPHopaViRXyqF2ZR
/SrketM4ekQ0TwRPecx72HD0I/1InSdcnO4Nm6mC9o5WGNCIBA37gCwvjVGq8n45HWTnFzz/ovog
L7pNFFtDIa8V1NjGo4TxtK5USlG9wxsBHUhoAf4IDCT5qNnNqbQHTMnSKEvBWVP7HHNrSqyWplnR
9rzN5FciqZu7Q7ztKMl7t1YVK/iBLpF78NKo53t0IA58t9CFos8KUFxhAqgbMBtiRikUQTsN9c/J
hU3Ef1zyy4ya2A2iovEW5G21B1VMx8mgBTARqiiXv25h3xQyhhWfFU/pDOJzXZoO/HYJAiOv5Cwn
1m2LiJc3QOW1CQrj/hSM6JIL2VpzbIJsNGkmv5lssOD8l88YSEok303xp0Xunb02C8LBMytYcEwd
Iv9C+UBVdqsQwORg45rCC+qO9nWxVYehRDokp5V47dXRohURsLQ4/DgCaoe/dnaswxSIoLWxkMrC
sAkAMRoWShJxpUHRxdZVeXgDDM1jFp7FQJmhpq8c2Nw82ex++Lr8+o8GYx9elPOVDtYJKlcSShhu
ST9tsnXG6rhe2oZ1mkro1vc1mWouCNcekxKGYoUbIsFx79jMGcXojs520fLw7RP6L0KsQ25g0X/B
g2yG+8P2kqaj3LantPNaGO6kzuUq7lzXCJy8IfbnA1+x2GnTLzgqb6PwYB26FLpegitTbY6TOu6a
h6rzY8RUkpQjOz1WLhPXZUVl0MVCtRLxn8+XMkv+NFT4Z/5i9gQaLopp2ZlJQVOOOMOZcenHOs7V
KfEwdaa1HYG0V0ceTh9Qzlq/ui5nzWsYa/jfris7pjj+uEGL3S7FoUXttafhDTYh3v5TzcXpuV2l
nC6P7Uj2U7dObuKAH2JpYm1ZTddqDE11Kt9MAdHvw+anq+8PEKRUQsIGs5pX8jWKS+gOEPfSDG+w
c7xTU1Z+go6l7ScW6Z73M4nYC3LazZU2J0h1ZZpePpRvafs8Q7i0djaTxQEfP0WnY5vpifJON9xV
C8zdJdTDo+fXIcMtsdIQ2Q+DTTlhRRywZRpdGt8RlFeIjwqfz4QfC7lAorAWiEg23HOTX3B6uW6r
I40kZ+xMPGHZyVPAKxpxlOFikwwqpV4b14X73inaMRs/pqm9rBMLehIeG+Ob5nJOVPZ8vnPVgZxm
oY2nkytxYaunx2pZ99OjyKepshU0iwbX47tCT/bvqMQ3UKoHW5oSS+VykjxojJbdhtHmWIuBYKCT
ZGRbXjegHXibhMX7nIdPWKKoCDgKNRVVWDBMY3c80bM4ulEKU8+a0xdU2rClIl/5PNfXOhoSoufd
U8KFd1gYt4Ee38LEOpQ+WkHkOFa3euj00rbT/O/v75A+rKDu5IYpX+SpXnQIKV9+wadQMijMs9kG
FtRpgxcZNbPuNRKqNC1kMPA+NaDS8YbvG2xyOuqVIP50cTiQi6gWL/w1lXIh6I1n7bFKmQ8RmvZw
yNDkb7MheS8rmXf4UCVAlRpwn0s3qBXek5khKqbOa5ymsuuSFwc4Tc794T36sHhZPI3QMPaxTPfT
sM5R1LvUEPwvKhCOycAzWgJbqYyq0GlQ4cs7Ol06fZmG3t2OsR2f8w6DTAC8VJFg6llQproHorHZ
A5jdWl+xbwqut4wSmHJEKhGmHVz1emc6Dzn1R02xVhPQh/vZNy1noKM8LYOWoFOHJNkfrvrvWXPM
UdxdbkYBnaAnELQJpTtvJ7H+829Jp8/WF63PBeuJpcAa/C2JjqU+//1rgdQPCV1k9qbzpBCgWvGe
QpZ47BH9AXI9jchkf03HPtdMsjSRc8W299TO9mD+ym5bKIxmsdWnN9cnRCNbIPW63cgdFp0bPDHv
sQNn+a5+D2cvt8BVrSkC/ZKblTBEuLeLAuBbgrVAG/IS4BQo3VbOu8FYOD40XoqTP7lP1yUajcpe
hzi+2R0ey7VveA239lglnEpi6eBi60cpWboOpZLf29IhXN72Ai04oDg9br3k98J4CG9aYia91YTM
o7qpl4dh6Q8HCOcdqG2dlfd/UgbNR84lpU8euG5ZONSj/Y/0P5R6UFNYdPmVs8Qp/ig+8iT9epYf
RwMmv/nwo9YnPasZtl4Sxb6AGfC0FcZVySXw0J8OyQRmr/IJSPE/PYyueRCxckkWJnCPAnsS5Z5v
2iIHzIuAJGOpnFTlRAakLcgOQbHwAM5YHB1/cGJ/BedNn2QHedd5RC+HCFpeYYmqylnT+PjDHb8a
c94CppPj1M7999lbHacEBqE8zlU/U4hU2oBEWy2mH0h6owSoTbdslyjFYl79Byf6mgKLC3txiRsG
RtOdFs0n1QeqNvitw3CtOVHEUu4R229vASHV3jWtTELyCwQPtN3I/u5coq3kXZUf2NH1LPgBuckL
QU6e725elZRdZwUZU8AgDhJywO+2X3jEsRpnlLmSU/FLWH4fh8+/np7mVi0AXhA0CZbpkWoq5HEM
btttHsqXB2efoaD00Zf/4S8/pG0CFmdXKVc7EK0Tg8W43nraf1OzcQ4hkSEXlPCOkHRGLaYUogdk
ME4H+NjFPobPVSDHfchC/rrY2cEk3pqx7ZEwSMyyQrxSYRiD5vB3eRhcm5AOjCa5R3HNM/INcgz6
9nWaiE6uJTWqGrEc8/JqxUmmadwI4ATaUq4EDcFaQ+0f4uPtDA9xqTFXGzAe3/7htZs0JshSVrsU
JR5qrn/dUmrugEF+3lnSL4IuZTVaAaI3hpERrbdciVezXH4lsAcLq45hEfSOA+W+Ll+6o3EEkk3G
AqJ+IxORbB91elrh83UdUemi4uGThdgIz/hQrduY6XkVHqo6wxlbH8/5vqwi9P3MzD70qwNnY1tJ
eGXEMO37t70cjQJ6Y1D7JXFp2fK51HWXO5TcRz0YOGzBnFgP3EDjLcHzMR9Hi5o4Xgd5bKeWOM0C
+Vk4CMBAD6kc6dgSuSeKbX/YsOR6wJlI4vUwDz/FwFGKb8c/ZwnTAeeyyWWc8BHeIu/otYrLPaLg
sMvBrWgaSW20TX/yK4KM/O7ZGpo5Q7+toFEBmnR+Ze5NVjKSWqHrBS7MzfaFHYZ+dUyL/J6IO4E2
H6ffV0uFUW9RHxPB77ruYQp+Jla0C3k4jQNddRXeT2pVd5v2sB6M6d/XO6iFZoBwVfxDYvxMmiHl
ZynbZnrRLsrKqjUjB3ItlbHVkUbvLQWqIZ1V2UDnk1pznmHYzSgPw3XGYvhFGwXo5/kPCff1/KEV
oFGLELg5j8EtKKw79JcCU0iuAYxUgDKyBwNxKP65QEQ9Ydt6OXY61YhGdfTNcN33QGeIutwljmYQ
g/bqzCrDAsBl0sD+a1YsyiEBe2YP41JyEhw3D7dpDyLlxcngBlUZG0pevJxUxbJvsgLEbOSaXqkM
X6Ifp+Os+5Jx3I0fQphXpfBUGcvGXBHlNUAUuZyw3KgJncJ8ouHMO/L+ipdzCok8T5Mv97yPxlK8
JVryaP60/+Naa1n0CXfbJxgHLa9pvUQDLFhzEjn44X+swScUolioa0S3Spe2Bp4mympo/P1wqO9C
GIVhQLk24s349vcdebc78wTV09B1Di6xwYs=
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
