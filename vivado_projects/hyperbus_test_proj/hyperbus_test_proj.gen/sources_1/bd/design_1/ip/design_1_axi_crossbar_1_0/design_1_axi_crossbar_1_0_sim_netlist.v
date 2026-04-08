// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Mar 30 23:24:26 2026
// Host        : YouBing running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_crossbar_1_0 -prefix
//               design_1_axi_crossbar_1_0_ design_1_axi_crossbar_1_0_sim_netlist.v
// Design      : design_1_axi_crossbar_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcsu35p-sbvb625-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_addr_arbiter
   (SR,
    p_0_out,
    p_1_in,
    match,
    match_0,
    \gen_arbiter.m_target_hot_i_reg[1]_0 ,
    Q,
    s_axi_araddr_58_sp_1,
    s_axi_araddr_57_sp_1,
    D,
    E,
    \gen_axi.s_axi_rid_i ,
    \gen_arbiter.s_ready_i_reg[1]_0 ,
    m_axi_arvalid,
    \gen_axi.read_cs_reg[0] ,
    \gen_arbiter.m_mesg_i_reg[62]_0 ,
    \gen_arbiter.m_mesg_i_reg[0]_0 ,
    aclk,
    mi_arready,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_master_slots[1].r_issuing_cnt_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_arbiter.any_grant_reg_1 ,
    \gen_arbiter.any_grant_reg_2 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_0 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_1 ,
    s_axi_araddr,
    aresetn_d,
    \gen_master_slots[0].r_issuing_cnt_reg[1] ,
    m_axi_arready,
    \gen_master_slots[0].r_issuing_cnt_reg[1]_0 ,
    mi_rvalid_1,
    s_axi_arvalid,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen,
    mi_rid_1,
    \gen_arbiter.qual_reg_reg[1]_0 );
  output [0:0]SR;
  output [1:0]p_0_out;
  output p_1_in;
  output match;
  output match_0;
  output \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  output [0:0]Q;
  output s_axi_araddr_58_sp_1;
  output s_axi_araddr_57_sp_1;
  output [0:0]D;
  output [0:0]E;
  output [0:0]\gen_axi.s_axi_rid_i ;
  output [1:0]\gen_arbiter.s_ready_i_reg[1]_0 ;
  output [0:0]m_axi_arvalid;
  output \gen_axi.read_cs_reg[0] ;
  output [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  output \gen_arbiter.m_mesg_i_reg[0]_0 ;
  input aclk;
  input [0:0]mi_arready;
  input \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_arbiter.any_grant_reg_1 ;
  input \gen_arbiter.any_grant_reg_2 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  input [63:0]s_axi_araddr;
  input aresetn_d;
  input \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  input [0:0]m_axi_arready;
  input [1:0]\gen_master_slots[0].r_issuing_cnt_reg[1]_0 ;
  input mi_rvalid_1;
  input [1:0]s_axi_arvalid;
  input [7:0]s_axi_arqos;
  input [7:0]s_axi_arcache;
  input [3:0]s_axi_arburst;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arlock;
  input [5:0]s_axi_arsize;
  input [15:0]s_axi_arlen;
  input mi_rid_1;
  input [1:0]\gen_arbiter.qual_reg_reg[1]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]aa_mi_artarget_hot;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.any_grant_i_1__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.any_grant_reg_1 ;
  wire \gen_arbiter.any_grant_reg_2 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.last_rr_hot[0]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  wire \gen_arbiter.m_grant_enc_i_reg_n_0_[0] ;
  wire \gen_arbiter.m_mesg_i_reg[0]_0 ;
  wire [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  wire \gen_arbiter.m_valid_i_inv_i_1__0_n_0 ;
  wire [1:0]\gen_arbiter.qual_reg_reg[1]_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire [1:0]\gen_arbiter.s_ready_i_reg[1]_0 ;
  wire \gen_axi.read_cs_reg[0] ;
  wire [0:0]\gen_axi.s_axi_rid_i ;
  wire \gen_axi.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  wire [1:0]\gen_master_slots[0].r_issuing_cnt_reg[1]_0 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_single_thread.active_target_hot[0]_i_2__0_n_0 ;
  wire [0:0]grant_hot;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_arvalid;
  wire [62:1]m_mesg_mux;
  wire [1:0]m_target_hot_mux;
  wire match;
  wire match_0;
  wire [0:0]mi_arready;
  wire mi_rid_1;
  wire mi_rvalid_1;
  wire [1:0]p_0_out;
  wire p_1_in;
  wire p_2_in;
  wire [1:0]qual_reg;
  wire [63:0]s_axi_araddr;
  wire s_axi_araddr_57_sn_1;
  wire s_axi_araddr_58_sn_1;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;

  assign s_axi_araddr_57_sp_1 = s_axi_araddr_57_sn_1;
  assign s_axi_araddr_58_sp_1 = s_axi_araddr_58_sn_1;
  LUT6 #(
    .INIT(64'h00000000FFF4FF00)) 
    \gen_arbiter.any_grant_i_1__0 
       (.I0(\gen_arbiter.any_grant_reg_0 ),
        .I1(\gen_arbiter.any_grant_reg_1 ),
        .I2(\gen_arbiter.any_grant_reg_2 ),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(p_1_in),
        .I5(\gen_arbiter.grant_hot[1]_i_1_n_0 ),
        .O(\gen_arbiter.any_grant_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_arbiter.any_grant_i_7 
       (.I0(s_axi_araddr[57]),
        .I1(s_axi_araddr[56]),
        .I2(s_axi_araddr[55]),
        .O(s_axi_araddr_57_sn_1));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1__0_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F080808FFFFFFFF)) 
    \gen_arbiter.grant_hot[1]_i_1 
       (.I0(aa_mi_artarget_hot),
        .I1(m_axi_arready),
        .I2(p_1_in),
        .I3(Q),
        .I4(mi_arready),
        .I5(aresetn_d),
        .O(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out[0]),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out[1]),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBF0000000000)) 
    \gen_arbiter.last_rr_hot[0]_i_1__0 
       (.I0(\gen_arbiter.s_ready_i_reg[1]_0 [1]),
        .I1(s_axi_arvalid[1]),
        .I2(qual_reg[1]),
        .I3(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I4(p_2_in),
        .I5(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .O(p_0_out[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_arbiter.last_rr_hot[0]_i_2 
       (.I0(qual_reg[0]),
        .I1(s_axi_arvalid[0]),
        .I2(\gen_arbiter.s_ready_i_reg[1]_0 [0]),
        .O(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out[0]),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out[1]),
        .Q(p_2_in),
        .S(SR));
  LUT6 #(
    .INIT(64'h0020002022220020)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(p_1_in),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.m_grant_enc_i_reg[0]_0 ),
        .I3(\gen_arbiter.m_grant_enc_i_reg[0]_1 ),
        .I4(\gen_arbiter.any_grant_reg_1 ),
        .I5(\gen_arbiter.any_grant_reg_0 ),
        .O(grant_hot));
  LUT6 #(
    .INIT(64'h0000FFFF00008AAA)) 
    \gen_arbiter.m_grant_enc_i[0]_i_2 
       (.I0(p_2_in),
        .I1(\gen_arbiter.s_ready_i_reg[1]_0 [0]),
        .I2(s_axi_arvalid[0]),
        .I3(qual_reg[0]),
        .I4(\gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(p_0_out[1]));
  LUT3 #(
    .INIT(8'hF7)) 
    \gen_arbiter.m_grant_enc_i[0]_i_7 
       (.I0(qual_reg[1]),
        .I1(s_axi_arvalid[1]),
        .I2(\gen_arbiter.s_ready_i_reg[1]_0 [1]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_7_n_0 ));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out[1]),
        .Q(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[10]_i_1 
       (.I0(s_axi_araddr[41]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[9]),
        .O(m_mesg_mux[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[11]_i_1 
       (.I0(s_axi_araddr[42]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[10]),
        .O(m_mesg_mux[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[12]_i_1 
       (.I0(s_axi_araddr[43]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[11]),
        .O(m_mesg_mux[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[13]_i_1 
       (.I0(s_axi_araddr[44]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[12]),
        .O(m_mesg_mux[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[14]_i_1 
       (.I0(s_axi_araddr[45]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[13]),
        .O(m_mesg_mux[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[15]_i_1 
       (.I0(s_axi_araddr[46]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[14]),
        .O(m_mesg_mux[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[16]_i_1 
       (.I0(s_axi_araddr[47]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[15]),
        .O(m_mesg_mux[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[17]_i_1 
       (.I0(s_axi_araddr[48]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[16]),
        .O(m_mesg_mux[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[18]_i_1 
       (.I0(s_axi_araddr[49]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[17]),
        .O(m_mesg_mux[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[19]_i_1 
       (.I0(s_axi_araddr[50]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[18]),
        .O(m_mesg_mux[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[1]_i_1 
       (.I0(s_axi_araddr[32]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[0]),
        .O(m_mesg_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[20]_i_1 
       (.I0(s_axi_araddr[51]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[19]),
        .O(m_mesg_mux[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[21]_i_1 
       (.I0(s_axi_araddr[52]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[20]),
        .O(m_mesg_mux[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[22]_i_1 
       (.I0(s_axi_araddr[53]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[21]),
        .O(m_mesg_mux[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[23]_i_1 
       (.I0(s_axi_araddr[54]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[22]),
        .O(m_mesg_mux[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[24]_i_1 
       (.I0(s_axi_araddr[55]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[23]),
        .O(m_mesg_mux[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[25]_i_1 
       (.I0(s_axi_araddr[56]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[24]),
        .O(m_mesg_mux[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[26]_i_1 
       (.I0(s_axi_araddr[57]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[25]),
        .O(m_mesg_mux[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[27]_i_1 
       (.I0(s_axi_araddr[58]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[26]),
        .O(m_mesg_mux[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[28]_i_1 
       (.I0(s_axi_araddr[59]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[27]),
        .O(m_mesg_mux[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[29]_i_1 
       (.I0(s_axi_araddr[60]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[28]),
        .O(m_mesg_mux[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[2]_i_1 
       (.I0(s_axi_araddr[33]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[1]),
        .O(m_mesg_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[30]_i_1 
       (.I0(s_axi_araddr[61]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[29]),
        .O(m_mesg_mux[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[31]_i_1 
       (.I0(s_axi_araddr[62]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[30]),
        .O(m_mesg_mux[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[32]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[32]_i_1__0 
       (.I0(s_axi_araddr[63]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[31]),
        .O(m_mesg_mux[32]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[33]_i_1 
       (.I0(s_axi_arlen[8]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[0]),
        .O(m_mesg_mux[33]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[34]_i_1 
       (.I0(s_axi_arlen[9]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[1]),
        .O(m_mesg_mux[34]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[35]_i_1 
       (.I0(s_axi_arlen[10]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[2]),
        .O(m_mesg_mux[35]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[36]_i_1 
       (.I0(s_axi_arlen[11]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[3]),
        .O(m_mesg_mux[36]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[37]_i_1 
       (.I0(s_axi_arlen[12]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[4]),
        .O(m_mesg_mux[37]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[38]_i_1 
       (.I0(s_axi_arlen[13]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[5]),
        .O(m_mesg_mux[38]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[39]_i_1 
       (.I0(s_axi_arlen[14]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[6]),
        .O(m_mesg_mux[39]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[3]_i_1 
       (.I0(s_axi_araddr[34]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[2]),
        .O(m_mesg_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[40]_i_1 
       (.I0(s_axi_arlen[15]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[7]),
        .O(m_mesg_mux[40]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[41]_i_1 
       (.I0(s_axi_arsize[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[0]),
        .O(m_mesg_mux[41]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[42]_i_1 
       (.I0(s_axi_arsize[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[1]),
        .O(m_mesg_mux[42]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[43]_i_1 
       (.I0(s_axi_arsize[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[2]),
        .O(m_mesg_mux[43]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[44]_i_1 
       (.I0(s_axi_arlock[1]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlock[0]),
        .O(m_mesg_mux[44]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[46]_i_1 
       (.I0(s_axi_arprot[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[0]),
        .O(m_mesg_mux[46]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[47]_i_1 
       (.I0(s_axi_arprot[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[1]),
        .O(m_mesg_mux[47]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[48]_i_1 
       (.I0(s_axi_arprot[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[2]),
        .O(m_mesg_mux[48]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[4]_i_1 
       (.I0(s_axi_araddr[35]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[3]),
        .O(m_mesg_mux[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[53]_i_1 
       (.I0(s_axi_arburst[2]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arburst[0]),
        .O(m_mesg_mux[53]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[54]_i_1 
       (.I0(s_axi_arburst[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arburst[1]),
        .O(m_mesg_mux[54]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[55]_i_1 
       (.I0(s_axi_arcache[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[0]),
        .O(m_mesg_mux[55]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[56]_i_1 
       (.I0(s_axi_arcache[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[1]),
        .O(m_mesg_mux[56]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[57]_i_1 
       (.I0(s_axi_arcache[6]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[2]),
        .O(m_mesg_mux[57]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[58]_i_1 
       (.I0(s_axi_arcache[7]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[3]),
        .O(m_mesg_mux[58]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[59]_i_1 
       (.I0(s_axi_arqos[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[0]),
        .O(m_mesg_mux[59]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[5]_i_1 
       (.I0(s_axi_araddr[36]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[4]),
        .O(m_mesg_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[60]_i_1 
       (.I0(s_axi_arqos[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[1]),
        .O(m_mesg_mux[60]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[61]_i_1 
       (.I0(s_axi_arqos[6]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[2]),
        .O(m_mesg_mux[61]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[62]_i_1 
       (.I0(s_axi_arqos[7]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[3]),
        .O(m_mesg_mux[62]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[6]_i_1 
       (.I0(s_axi_araddr[37]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[5]),
        .O(m_mesg_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[7]_i_1 
       (.I0(s_axi_araddr[38]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[6]),
        .O(m_mesg_mux[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[8]_i_1 
       (.I0(s_axi_araddr[39]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[7]),
        .O(m_mesg_mux[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[9]_i_1 
       (.I0(s_axi_araddr[40]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[8]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[1]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[46] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[46]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[53] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[53]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_target_hot_i[0]_i_1 
       (.I0(match),
        .I1(p_0_out[1]),
        .I2(match_0),
        .O(m_target_hot_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gen_arbiter.m_target_hot_i[1]_i_1 
       (.I0(match),
        .I1(p_0_out[1]),
        .I2(match_0),
        .O(m_target_hot_mux[1]));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(aa_mi_artarget_hot),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000F888FFFFF888)) 
    \gen_arbiter.m_valid_i_inv_i_1__0 
       (.I0(aa_mi_artarget_hot),
        .I1(m_axi_arready),
        .I2(Q),
        .I3(mi_arready),
        .I4(p_1_in),
        .I5(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.m_valid_i_inv_i_1__0_n_0 ));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \gen_arbiter.m_valid_i_reg_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_inv_i_1__0_n_0 ),
        .Q(p_1_in),
        .S(SR));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[1]_0 [0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[1]_0 [1]),
        .Q(qual_reg[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(aresetn_d),
        .I1(p_1_in),
        .I2(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .Q(\gen_arbiter.s_ready_i_reg[1]_0 [0]),
        .R(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .Q(\gen_arbiter.s_ready_i_reg[1]_0 [1]),
        .R(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \gen_axi.s_axi_arready_i_i_2 
       (.I0(p_1_in),
        .I1(mi_arready),
        .I2(Q),
        .I3(mi_rvalid_1),
        .O(\gen_axi.s_axi_rid_i ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \gen_axi.s_axi_rid_i[0]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[62]_0 [0]),
        .I1(p_1_in),
        .I2(mi_arready),
        .I3(Q),
        .I4(mi_rvalid_1),
        .I5(mi_rid_1),
        .O(\gen_arbiter.m_mesg_i_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_axi.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.s_axi_rlast_i_i_4_n_0 ),
        .I1(mi_rvalid_1),
        .I2(\gen_arbiter.m_mesg_i_reg[62]_0 [33]),
        .I3(\gen_arbiter.m_mesg_i_reg[62]_0 [34]),
        .O(\gen_axi.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.s_axi_rlast_i_i_4 
       (.I0(\gen_arbiter.m_mesg_i_reg[62]_0 [35]),
        .I1(\gen_arbiter.m_mesg_i_reg[62]_0 [36]),
        .I2(\gen_arbiter.m_mesg_i_reg[62]_0 [37]),
        .I3(\gen_arbiter.m_mesg_i_reg[62]_0 [38]),
        .I4(\gen_arbiter.m_mesg_i_reg[62]_0 [40]),
        .I5(\gen_arbiter.m_mesg_i_reg[62]_0 [39]),
        .O(\gen_axi.s_axi_rlast_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h54AA545454545454)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[1] ),
        .I1(\gen_master_slots[0].r_issuing_cnt_reg[1]_0 [1]),
        .I2(\gen_master_slots[0].r_issuing_cnt_reg[1]_0 [0]),
        .I3(p_1_in),
        .I4(m_axi_arready),
        .I5(aa_mi_artarget_hot),
        .O(E));
  LUT6 #(
    .INIT(64'hFF7F00800080FF7F)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_2 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[1] ),
        .I1(aa_mi_artarget_hot),
        .I2(m_axi_arready),
        .I3(p_1_in),
        .I4(\gen_master_slots[0].r_issuing_cnt_reg[1]_0 [0]),
        .I5(\gen_master_slots[0].r_issuing_cnt_reg[1]_0 [1]),
        .O(D));
  LUT5 #(
    .INIT(32'h08F70008)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_1 
       (.I0(Q),
        .I1(mi_arready),
        .I2(p_1_in),
        .I3(\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .I4(\gen_master_slots[1].r_issuing_cnt_reg ),
        .O(\gen_arbiter.m_target_hot_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(s_axi_araddr_58_sn_1),
        .I1(s_axi_araddr[55]),
        .I2(s_axi_araddr[56]),
        .I3(s_axi_araddr[57]),
        .O(match));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_single_thread.active_target_hot[0]_i_1__0 
       (.I0(\gen_single_thread.active_target_hot[0]_i_2__0_n_0 ),
        .I1(s_axi_araddr[23]),
        .I2(s_axi_araddr[24]),
        .I3(s_axi_araddr[25]),
        .O(match_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_single_thread.active_target_hot[0]_i_2 
       (.I0(s_axi_araddr[58]),
        .I1(s_axi_araddr[59]),
        .I2(s_axi_araddr[60]),
        .I3(s_axi_araddr[61]),
        .I4(s_axi_araddr[62]),
        .I5(s_axi_araddr[63]),
        .O(s_axi_araddr_58_sn_1));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_single_thread.active_target_hot[0]_i_2__0 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_araddr[27]),
        .I2(s_axi_araddr[28]),
        .I3(s_axi_araddr[29]),
        .I4(s_axi_araddr[30]),
        .I5(s_axi_araddr[31]),
        .O(\gen_single_thread.active_target_hot[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(p_1_in),
        .I1(aa_mi_artarget_hot),
        .O(m_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_38_addr_arbiter" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_addr_arbiter_0
   (ss_aa_awready,
    p_1_in,
    \m_ready_d_reg[1] ,
    \gen_arbiter.m_target_hot_i_reg[1]_0 ,
    match,
    \FSM_onehot_state_reg[1] ,
    E,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \gen_arbiter.m_target_hot_i_reg[0]_0 ,
    \FSM_onehot_state_reg[1]_2 ,
    \m_ready_d_reg[0] ,
    \s_axi_bready[0] ,
    \gen_arbiter.m_target_hot_i_reg[0]_1 ,
    \m_ready_d_reg[0]_0 ,
    \gen_arbiter.m_valid_i_reg_inv_0 ,
    \gen_arbiter.m_target_hot_i_reg[1]_1 ,
    m_axi_awvalid,
    \gen_arbiter.s_ready_i_reg[0]_0 ,
    \gen_arbiter.m_mesg_i_reg[62]_0 ,
    SR,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    aclk,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    Q,
    mi_awready,
    \gen_master_slots[1].w_issuing_cnt_reg ,
    \gen_arbiter.grant_hot_reg[0]_0 ,
    \gen_arbiter.grant_hot_reg[0]_1 ,
    D,
    \gen_arbiter.last_rr_hot_reg[0]_0 ,
    s_axi_awvalid,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    m_valid_i_reg,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    m_valid_i_reg_0,
    s_axi_bready,
    \gen_single_thread.active_target_hot ,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ,
    aresetn_d,
    m_axi_awready,
    \gen_arbiter.m_valid_i_reg_inv_1 ,
    \gen_arbiter.m_target_hot_i_reg[1]_2 );
  output [0:0]ss_aa_awready;
  output p_1_in;
  output \m_ready_d_reg[1] ;
  output [1:0]\gen_arbiter.m_target_hot_i_reg[1]_0 ;
  output match;
  output [1:0]\FSM_onehot_state_reg[1] ;
  output [0:0]E;
  output \FSM_onehot_state_reg[1]_0 ;
  output [1:0]\FSM_onehot_state_reg[1]_1 ;
  output [0:0]\gen_arbiter.m_target_hot_i_reg[0]_0 ;
  output \FSM_onehot_state_reg[1]_2 ;
  output \m_ready_d_reg[0] ;
  output [0:0]\s_axi_bready[0] ;
  output \gen_arbiter.m_target_hot_i_reg[0]_1 ;
  output \m_ready_d_reg[0]_0 ;
  output [1:0]\gen_arbiter.m_valid_i_reg_inv_0 ;
  output \gen_arbiter.m_target_hot_i_reg[1]_1 ;
  output [0:0]m_axi_awvalid;
  output [0:0]\gen_arbiter.s_ready_i_reg[0]_0 ;
  output [56:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  input [0:0]SR;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input aclk;
  input \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  input [1:0]Q;
  input [0:0]mi_awready;
  input [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  input \gen_arbiter.grant_hot_reg[0]_0 ;
  input \gen_arbiter.grant_hot_reg[0]_1 ;
  input [56:0]D;
  input [0:0]\gen_arbiter.last_rr_hot_reg[0]_0 ;
  input [0:0]s_axi_awvalid;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input m_valid_i_reg;
  input [0:0]\FSM_onehot_state_reg[0]_1 ;
  input \FSM_onehot_state_reg[0]_2 ;
  input m_valid_i_reg_0;
  input [0:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  input aresetn_d;
  input [0:0]m_axi_awready;
  input \gen_arbiter.m_valid_i_reg_inv_1 ;
  input [0:0]\gen_arbiter.m_target_hot_i_reg[1]_2 ;

  wire [56:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire [1:0]\FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [1:0]\FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[1]_2 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_i_2__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_2_n_0 ;
  wire \gen_arbiter.grant_hot_reg[0]_0 ;
  wire \gen_arbiter.grant_hot_reg[0]_1 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire [0:0]\gen_arbiter.last_rr_hot_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire [56:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  wire [0:0]\gen_arbiter.m_target_hot_i_reg[0]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[0]_1 ;
  wire [1:0]\gen_arbiter.m_target_hot_i_reg[1]_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_1 ;
  wire [0:0]\gen_arbiter.m_target_hot_i_reg[1]_2 ;
  wire \gen_arbiter.m_valid_i_inv_i_1_n_0 ;
  wire [1:0]\gen_arbiter.m_valid_i_reg_inv_0 ;
  wire \gen_arbiter.m_valid_i_reg_inv_1 ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire [0:0]\gen_arbiter.s_ready_i_reg[0]_0 ;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  wire [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot[0]_i_2__1_n_0 ;
  wire [0:0]grant_hot;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[1] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire match;
  wire [0:0]mi_awready;
  wire [0:0]p_0_out;
  wire p_1_in;
  wire p_2_in;
  wire [0:0]qual_reg;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]\s_axi_bready[0] ;
  wire [0:0]ss_aa_awready;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_3 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I1(mi_awready),
        .I2(p_1_in),
        .I3(Q[1]),
        .O(\gen_arbiter.m_target_hot_i_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0200AAAA)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0200AAAA)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .O(\FSM_onehot_state_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA20000)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I2(p_1_in),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg[0] ),
        .I5(m_valid_i_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA20000)) 
    \FSM_onehot_state[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I2(p_1_in),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg[0]_1 ),
        .I5(m_valid_i_reg_0),
        .O(\gen_arbiter.m_target_hot_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \FSM_onehot_state[2]_i_2__0 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hA8AA0000)) 
    \FSM_onehot_state[2]_i_2__1 
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .O(\FSM_onehot_state_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'h00000000FF08FF00)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(p_0_out),
        .I1(\gen_arbiter.grant_hot_reg[0]_0 ),
        .I2(\gen_arbiter.grant_hot_reg[0]_1 ),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(p_1_in),
        .I5(\gen_arbiter.any_grant_i_2__0_n_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_arbiter.any_grant_i_2__0 
       (.I0(p_1_in),
        .I1(\gen_arbiter.m_valid_i_reg_inv_1 ),
        .I2(aresetn_d),
        .O(\gen_arbiter.any_grant_i_2__0_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAEAAAAA)) 
    \gen_arbiter.grant_hot[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(p_0_out),
        .I2(\gen_arbiter.grant_hot_reg[0]_0 ),
        .I3(\gen_arbiter.grant_hot_reg[0]_1 ),
        .I4(\gen_arbiter.grant_hot[0]_i_2_n_0 ),
        .I5(\gen_arbiter.any_grant_i_2__0_n_0 ),
        .O(\gen_arbiter.grant_hot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \gen_arbiter.grant_hot[0]_i_2 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(p_1_in),
        .O(\gen_arbiter.grant_hot[0]_i_2_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I1(ss_aa_awready),
        .I2(qual_reg),
        .I3(s_axi_awvalid),
        .I4(p_2_in),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(p_0_out));
  LUT5 #(
    .INIT(32'h02000000)) 
    \gen_arbiter.last_rr_hot[1]_i_1 
       (.I0(p_1_in),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.grant_hot_reg[0]_1 ),
        .I3(\gen_arbiter.grant_hot_reg[0]_0 ),
        .I4(p_0_out),
        .O(grant_hot));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(p_0_out),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(1'b0),
        .Q(p_2_in),
        .S(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [9]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[0]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[1]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[46] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[46]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[53] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[50]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[51]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[52]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[53]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(D[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[62]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(match),
        .Q(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.m_target_hot_i_reg[1]_2 ),
        .Q(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h2E)) 
    \gen_arbiter.m_valid_i_inv_i_1 
       (.I0(\gen_arbiter.m_valid_i_reg_inv_1 ),
        .I1(p_1_in),
        .I2(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.m_valid_i_inv_i_1_n_0 ));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \gen_arbiter.m_valid_i_reg_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_inv_i_1_n_0 ),
        .Q(p_1_in),
        .S(SR));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[0]_0 ),
        .Q(qual_reg),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.s_ready_i[0]_i_1 
       (.I0(aresetn_d),
        .I1(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(ss_aa_awready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA6AAA6AAA6AAA2A)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(\gen_arbiter.m_target_hot_i_reg[0]_1 ),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(\gen_master_slots[0].w_issuing_cnt_reg[1] ),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[1]_0 [0]),
        .I5(\gen_master_slots[0].w_issuing_cnt_reg[1]_0 [1]),
        .O(\s_axi_bready[0] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_3 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I1(m_axi_awready),
        .I2(p_1_in),
        .I3(Q[1]),
        .O(\gen_arbiter.m_target_hot_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h5655555501000000)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .I1(Q[1]),
        .I2(p_1_in),
        .I3(mi_awready),
        .I4(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I5(\gen_master_slots[1].w_issuing_cnt_reg ),
        .O(\m_ready_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \gen_rep[0].fifoaddr[1]_i_3 
       (.I0(Q[0]),
        .I1(p_1_in),
        .I2(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .O(\m_ready_d_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \gen_rep[0].fifoaddr[1]_i_3__0 
       (.I0(Q[0]),
        .I1(p_1_in),
        .I2(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .O(\m_ready_d_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_single_thread.active_target_hot[0]_i_1__1 
       (.I0(\gen_single_thread.active_target_hot[0]_i_2__1_n_0 ),
        .I1(D[23]),
        .I2(D[24]),
        .I3(D[25]),
        .O(match));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_single_thread.active_target_hot[0]_i_2__1 
       (.I0(D[26]),
        .I1(D[27]),
        .I2(D[28]),
        .I3(D[29]),
        .I4(D[30]),
        .I5(D[31]),
        .O(\gen_single_thread.active_target_hot[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I1(p_1_in),
        .I2(Q[1]),
        .O(m_axi_awvalid));
  LUT4 #(
    .INIT(16'hFF0E)) 
    \m_ready_d[0]_i_1 
       (.I0(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I1(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I2(p_1_in),
        .I3(Q[0]),
        .O(\gen_arbiter.m_valid_i_reg_inv_0 [0]));
  LUT3 #(
    .INIT(8'hF8)) 
    \m_ready_d[0]_i_1__0 
       (.I0(ss_aa_awready),
        .I1(s_axi_awvalid),
        .I2(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .O(\gen_arbiter.s_ready_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55404040)) 
    \m_ready_d[1]_i_2__0 
       (.I0(p_1_in),
        .I1(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I2(m_axi_awready),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I4(mi_awready),
        .I5(Q[1]),
        .O(\gen_arbiter.m_valid_i_reg_inv_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    m_valid_i_i_2
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [1]),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    m_valid_i_i_2__0
       (.I0(\FSM_onehot_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(\gen_arbiter.m_target_hot_i_reg[1]_0 [0]),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .O(\FSM_onehot_state_reg[1]_2 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "spartanuplus" *) (* C_M_AXI_ADDR_WIDTH = "23" *) (* C_M_AXI_BASE_ADDR = "64'b0000000000000000000000000000000010000000000000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "3" *) (* C_M_AXI_READ_ISSUING = "2" *) (* C_M_AXI_SECURE = "0" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "1" *) (* C_M_AXI_WRITE_ISSUING = "2" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "1" *) (* C_NUM_SLAVE_SLOTS = "2" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
(* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ADDR_DECODE = "1" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_FAMILY = "rtl" *) (* P_INCR = "2'b01" *) (* P_LEN = "8" *) 
(* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "32'b00000000000000000000000000000000" *) (* P_M_AXI_SUPPORTS_READ = "1'b1" *) 
(* P_M_AXI_SUPPORTS_WRITE = "1'b1" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) (* P_RANGE_CHECK = "1" *) 
(* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_SUPPORTS_READ = "2'b11" *) 
(* P_S_AXI_SUPPORTS_WRITE = "2'b01" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [15:0]s_axi_awlen;
  input [5:0]s_axi_awsize;
  input [3:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [7:0]s_axi_awcache;
  input [5:0]s_axi_awprot;
  input [7:0]s_axi_awqos;
  input [1:0]s_axi_awuser;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [1:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [1:0]s_axi_wlast;
  input [1:0]s_axi_wuser;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bid;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_buser;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [1:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [15:0]s_axi_arlen;
  input [5:0]s_axi_arsize;
  input [3:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [7:0]s_axi_arcache;
  input [5:0]s_axi_arprot;
  input [7:0]s_axi_arqos;
  input [1:0]s_axi_aruser;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rlast;
  output [1:0]s_axi_ruser;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output [0:0]m_axi_awvalid;
  input [0:0]m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output [0:0]m_axi_wuser;
  output [0:0]m_axi_wvalid;
  input [0:0]m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input [0:0]m_axi_bvalid;
  output [0:0]m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output [0:0]m_axi_arvalid;
  input [0:0]m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_rlast;
  input [0:0]m_axi_ruser;
  input [0:0]m_axi_rvalid;
  output [0:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [0:0]m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [0:0]m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [0:0]m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [0:0]m_axi_wready;
  wire [0:0]m_axi_wvalid;
  wire [63:0]s_axi_araddr;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [1:0]s_axi_arready;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [0:0]\^s_axi_awready ;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [1:0]\^s_axi_bresp ;
  wire [0:0]\^s_axi_bvalid ;
  wire [63:0]s_axi_rdata;
  wire [1:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [3:0]s_axi_rresp;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [0:0]\^s_axi_wready ;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;

  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[31:0] = s_axi_wdata[31:0];
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast[0] = s_axi_wlast[0];
  assign m_axi_wstrb[3:0] = s_axi_wstrb[3:0];
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_awready[1] = \<const0> ;
  assign s_axi_awready[0] = \^s_axi_awready [0];
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[3] = \<const0> ;
  assign s_axi_bresp[2] = \<const0> ;
  assign s_axi_bresp[1:0] = \^s_axi_bresp [1:0];
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid[1] = \<const0> ;
  assign s_axi_bvalid[0] = \^s_axi_bvalid [0];
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready[1] = \<const0> ;
  assign s_axi_wready[0] = \^s_axi_wready [0];
  GND GND
       (.G(\<const0> ));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_crossbar \gen_samd.crossbar_samd 
       (.D({s_axi_awqos[3:0],s_axi_awcache[3:0],s_axi_awburst[1:0],s_axi_awprot[2:0],s_axi_awlock[0],s_axi_awsize[2:0],s_axi_awlen[7:0],s_axi_awaddr[31:0]}),
        .M_AXI_RREADY(m_axi_rready),
        .Q(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .\gen_arbiter.m_mesg_i_reg[62] ({m_axi_awqos,m_axi_awcache,m_axi_awburst,m_axi_awprot,m_axi_awlock,m_axi_awsize,m_axi_awlen,m_axi_awaddr}),
        .\gen_arbiter.m_mesg_i_reg[62]_0 ({m_axi_arqos,m_axi_arcache,m_axi_arburst,m_axi_arprot,m_axi_arlock,m_axi_arsize,m_axi_arlen,m_axi_araddr,m_axi_arid}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(\^s_axi_awready ),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_bready(s_axi_bready[0]),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(\^s_axi_bvalid ),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wready(\^s_axi_wready ),
        .s_axi_wvalid(s_axi_wvalid[0]));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_crossbar
   (m_axi_wvalid,
    M_AXI_RREADY,
    s_axi_rdata,
    s_axi_rresp,
    Q,
    s_axi_awready,
    m_axi_bready,
    \gen_arbiter.m_mesg_i_reg[62] ,
    \gen_arbiter.m_mesg_i_reg[62]_0 ,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_bvalid,
    s_axi_wready,
    m_axi_awvalid,
    m_axi_arvalid,
    s_axi_bresp,
    s_axi_wvalid,
    s_axi_bready,
    m_axi_bvalid,
    m_axi_rvalid,
    s_axi_wlast,
    aclk,
    m_axi_bresp,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    D,
    aresetn,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awvalid,
    m_axi_wready,
    m_axi_arready,
    m_axi_awready,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen);
  output [0:0]m_axi_wvalid;
  output [0:0]M_AXI_RREADY;
  output [63:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]Q;
  output [0:0]s_axi_awready;
  output [0:0]m_axi_bready;
  output [56:0]\gen_arbiter.m_mesg_i_reg[62] ;
  output [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  output [1:0]s_axi_rvalid;
  output [1:0]s_axi_rlast;
  output [0:0]s_axi_bvalid;
  output [0:0]s_axi_wready;
  output [0:0]m_axi_awvalid;
  output [0:0]m_axi_arvalid;
  output [1:0]s_axi_bresp;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_bready;
  input [0:0]m_axi_bvalid;
  input [0:0]m_axi_rvalid;
  input [0:0]s_axi_wlast;
  input aclk;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [56:0]D;
  input aresetn;
  input [1:0]s_axi_arvalid;
  input [1:0]s_axi_rready;
  input [63:0]s_axi_araddr;
  input [0:0]s_axi_awvalid;
  input [0:0]m_axi_wready;
  input [0:0]m_axi_arready;
  input [0:0]m_axi_awready;
  input [7:0]s_axi_arqos;
  input [7:0]s_axi_arcache;
  input [3:0]s_axi_arburst;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arlock;
  input [5:0]s_axi_arsize;
  input [15:0]s_axi_arlen;

  wire [56:0]D;
  wire [0:0]M_AXI_RREADY;
  wire [1:0]Q;
  wire [1:1]aa_mi_artarget_hot;
  wire [1:0]aa_mi_awtarget_hot;
  wire aclk;
  wire addr_arbiter_ar_n_10;
  wire addr_arbiter_ar_n_16;
  wire addr_arbiter_ar_n_6;
  wire addr_arbiter_ar_n_75;
  wire addr_arbiter_ar_n_8;
  wire addr_arbiter_ar_n_9;
  wire addr_arbiter_aw_n_10;
  wire addr_arbiter_aw_n_11;
  wire addr_arbiter_aw_n_13;
  wire addr_arbiter_aw_n_14;
  wire addr_arbiter_aw_n_16;
  wire addr_arbiter_aw_n_17;
  wire addr_arbiter_aw_n_2;
  wire addr_arbiter_aw_n_20;
  wire addr_arbiter_aw_n_6;
  wire addr_arbiter_aw_n_7;
  wire addr_arbiter_aw_n_9;
  wire aresetn;
  wire aresetn_d;
  wire [56:0]\gen_arbiter.m_mesg_i_reg[62] ;
  wire [57:0]\gen_arbiter.m_mesg_i_reg[62]_0 ;
  wire [0:0]\gen_axi.s_axi_rid_i ;
  wire \gen_decerr_slave.decerr_slave_inst_n_7 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_8 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ;
  wire \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ;
  wire [1:0]\gen_master_slots[0].r_issuing_cnt_reg ;
  wire \gen_master_slots[0].reg_slice_mi_n_5 ;
  wire \gen_master_slots[0].reg_slice_mi_n_58 ;
  wire \gen_master_slots[0].reg_slice_mi_n_59 ;
  wire \gen_master_slots[0].reg_slice_mi_n_60 ;
  wire \gen_master_slots[0].reg_slice_mi_n_61 ;
  wire \gen_master_slots[0].reg_slice_mi_n_62 ;
  wire \gen_master_slots[0].reg_slice_mi_n_63 ;
  wire \gen_master_slots[0].reg_slice_mi_n_65 ;
  wire \gen_master_slots[0].reg_slice_mi_n_66 ;
  wire \gen_master_slots[0].reg_slice_mi_n_67 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire [1:0]\gen_master_slots[0].w_issuing_cnt_reg ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_1 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire \gen_master_slots[1].reg_slice_mi_n_4 ;
  wire \gen_master_slots[1].reg_slice_mi_n_5 ;
  wire \gen_master_slots[1].reg_slice_mi_n_8 ;
  wire [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [1:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_8 ;
  wire [1:0]\gen_single_thread.active_target_hot_9 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_21 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_22 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_9 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_21 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_22 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_23 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_24 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_25 ;
  wire \gen_wmux.wmux_aw_fifo/m_valid_i ;
  wire \gen_wmux.wmux_aw_fifo/m_valid_i_2 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in5_in ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in5_in_6 ;
  wire m_avalid;
  wire m_avalid_7;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_arvalid;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [0:0]m_axi_wready;
  wire [0:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [0:0]m_ready_d0;
  wire [1:0]m_ready_d0_1;
  wire [1:0]m_ready_d_10;
  wire [0:0]m_select_enc;
  wire match;
  wire match_0;
  wire match_3;
  wire [1:1]mi_arready;
  wire [1:1]mi_awready;
  wire mi_bready_1;
  wire mi_bvalid_1;
  wire mi_rid_1;
  wire mi_rlast_1;
  wire mi_rready_1;
  wire mi_rvalid_1;
  wire mi_wready_1;
  wire p_0_in;
  wire [1:0]p_0_out;
  wire p_1_in;
  wire p_1_in_4;
  wire p_1_in_5;
  wire [0:0]r_issuing_cnt;
  wire reset;
  wire [63:0]s_axi_araddr;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [1:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [3:0]s_axi_rresp;
  wire [1:0]s_axi_rvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire splitter_aw_mi_n_0;
  wire [0:0]ss_aa_awready;
  wire [0:0]ss_wr_awready;
  wire [0:0]st_aa_awtarget_enc;
  wire [1:0]st_mr_bmesg;
  wire [1:0]st_mr_bvalid;
  wire st_mr_rid_0;
  wire st_mr_rid_1;
  wire [1:0]st_mr_rlast;
  wire [34:0]st_mr_rmesg;
  wire [1:0]st_mr_rvalid;
  wire [0:0]w_issuing_cnt;
  wire \wrouter_aw_fifo/areset_d1 ;

  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_addr_arbiter addr_arbiter_ar
       (.D(addr_arbiter_ar_n_10),
        .E(r_issuing_cnt),
        .Q(aa_mi_artarget_hot),
        .SR(reset),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[0].reg_slice_mi_n_62 ),
        .\gen_arbiter.any_grant_reg_1 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_21 ),
        .\gen_arbiter.any_grant_reg_2 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_21 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_22 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_60 ),
        .\gen_arbiter.m_mesg_i_reg[0]_0 (addr_arbiter_ar_n_75),
        .\gen_arbiter.m_mesg_i_reg[62]_0 (\gen_arbiter.m_mesg_i_reg[62]_0 ),
        .\gen_arbiter.m_target_hot_i_reg[1]_0 (addr_arbiter_ar_n_6),
        .\gen_arbiter.qual_reg_reg[1]_0 ({\gen_master_slots[0].reg_slice_mi_n_58 ,\gen_master_slots[0].reg_slice_mi_n_59 }),
        .\gen_arbiter.s_ready_i_reg[1]_0 (Q),
        .\gen_axi.read_cs_reg[0] (addr_arbiter_ar_n_16),
        .\gen_axi.s_axi_rid_i (\gen_axi.s_axi_rid_i ),
        .\gen_master_slots[0].r_issuing_cnt_reg[1] (\gen_master_slots[0].reg_slice_mi_n_61 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[1]_0 (\gen_master_slots[0].r_issuing_cnt_reg ),
        .\gen_master_slots[1].r_issuing_cnt_reg (\gen_master_slots[1].r_issuing_cnt_reg ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .match(match_0),
        .match_0(match),
        .mi_arready(mi_arready),
        .mi_rid_1(mi_rid_1),
        .mi_rvalid_1(mi_rvalid_1),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_araddr_57_sp_1(addr_arbiter_ar_n_9),
        .s_axi_araddr_58_sp_1(addr_arbiter_ar_n_8),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_addr_arbiter_0 addr_arbiter_aw
       (.D(D),
        .E(\gen_wmux.wmux_aw_fifo/m_valid_i_2 ),
        .\FSM_onehot_state_reg[0] (\gen_wmux.wmux_aw_fifo/p_0_in5_in_6 ),
        .\FSM_onehot_state_reg[0]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ),
        .\FSM_onehot_state_reg[0]_1 (\gen_wmux.wmux_aw_fifo/p_0_in5_in ),
        .\FSM_onehot_state_reg[0]_2 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_9 ),
        .\FSM_onehot_state_reg[1] ({addr_arbiter_aw_n_6,addr_arbiter_aw_n_7}),
        .\FSM_onehot_state_reg[1]_0 (addr_arbiter_aw_n_9),
        .\FSM_onehot_state_reg[1]_1 ({addr_arbiter_aw_n_10,addr_arbiter_aw_n_11}),
        .\FSM_onehot_state_reg[1]_2 (addr_arbiter_aw_n_13),
        .Q(m_ready_d_10),
        .SR(reset),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.grant_hot_reg[0]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_arbiter.grant_hot_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_65 ),
        .\gen_arbiter.last_rr_hot_reg[0]_0 (m_ready_d[0]),
        .\gen_arbiter.m_mesg_i_reg[62]_0 (\gen_arbiter.m_mesg_i_reg[62] ),
        .\gen_arbiter.m_target_hot_i_reg[0]_0 (\gen_wmux.wmux_aw_fifo/m_valid_i ),
        .\gen_arbiter.m_target_hot_i_reg[0]_1 (addr_arbiter_aw_n_16),
        .\gen_arbiter.m_target_hot_i_reg[1]_0 (aa_mi_awtarget_hot),
        .\gen_arbiter.m_target_hot_i_reg[1]_1 (addr_arbiter_aw_n_20),
        .\gen_arbiter.m_target_hot_i_reg[1]_2 (st_aa_awtarget_enc),
        .\gen_arbiter.m_valid_i_reg_inv_0 (m_ready_d0_1),
        .\gen_arbiter.m_valid_i_reg_inv_1 (splitter_aw_mi_n_0),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_arbiter.s_ready_i_reg[0]_0 (m_ready_d0),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (st_mr_bvalid[0]),
        .\gen_master_slots[0].w_issuing_cnt_reg[1]_0 (\gen_master_slots[0].w_issuing_cnt_reg ),
        .\gen_master_slots[1].w_issuing_cnt_reg (\gen_master_slots[1].w_issuing_cnt_reg ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_4 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_8 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_ready_d_reg[0] (addr_arbiter_aw_n_14),
        .\m_ready_d_reg[0]_0 (addr_arbiter_aw_n_17),
        .\m_ready_d_reg[1] (addr_arbiter_aw_n_2),
        .m_valid_i_reg(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_1 ),
        .m_valid_i_reg_0(\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ),
        .match(match_3),
        .mi_awready(mi_awready),
        .p_1_in(p_1_in_4),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bready[0] (w_issuing_cnt),
        .ss_aa_awready(ss_aa_awready));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[1]_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .Q(aa_mi_artarget_hot),
        .SR(reset),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axi.read_cnt_reg[7]_0 (\gen_arbiter.m_mesg_i_reg[62]_0 [40:33]),
        .\gen_axi.s_axi_awready_i_reg_0 (addr_arbiter_aw_n_20),
        .\gen_axi.s_axi_bvalid_i_reg_0 (\gen_decerr_slave.decerr_slave_inst_n_7 ),
        .\gen_axi.s_axi_rid_i (\gen_axi.s_axi_rid_i ),
        .\gen_axi.s_axi_rid_i_reg[0]_0 (addr_arbiter_ar_n_75),
        .\gen_axi.s_axi_rlast_i_reg_0 (addr_arbiter_ar_n_16),
        .\gen_axi.s_axi_wready_i_reg_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .mi_arready(mi_arready),
        .mi_awready(mi_awready),
        .mi_bready_1(mi_bready_1),
        .mi_bvalid_1(mi_bvalid_1),
        .mi_rid_1(mi_rid_1),
        .mi_rlast_1(mi_rlast_1),
        .mi_rready_1(mi_rready_1),
        .mi_rvalid_1(mi_rvalid_1),
        .mi_wready_1(mi_wready_1),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_mux \gen_master_slots[0].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_10,addr_arbiter_aw_n_11}),
        .E(\gen_wmux.wmux_aw_fifo/m_valid_i ),
        .Q(\gen_wmux.wmux_aw_fifo/p_0_in5_in ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (aa_mi_awtarget_hot[0]),
        .\gen_rep[0].fifoaddr_reg[0]_1 (m_ready_d_10[0]),
        .\gen_rep[0].fifoaddr_reg[1] (addr_arbiter_aw_n_14),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_9 ),
        .m_avalid(m_avalid),
        .m_axi_wready(m_axi_wready),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(addr_arbiter_aw_n_13),
        .m_valid_i_reg_0(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .p_1_in(p_1_in_4));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].r_issuing_cnt[0]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg [0]),
        .O(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(r_issuing_cnt),
        .D(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ),
        .Q(\gen_master_slots[0].r_issuing_cnt_reg [0]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(r_issuing_cnt),
        .D(addr_arbiter_ar_n_10),
        .Q(\gen_master_slots[0].r_issuing_cnt_reg [1]),
        .R(reset));
  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.D(\gen_master_slots[0].reg_slice_mi_n_66 ),
        .E(st_mr_bvalid[0]),
        .Q({st_mr_rid_0,st_mr_rlast[0],st_mr_rmesg[1:0],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (\gen_master_slots[0].reg_slice_mi_n_5 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[0].r_issuing_cnt_reg ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .\gen_arbiter.qual_reg_reg[0]_1 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_22 ),
        .\gen_arbiter.qual_reg_reg[0]_2 (\gen_master_slots[1].reg_slice_mi_n_4 ),
        .\gen_arbiter.qual_reg_reg[1] (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_23 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_60 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_62 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_67 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[1] (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_24 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_65 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (\gen_master_slots[0].w_issuing_cnt_reg ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1]_0 (addr_arbiter_aw_n_16),
        .\gen_master_slots[1].r_issuing_cnt_reg (\gen_master_slots[1].r_issuing_cnt_reg ),
        .\gen_master_slots[1].w_issuing_cnt_reg (\gen_master_slots[1].w_issuing_cnt_reg ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_8 ),
        .\gen_single_thread.active_target_hot_0 (\gen_single_thread.active_target_hot_9 ),
        .\gen_single_thread.active_target_hot_1 (\gen_single_thread.active_target_hot ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[1] (st_mr_bmesg),
        .\m_payload_i_reg[34] (\gen_master_slots[0].reg_slice_mi_n_61 ),
        .match(match_0),
        .match_2(match),
        .match_3(match_3),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in_5),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_arvalid[1] ({\gen_master_slots[0].reg_slice_mi_n_58 ,\gen_master_slots[0].reg_slice_mi_n_59 }),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata({s_axi_rdata[61],s_axi_rdata[56],s_axi_rdata[53:48],s_axi_rdata[45],s_axi_rdata[40:37],s_axi_rdata[33:32],s_axi_rdata[29],s_axi_rdata[24],s_axi_rdata[21:16],s_axi_rdata[13],s_axi_rdata[8:5],s_axi_rdata[1:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_1_sp_1(\gen_master_slots[0].reg_slice_mi_n_63 ),
        .s_axi_rvalid(s_axi_rvalid[1]),
        .\s_axi_rvalid[1] ({st_mr_rid_1,st_mr_rlast[1]}),
        .\s_axi_rvalid[1]_0 (st_mr_rvalid[1]),
        .s_ready_i_reg(M_AXI_RREADY),
        .st_mr_rvalid(st_mr_rvalid[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg [0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(w_issuing_cnt),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(\gen_master_slots[0].w_issuing_cnt_reg [0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(w_issuing_cnt),
        .D(\gen_master_slots[0].reg_slice_mi_n_66 ),
        .Q(\gen_master_slots[0].w_issuing_cnt_reg [1]),
        .R(reset));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_mux_1 \gen_master_slots[1].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_6,addr_arbiter_aw_n_7}),
        .E(\gen_wmux.wmux_aw_fifo/m_valid_i_2 ),
        .Q(\gen_wmux.wmux_aw_fifo/p_0_in5_in_6 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_1 ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (aa_mi_awtarget_hot[1]),
        .\gen_rep[0].fifoaddr_reg[0]_1 (m_ready_d_10[0]),
        .\gen_rep[0].fifoaddr_reg[1] (addr_arbiter_aw_n_17),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ),
        .m_avalid(m_avalid_7),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(addr_arbiter_aw_n_9),
        .m_valid_i_reg_0(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .mi_wready_1(mi_wready_1),
        .p_1_in(p_1_in_4));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_ar_n_6),
        .Q(\gen_master_slots[1].r_issuing_cnt_reg ),
        .R(reset));
  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axi_register_slice_2 \gen_master_slots[1].reg_slice_mi 
       (.Q({st_mr_rid_1,st_mr_rlast[1]}),
        .aclk(aclk),
        .\gen_master_slots[1].r_issuing_cnt_reg (\gen_master_slots[1].r_issuing_cnt_reg ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_5 ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_25 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_9 [1]),
        .\gen_single_thread.active_target_hot_0 (\gen_single_thread.active_target_hot [1]),
        .m_valid_i_reg(st_mr_rvalid[1]),
        .m_valid_i_reg_0(\gen_master_slots[1].reg_slice_mi_n_4 ),
        .m_valid_i_reg_1(\gen_master_slots[1].reg_slice_mi_n_8 ),
        .m_valid_i_reg_2(\gen_decerr_slave.decerr_slave_inst_n_7 ),
        .mi_bready_1(mi_bready_1),
        .mi_bvalid_1(mi_bvalid_1),
        .mi_rid_1(mi_rid_1),
        .mi_rlast_1(mi_rlast_1),
        .mi_rready_1(mi_rready_1),
        .mi_rvalid_1(mi_rvalid_1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in_5),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .\s_axi_rlast[0] (st_mr_rlast[0]),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg(\gen_master_slots[0].reg_slice_mi_n_5 ),
        .st_mr_bvalid(st_mr_bvalid[1]));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_aw_n_2),
        .Q(\gen_master_slots[1].w_issuing_cnt_reg ),
        .R(reset));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor \gen_slave_slots[0].gen_si_read.si_transactor_ar 
       (.Q({st_mr_rid_0,st_mr_rlast[0],st_mr_rmesg[1:0],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .SR(reset),
        .aclk(aclk),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_22 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (Q[0]),
        .\gen_single_thread.active_target_hot_reg[1]_0 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_21 ),
        .match(match),
        .p_0_out(p_0_out[0]),
        .s_axi_rdata({s_axi_rdata[31:30],s_axi_rdata[28:25],s_axi_rdata[23:22],s_axi_rdata[15:14],s_axi_rdata[12:9],s_axi_rdata[4:2]}),
        .s_axi_rready(s_axi_rready[0]),
        .s_axi_rresp(s_axi_rresp[1:0]),
        .s_axi_rvalid(s_axi_rvalid[0]),
        .\s_axi_rvalid[0] ({st_mr_rid_1,st_mr_rlast[1]}),
        .st_mr_rvalid(st_mr_rvalid));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor__parameterized0 \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.D(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .Q(\gen_single_thread.accept_cnt ),
        .SR(reset),
        .aclk(aclk),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (s_axi_awready),
        .\gen_single_thread.active_target_enc_reg[0]_1 (st_aa_awtarget_enc),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_8 ),
        .match(match_3),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .\s_axi_bresp[1] (st_mr_bmesg),
        .s_axi_bvalid(s_axi_bvalid),
        .st_mr_bvalid(st_mr_bvalid));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.D(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .Q(m_ready_d),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[0].reg_slice_mi_n_65 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.accept_cnt_reg[1] (\gen_single_thread.accept_cnt ),
        .\m_ready_d_reg[0]_0 (m_ready_d0),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .\s_axi_awvalid[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .s_axi_awvalid_0_sp_1(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .ss_aa_awready(ss_aa_awready),
        .ss_wr_awready(ss_wr_awready));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.\FSM_onehot_gen_axi.write_cs_reg[1] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_6 ),
        .Q(m_ready_d[1]),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_axi.s_axi_wready_i_reg (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_7 ),
        .\gen_axi.s_axi_wready_i_reg_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_7),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_9 ),
        .m_axi_wvalid(m_axi_wvalid),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .match(match_3),
        .mi_wready_1(mi_wready_1),
        .\s_axi_awaddr[23] (st_aa_awtarget_enc),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .ss_wr_awready(ss_wr_awready));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor_3 \gen_slave_slots[1].gen_si_read.si_transactor_ar 
       (.Q({st_mr_rid_0,st_mr_rmesg[1:0],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.any_grant_i_2_0 (addr_arbiter_ar_n_9),
        .\gen_arbiter.any_grant_i_2_1 (addr_arbiter_ar_n_8),
        .\gen_arbiter.any_grant_i_5 (st_mr_rid_1),
        .\gen_arbiter.any_grant_reg (\gen_master_slots[1].reg_slice_mi_n_5 ),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[0].reg_slice_mi_n_67 ),
        .\gen_arbiter.last_rr_hot_reg[1] (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_21 ),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_63 ),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_23 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_9 ),
        .\gen_single_thread.active_target_hot_0 (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (Q[1]),
        .\gen_single_thread.active_target_hot_reg[1]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_22 ),
        .match(match_0),
        .p_0_out(p_0_out[1]),
        .s_axi_rdata({s_axi_rdata[63:62],s_axi_rdata[60:57],s_axi_rdata[55:54],s_axi_rdata[47:46],s_axi_rdata[44:41],s_axi_rdata[36:34]}),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rready(s_axi_rready),
        .\s_axi_rready[1]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_25 ),
        .s_axi_rready_1_sp_1(\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_24 ),
        .s_axi_rresp(s_axi_rresp[3:2]),
        .s_axi_rvalid(s_axi_rvalid[1]));
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_splitter_4 splitter_aw_mi
       (.D(m_ready_d0_1),
        .Q(m_ready_d_10),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_axi_awready(m_axi_awready),
        .\m_ready_d_reg[0]_0 (aa_mi_awtarget_hot),
        .\m_ready_d_reg[1]_0 (splitter_aw_mi_n_0),
        .mi_awready(mi_awready));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_decerr_slave
   (mi_awready,
    mi_wready_1,
    mi_bvalid_1,
    mi_rvalid_1,
    mi_arready,
    mi_rid_1,
    mi_rlast_1,
    \gen_axi.s_axi_bvalid_i_reg_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[1]_0 ,
    SR,
    aclk,
    \gen_axi.s_axi_rid_i_reg[0]_0 ,
    aresetn_d,
    mi_rready_1,
    \gen_axi.s_axi_rid_i ,
    mi_bready_1,
    \gen_axi.s_axi_wready_i_reg_0 ,
    \gen_axi.s_axi_awready_i_reg_0 ,
    s_axi_bready,
    \gen_single_thread.active_target_enc ,
    Q,
    p_1_in,
    \gen_axi.read_cnt_reg[7]_0 ,
    \gen_axi.s_axi_rlast_i_reg_0 );
  output [0:0]mi_awready;
  output mi_wready_1;
  output mi_bvalid_1;
  output mi_rvalid_1;
  output [0:0]mi_arready;
  output mi_rid_1;
  output mi_rlast_1;
  output \gen_axi.s_axi_bvalid_i_reg_0 ;
  output [0:0]\FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  input [0:0]SR;
  input aclk;
  input \gen_axi.s_axi_rid_i_reg[0]_0 ;
  input aresetn_d;
  input mi_rready_1;
  input [0:0]\gen_axi.s_axi_rid_i ;
  input mi_bready_1;
  input \gen_axi.s_axi_wready_i_reg_0 ;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input [0:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]Q;
  input p_1_in;
  input [7:0]\gen_axi.read_cnt_reg[7]_0 ;
  input \gen_axi.s_axi_rlast_i_reg_0 ;

  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn_d;
  wire \gen_axi.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.read_cnt[6]_i_2_n_0 ;
  wire \gen_axi.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.read_cnt[7]_i_4_n_0 ;
  wire [0:0]\gen_axi.read_cnt_reg ;
  wire [7:0]\gen_axi.read_cnt_reg[7]_0 ;
  wire [7:1]\gen_axi.read_cnt_reg__0 ;
  wire \gen_axi.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg_0 ;
  wire [0:0]\gen_axi.s_axi_rid_i ;
  wire \gen_axi.s_axi_rid_i_reg[0]_0 ;
  wire \gen_axi.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_wready_i_reg_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]mi_arready;
  wire [0:0]mi_awready;
  wire mi_bready_1;
  wire mi_bvalid_1;
  wire mi_rid_1;
  wire mi_rlast_1;
  wire mi_rready_1;
  wire mi_rvalid_1;
  wire mi_wready_1;
  wire [7:0]p_0_in;
  wire p_1_in;
  wire [0:0]s_axi_bready;

  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I1(mi_bready_1),
        .I2(\gen_axi.s_axi_wready_i_reg_0 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I4(\gen_axi.s_axi_awready_i_reg_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .D(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .D(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .D(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.read_cnt[0]_i_1 
       (.I0(\gen_axi.read_cnt_reg ),
        .I1(mi_rvalid_1),
        .I2(\gen_axi.read_cnt_reg[7]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.read_cnt[1]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [1]),
        .I1(mi_rvalid_1),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \gen_axi.read_cnt[2]_i_1 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(mi_rvalid_1),
        .I4(\gen_axi.read_cnt_reg[7]_0 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hCCCCCCC3AAAAAAAA)) 
    \gen_axi.read_cnt[3]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [3]),
        .I2(\gen_axi.read_cnt_reg__0 [2]),
        .I3(\gen_axi.read_cnt_reg ),
        .I4(\gen_axi.read_cnt_reg__0 [1]),
        .I5(mi_rvalid_1),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFCAA03AA)) 
    \gen_axi.read_cnt[4]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [4]),
        .I1(\gen_axi.read_cnt_reg__0 [3]),
        .I2(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I3(mi_rvalid_1),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hCCCCCCC3AAAAAAAA)) 
    \gen_axi.read_cnt[5]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [5]),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(\gen_axi.read_cnt_reg__0 [3]),
        .I3(\gen_axi.read_cnt_reg__0 [4]),
        .I4(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I5(mi_rvalid_1),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_axi.read_cnt[5]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [1]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [2]),
        .O(\gen_axi.read_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[6]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [6]),
        .I1(\gen_axi.read_cnt_reg__0 [6]),
        .I2(\gen_axi.read_cnt[6]_i_2_n_0 ),
        .I3(mi_rvalid_1),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.read_cnt[6]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [5]),
        .I1(\gen_axi.read_cnt_reg__0 [3]),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.read_cnt_reg ),
        .I5(\gen_axi.read_cnt_reg__0 [2]),
        .O(\gen_axi.read_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h808080808F808080)) 
    \gen_axi.read_cnt[7]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_1),
        .I2(mi_rvalid_1),
        .I3(Q),
        .I4(mi_arready),
        .I5(p_1_in),
        .O(\gen_axi.read_cnt[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \gen_axi.read_cnt[7]_i_2 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [7]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(mi_rvalid_1),
        .I3(\gen_axi.read_cnt_reg__0 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.read_cnt[7]_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [7]),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(\gen_axi.read_cnt_reg__0 [3]),
        .I3(\gen_axi.read_cnt_reg__0 [4]),
        .I4(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I5(\gen_axi.read_cnt_reg__0 [6]),
        .O(\gen_axi.read_cnt[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_axi.read_cnt[7]_i_4 
       (.I0(\gen_axi.read_cnt_reg__0 [6]),
        .I1(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(\gen_axi.read_cnt_reg__0 [3]),
        .I4(\gen_axi.read_cnt_reg__0 [5]),
        .O(\gen_axi.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.read_cnt_reg ),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.read_cnt_reg__0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFB0B0B0)) 
    \gen_axi.read_cs[0]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_1),
        .I2(mi_rvalid_1),
        .I3(Q),
        .I4(mi_arready),
        .I5(p_1_in),
        .O(\gen_axi.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.read_cs[0]_i_1_n_0 ),
        .Q(mi_rvalid_1),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AAAA08AA)) 
    \gen_axi.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(mi_rready_1),
        .I2(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I3(mi_rvalid_1),
        .I4(mi_arready),
        .I5(\gen_axi.s_axi_rid_i ),
        .O(\gen_axi.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFBFBFFFB0B0B0)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(mi_bready_1),
        .I5(mi_awready),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.s_axi_wready_i_reg_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I2(mi_bready_1),
        .I3(mi_bvalid_1),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(mi_bvalid_1),
        .R(SR));
  FDRE \gen_axi.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i_reg[0]_0 ),
        .Q(mi_rid_1),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \gen_axi.s_axi_rlast_i_i_1 
       (.I0(mi_rvalid_1),
        .I1(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I2(\gen_axi.s_axi_rlast_i_reg_0 ),
        .I3(\gen_axi.s_axi_rlast_i_i_3_n_0 ),
        .I4(mi_rlast_1),
        .O(\gen_axi.s_axi_rlast_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \gen_axi.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(mi_rready_1),
        .I3(\gen_axi.s_axi_rlast_i_i_5_n_0 ),
        .I4(\gen_axi.s_axi_rid_i ),
        .O(\gen_axi.s_axi_rlast_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_axi.s_axi_rlast_i_i_5 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [4]),
        .I2(\gen_axi.read_cnt_reg__0 [5]),
        .I3(\gen_axi.read_cnt_reg__0 [6]),
        .I4(\gen_axi.read_cnt_reg__0 [7]),
        .I5(mi_rvalid_1),
        .O(\gen_axi.s_axi_rlast_i_i_5_n_0 ));
  FDRE \gen_axi.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rlast_i_i_1_n_0 ),
        .Q(mi_rlast_1),
        .R(SR));
  LUT4 #(
    .INIT(16'h8F88)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(\gen_axi.s_axi_awready_i_reg_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I2(\gen_axi.s_axi_wready_i_reg_0 ),
        .I3(mi_wready_1),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(mi_wready_1),
        .R(SR));
  LUT4 #(
    .INIT(16'h8BBB)) 
    m_valid_i_i_1__2
       (.I0(mi_bvalid_1),
        .I1(mi_bready_1),
        .I2(s_axi_bready),
        .I3(\gen_single_thread.active_target_enc ),
        .O(\gen_axi.s_axi_bvalid_i_reg_0 ));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor
   (\gen_single_thread.active_target_hot ,
    s_axi_rdata,
    s_axi_rresp,
    \gen_single_thread.active_target_hot_reg[1]_0 ,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    s_axi_rvalid,
    SR,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    match,
    aclk,
    Q,
    p_0_out,
    s_axi_rready,
    \s_axi_rvalid[0] ,
    st_mr_rvalid);
  output [1:0]\gen_single_thread.active_target_hot ;
  output [16:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output \gen_single_thread.active_target_hot_reg[1]_0 ;
  output \gen_single_thread.accept_cnt_reg[1]_0 ;
  output [0:0]s_axi_rvalid;
  input [0:0]SR;
  input [0:0]\gen_single_thread.active_target_hot_reg[0]_0 ;
  input match;
  input aclk;
  input [20:0]Q;
  input [0:0]p_0_out;
  input [0:0]s_axi_rready;
  input [1:0]\s_axi_rvalid[0] ;
  input [1:0]st_mr_rvalid;

  wire [20:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_2__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_3__0_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire [1:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot[1]_i_1__0_n_0 ;
  wire [0:0]\gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.active_target_hot_reg[1]_0 ;
  wire match;
  wire [0:0]p_0_out;
  wire [16:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [1:0]\s_axi_rvalid[0] ;
  wire [1:0]st_mr_rvalid;

  LUT6 #(
    .INIT(64'h666066FF00000000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_5 
       (.I0(match),
        .I1(\gen_single_thread.active_target_hot [1]),
        .I2(\gen_single_thread.accept_cnt[1]_i_3__0_n_0 ),
        .I3(\gen_single_thread.accept_cnt [0]),
        .I4(\gen_single_thread.accept_cnt [1]),
        .I5(p_0_out),
        .O(\gen_single_thread.active_target_hot_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h11FDFD11)) 
    \gen_arbiter.qual_reg[0]_i_2 
       (.I0(\gen_single_thread.accept_cnt [1]),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(\gen_single_thread.accept_cnt[1]_i_3__0_n_0 ),
        .I3(\gen_single_thread.active_target_hot [1]),
        .I4(match),
        .O(\gen_single_thread.accept_cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h55A8)) 
    \gen_single_thread.accept_cnt[1]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt[1]_i_3__0_n_0 ),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(\gen_single_thread.accept_cnt [1]),
        .I3(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .O(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_single_thread.accept_cnt[1]_i_2__0 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .O(\gen_single_thread.accept_cnt[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \gen_single_thread.accept_cnt[1]_i_3__0 
       (.I0(s_axi_rready),
        .I1(\s_axi_rvalid[0] [0]),
        .I2(\gen_single_thread.active_target_hot [1]),
        .I3(Q[19]),
        .I4(s_axi_rvalid),
        .O(\gen_single_thread.accept_cnt[1]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_2__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.active_target_hot[1]_i_1__0 
       (.I0(match),
        .O(\gen_single_thread.active_target_hot[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .D(match),
        .Q(\gen_single_thread.active_target_hot [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .D(\gen_single_thread.active_target_hot[1]_i_1__0_n_0 ),
        .Q(\gen_single_thread.active_target_hot [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[8]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[10]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[11]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[12]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[13]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[14]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[0]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[15]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[16]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[3]),
        .O(s_axi_rdata[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[17]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[18]),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [0]),
        .I1(st_mr_rvalid[0]),
        .I2(Q[20]),
        .I3(\gen_single_thread.active_target_hot [1]),
        .I4(st_mr_rvalid[1]),
        .I5(\s_axi_rvalid[0] [1]),
        .O(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_38_si_transactor" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor_3
   (\gen_single_thread.active_target_hot ,
    s_axi_rdata,
    s_axi_rresp,
    \gen_arbiter.last_rr_hot_reg[1] ,
    \gen_single_thread.active_target_hot_reg[1]_0 ,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    s_axi_rready_1_sp_1,
    \s_axi_rready[1]_0 ,
    SR,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    match,
    aclk,
    Q,
    p_0_out,
    \gen_arbiter.any_grant_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    \gen_arbiter.any_grant_i_2_0 ,
    \gen_arbiter.any_grant_i_2_1 ,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_rready,
    \gen_single_thread.active_target_hot_0 ,
    \gen_arbiter.any_grant_i_5 );
  output [1:0]\gen_single_thread.active_target_hot ;
  output [16:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output \gen_arbiter.last_rr_hot_reg[1] ;
  output \gen_single_thread.active_target_hot_reg[1]_0 ;
  output \gen_single_thread.accept_cnt_reg[1]_0 ;
  output s_axi_rready_1_sp_1;
  output \s_axi_rready[1]_0 ;
  input [0:0]SR;
  input [0:0]\gen_single_thread.active_target_hot_reg[0]_0 ;
  input match;
  input aclk;
  input [19:0]Q;
  input [0:0]p_0_out;
  input \gen_arbiter.any_grant_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_single_thread.accept_cnt_reg[0]_0 ;
  input \gen_arbiter.any_grant_i_2_0 ;
  input \gen_arbiter.any_grant_i_2_1 ;
  input [0:0]s_axi_rvalid;
  input [0:0]s_axi_rlast;
  input [1:0]s_axi_rready;
  input [1:0]\gen_single_thread.active_target_hot_0 ;
  input [0:0]\gen_arbiter.any_grant_i_5 ;

  wire [19:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.any_grant_i_2_0 ;
  wire \gen_arbiter.any_grant_i_2_1 ;
  wire \gen_arbiter.any_grant_i_3_n_0 ;
  wire \gen_arbiter.any_grant_i_4_n_0 ;
  wire [0:0]\gen_arbiter.any_grant_i_5 ;
  wire \gen_arbiter.any_grant_reg ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.last_rr_hot_reg[1] ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_2__1_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire [1:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot[1]_i_1_n_0 ;
  wire [1:0]\gen_single_thread.active_target_hot_0 ;
  wire [0:0]\gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.active_target_hot_reg[1]_0 ;
  wire match;
  wire [0:0]p_0_out;
  wire [16:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire \s_axi_rready[1]_0 ;
  wire s_axi_rready_1_sn_1;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;

  assign s_axi_rready_1_sp_1 = s_axi_rready_1_sn_1;
  LUT6 #(
    .INIT(64'h000000A8A8A800A8)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(p_0_out),
        .I1(\gen_arbiter.any_grant_i_3_n_0 ),
        .I2(\gen_arbiter.any_grant_i_4_n_0 ),
        .I3(\gen_arbiter.any_grant_reg ),
        .I4(match),
        .I5(\gen_arbiter.any_grant_reg_0 ),
        .O(\gen_arbiter.last_rr_hot_reg[1] ));
  LUT5 #(
    .INIT(32'h6A006AFF)) 
    \gen_arbiter.any_grant_i_3 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(\gen_arbiter.any_grant_i_2_0 ),
        .I2(\gen_arbiter.any_grant_i_2_1 ),
        .I3(\gen_single_thread.accept_cnt [0]),
        .I4(\gen_single_thread.accept_cnt [1]),
        .O(\gen_arbiter.any_grant_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7800000000000000)) 
    \gen_arbiter.any_grant_i_4 
       (.I0(\gen_arbiter.any_grant_i_2_1 ),
        .I1(\gen_arbiter.any_grant_i_2_0 ),
        .I2(\gen_single_thread.active_target_hot [1]),
        .I3(s_axi_rvalid),
        .I4(s_axi_rlast),
        .I5(s_axi_rready[1]),
        .O(\gen_arbiter.any_grant_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666066FF00000000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_3 
       (.I0(match),
        .I1(\gen_single_thread.active_target_hot [1]),
        .I2(\gen_single_thread.accept_cnt_reg[0]_0 ),
        .I3(\gen_single_thread.accept_cnt [0]),
        .I4(\gen_single_thread.accept_cnt [1]),
        .I5(p_0_out),
        .O(\gen_single_thread.active_target_hot_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h11FDFD11)) 
    \gen_arbiter.qual_reg[1]_i_2 
       (.I0(\gen_single_thread.accept_cnt [1]),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(\gen_single_thread.accept_cnt_reg[0]_0 ),
        .I3(\gen_single_thread.active_target_hot [1]),
        .I4(match),
        .O(\gen_single_thread.accept_cnt_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_4 
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_thread.active_target_hot [0]),
        .I2(Q[19]),
        .I3(s_axi_rready[0]),
        .I4(\gen_single_thread.active_target_hot_0 [0]),
        .O(s_axi_rready_1_sn_1));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_3 
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_thread.active_target_hot [1]),
        .I2(\gen_arbiter.any_grant_i_5 ),
        .I3(s_axi_rready[0]),
        .I4(\gen_single_thread.active_target_hot_0 [1]),
        .O(\s_axi_rready[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h55A8)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg[0]_0 ),
        .I1(\gen_single_thread.accept_cnt [0]),
        .I2(\gen_single_thread.accept_cnt [1]),
        .I3(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_single_thread.accept_cnt[1]_i_2__1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .O(\gen_single_thread.accept_cnt[1]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_2__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.active_target_hot[1]_i_1 
       (.I0(match),
        .O(\gen_single_thread.active_target_hot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .D(match),
        .Q(\gen_single_thread.active_target_hot [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .D(\gen_single_thread.active_target_hot[1]_i_1_n_0 ),
        .Q(\gen_single_thread.active_target_hot [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[0]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[3]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[8]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[10]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[11]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[12]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[13]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[14]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[15]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[16]),
        .O(s_axi_rdata[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[2]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[17]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[3]_INST_0 
       (.I0(\gen_single_thread.active_target_hot [1]),
        .I1(Q[18]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_38_si_transactor" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_si_transactor__parameterized0
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    Q,
    s_axi_bvalid,
    s_axi_bresp,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    \gen_single_thread.active_target_enc_reg[0]_1 ,
    aclk,
    match,
    st_mr_bvalid,
    s_axi_bready,
    \s_axi_bresp[1] ,
    D);
  output [0:0]\gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output \gen_single_thread.accept_cnt_reg[1]_0 ;
  output [1:0]Q;
  output [0:0]s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input [0:0]\gen_single_thread.active_target_enc_reg[0]_1 ;
  input aclk;
  input match;
  input [1:0]st_mr_bvalid;
  input [0:0]s_axi_bready;
  input [1:0]\s_axi_bresp[1] ;
  input [0:0]D;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_single_thread.accept_cnt[0]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_3__1_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc_reg[0]_1 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire match;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [1:0]\s_axi_bresp[1] ;
  wire [0:0]s_axi_bvalid;
  wire [1:0]st_mr_bvalid;

  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h11FDFD11)) 
    \gen_arbiter.qual_reg[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_single_thread.accept_cnt[1]_i_3__1_n_0 ),
        .I3(\gen_single_thread.active_target_enc ),
        .I4(match),
        .O(\gen_single_thread.accept_cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__0 
       (.I0(Q[0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6664)) 
    \gen_single_thread.accept_cnt[1]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt[1]_i_3__1_n_0 ),
        .I1(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hF0202020)) 
    \gen_single_thread.accept_cnt[1]_i_3__1 
       (.I0(\gen_single_thread.active_target_hot ),
        .I1(st_mr_bvalid[0]),
        .I2(s_axi_bready),
        .I3(\gen_single_thread.active_target_enc ),
        .I4(st_mr_bvalid[1]),
        .O(\gen_single_thread.accept_cnt[1]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ),
        .D(D),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .D(\gen_single_thread.active_target_enc_reg[0]_1 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .D(match),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(\s_axi_bresp[1] [0]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(\s_axi_bresp[1] [1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(\gen_single_thread.active_target_hot ),
        .I1(st_mr_bvalid[0]),
        .I2(st_mr_bvalid[1]),
        .I3(\gen_single_thread.active_target_enc ),
        .O(s_axi_bvalid));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_splitter
   (s_axi_awvalid_0_sp_1,
    Q,
    D,
    s_axi_awready,
    \s_axi_awvalid[0]_0 ,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    ss_wr_awready,
    ss_aa_awready,
    aresetn_d,
    \gen_single_thread.accept_cnt_reg[1] ,
    \m_ready_d_reg[0]_0 ,
    aclk);
  output s_axi_awvalid_0_sp_1;
  output [1:0]Q;
  output [0:0]D;
  output [0:0]s_axi_awready;
  output \s_axi_awvalid[0]_0 ;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input [0:0]ss_wr_awready;
  input [0:0]ss_aa_awready;
  input aresetn_d;
  input [1:0]\gen_single_thread.accept_cnt_reg[1] ;
  input [0:0]\m_ready_d_reg[0]_0 ;
  input aclk;

  wire [0:0]D;
  wire [1:0]Q;
  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire [1:0]\gen_single_thread.accept_cnt_reg[1] ;
  wire [1:1]m_ready_d0;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire [0:0]\m_ready_d_reg[0]_0 ;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire \s_axi_awvalid[0]_0 ;
  wire s_axi_awvalid_0_sn_1;
  wire [0:0]ss_aa_awready;
  wire [0:0]ss_wr_awready;

  assign s_axi_awvalid_0_sp_1 = s_axi_awvalid_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(s_axi_awvalid),
        .I1(Q[1]),
        .O(\s_axi_awvalid[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \gen_arbiter.qual_reg[0]_i_1__0 
       (.I0(s_axi_awvalid),
        .I1(Q[0]),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(\gen_arbiter.qual_reg_reg[0]_0 ),
        .O(s_axi_awvalid_0_sn_1));
  LUT6 #(
    .INIT(64'h111FEEE0EEE0111F)) 
    \gen_single_thread.accept_cnt[1]_i_2 
       (.I0(Q[1]),
        .I1(ss_wr_awready),
        .I2(Q[0]),
        .I3(ss_aa_awready),
        .I4(\gen_single_thread.accept_cnt_reg[1] [0]),
        .I5(\gen_single_thread.accept_cnt_reg[1] [1]),
        .O(D));
  LUT5 #(
    .INIT(32'hEEE0FFFF)) 
    \m_ready_d[1]_i_1 
       (.I0(Q[1]),
        .I1(ss_wr_awready),
        .I2(Q[0]),
        .I3(ss_aa_awready),
        .I4(aresetn_d),
        .O(\m_ready_d[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \m_ready_d[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(Q[1]),
        .I2(ss_wr_awready),
        .O(m_ready_d0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d_reg[0]_0 ),
        .Q(Q[0]),
        .R(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_ready_d0),
        .Q(Q[1]),
        .R(\m_ready_d[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(ss_aa_awready),
        .I1(Q[0]),
        .I2(ss_wr_awready),
        .I3(Q[1]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_38_splitter" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_splitter_4
   (\m_ready_d_reg[1]_0 ,
    Q,
    aresetn_d,
    \m_ready_d_reg[0]_0 ,
    m_axi_awready,
    mi_awready,
    D,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]Q;
  input aresetn_d;
  input [1:0]\m_ready_d_reg[0]_0 ;
  input [0:0]m_axi_awready;
  input [0:0]mi_awready;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [1:0]Q;
  wire aclk;
  wire aresetn_d;
  wire [0:0]m_axi_awready;
  wire \m_ready_d[1]_i_1__0_n_0 ;
  wire [1:0]\m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire [0:0]mi_awready;

  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[1]_i_1__0 
       (.I0(\m_ready_d_reg[1]_0 ),
        .I1(aresetn_d),
        .O(\m_ready_d[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAFFC8EAC8)) 
    \m_ready_d[1]_i_3 
       (.I0(Q[1]),
        .I1(\m_ready_d_reg[0]_0 [0]),
        .I2(m_axi_awready),
        .I3(\m_ready_d_reg[0]_0 [1]),
        .I4(mi_awready),
        .I5(Q[0]),
        .O(\m_ready_d_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\m_ready_d[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\m_ready_d[1]_i_1__0_n_0 ));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_mux
   (m_avalid,
    \gen_rep[0].fifoaddr_reg[0] ,
    Q,
    areset_d1,
    E,
    aclk,
    m_valid_i_reg,
    \gen_rep[0].fifoaddr_reg[1] ,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    p_1_in,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    m_valid_i_reg_0,
    m_select_enc,
    m_axi_wready,
    D,
    SR);
  output m_avalid;
  output \gen_rep[0].fifoaddr_reg[0] ;
  output [0:0]Q;
  input areset_d1;
  input [0:0]E;
  input aclk;
  input m_valid_i_reg;
  input \gen_rep[0].fifoaddr_reg[1] ;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_0 ;
  input p_1_in;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  input m_valid_i_reg_0;
  input [0:0]m_select_enc;
  input [0:0]m_axi_wready;
  input [1:0]D;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire m_avalid;
  wire [0:0]m_axi_wready;
  wire [0:0]m_select_enc;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire p_1_in;

  design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo__parameterized0_7 \gen_wmux.wmux_aw_fifo 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0] ),
        .\gen_rep[0].fifoaddr_reg[0]_1 (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[0]_2 (\gen_rep[0].fifoaddr_reg[0]_1 ),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1] ),
        .\gen_rep[0].fifoaddr_reg[1]_1 (\gen_rep[0].fifoaddr_reg[1]_0 ),
        .m_avalid(m_avalid),
        .m_axi_wready(m_axi_wready),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .p_1_in(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_38_wdata_mux" *) 
module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_mux_1
   (m_avalid,
    \gen_rep[0].fifoaddr_reg[0] ,
    Q,
    areset_d1,
    E,
    aclk,
    m_valid_i_reg,
    \gen_rep[0].fifoaddr_reg[1] ,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    p_1_in,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    m_valid_i_reg_0,
    m_select_enc,
    mi_wready_1,
    D,
    SR);
  output m_avalid;
  output \gen_rep[0].fifoaddr_reg[0] ;
  output [0:0]Q;
  input areset_d1;
  input [0:0]E;
  input aclk;
  input m_valid_i_reg;
  input \gen_rep[0].fifoaddr_reg[1] ;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_0 ;
  input p_1_in;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  input m_valid_i_reg_0;
  input [0:0]m_select_enc;
  input mi_wready_1;
  input [1:0]D;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire m_avalid;
  wire [0:0]m_select_enc;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire mi_wready_1;
  wire p_1_in;

  design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo__parameterized0 \gen_wmux.wmux_aw_fifo 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0] ),
        .\gen_rep[0].fifoaddr_reg[0]_1 (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[0]_2 (\gen_rep[0].fifoaddr_reg[0]_1 ),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1] ),
        .\gen_rep[0].fifoaddr_reg[1]_1 (\gen_rep[0].fifoaddr_reg[1]_0 ),
        .m_avalid(m_avalid),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .mi_wready_1(mi_wready_1),
        .p_1_in(p_1_in));
endmodule

module design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_wdata_router
   (\s_axi_awaddr[23] ,
    areset_d1,
    ss_wr_awready,
    m_select_enc,
    m_axi_wvalid,
    s_axi_wvalid_0_sp_1,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    \gen_axi.s_axi_wready_i_reg ,
    s_axi_wready,
    m_axi_wready_0_sp_1,
    aclk,
    SR,
    s_axi_wvalid,
    m_avalid,
    s_axi_wlast,
    match,
    m_valid_i_reg,
    s_axi_awvalid,
    Q,
    \gen_axi.s_axi_wready_i_reg_0 ,
    m_avalid_0,
    mi_wready_1,
    m_axi_wready);
  output [0:0]\s_axi_awaddr[23] ;
  output areset_d1;
  output [0:0]ss_wr_awready;
  output [0:0]m_select_enc;
  output [0:0]m_axi_wvalid;
  output s_axi_wvalid_0_sp_1;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output \gen_axi.s_axi_wready_i_reg ;
  output [0:0]s_axi_wready;
  output m_axi_wready_0_sp_1;
  input aclk;
  input [0:0]SR;
  input [0:0]s_axi_wvalid;
  input m_avalid;
  input [0:0]s_axi_wlast;
  input match;
  input m_valid_i_reg;
  input [0:0]s_axi_awvalid;
  input [0:0]Q;
  input [0:0]\gen_axi.s_axi_wready_i_reg_0 ;
  input m_avalid_0;
  input mi_wready_1;
  input [0:0]m_axi_wready;

  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire [0:0]\gen_axi.s_axi_wready_i_reg_0 ;
  wire m_avalid;
  wire m_avalid_0;
  wire [0:0]m_axi_wready;
  wire m_axi_wready_0_sn_1;
  wire [0:0]m_axi_wvalid;
  wire [0:0]m_select_enc;
  wire m_valid_i_reg;
  wire match;
  wire mi_wready_1;
  wire [0:0]\s_axi_awaddr[23] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_axi_wvalid_0_sn_1;
  wire [0:0]ss_wr_awready;

  assign m_axi_wready_0_sp_1 = m_axi_wready_0_sn_1;
  assign s_axi_wvalid_0_sp_1 = s_axi_wvalid_0_sn_1;
  design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo wrouter_aw_fifo
       (.\FSM_onehot_gen_axi.write_cs_reg[1] (\FSM_onehot_gen_axi.write_cs_reg[1] ),
        .Q(Q),
        .SR(SR),
        .SS(areset_d1),
        .aclk(aclk),
        .\gen_axi.s_axi_wready_i_reg (\gen_axi.s_axi_wready_i_reg ),
        .\gen_axi.s_axi_wready_i_reg_0 (\gen_axi.s_axi_wready_i_reg_0 ),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0_sp_1(m_axi_wready_0_sn_1),
        .m_axi_wvalid(m_axi_wvalid),
        .m_valid_i_reg_0(m_valid_i_reg),
        .match(match),
        .mi_wready_1(mi_wready_1),
        .\s_axi_awaddr[23] (\s_axi_awaddr[23] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0_sp_1(s_axi_wvalid_0_sn_1),
        .s_ready_i_reg_0(ss_wr_awready),
        .\storage_data1_reg[0]_0 (m_select_enc));
endmodule

module design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo
   (\s_axi_awaddr[23] ,
    SS,
    s_ready_i_reg_0,
    \storage_data1_reg[0]_0 ,
    m_axi_wvalid,
    s_axi_wvalid_0_sp_1,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    \gen_axi.s_axi_wready_i_reg ,
    s_axi_wready,
    m_axi_wready_0_sp_1,
    aclk,
    SR,
    s_axi_wvalid,
    m_avalid,
    s_axi_wlast,
    match,
    m_valid_i_reg_0,
    s_axi_awvalid,
    Q,
    \gen_axi.s_axi_wready_i_reg_0 ,
    m_avalid_0,
    mi_wready_1,
    m_axi_wready);
  output [0:0]\s_axi_awaddr[23] ;
  output [0:0]SS;
  output s_ready_i_reg_0;
  output \storage_data1_reg[0]_0 ;
  output [0:0]m_axi_wvalid;
  output s_axi_wvalid_0_sp_1;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output \gen_axi.s_axi_wready_i_reg ;
  output [0:0]s_axi_wready;
  output m_axi_wready_0_sp_1;
  input aclk;
  input [0:0]SR;
  input [0:0]s_axi_wvalid;
  input m_avalid;
  input [0:0]s_axi_wlast;
  input match;
  input m_valid_i_reg_0;
  input [0:0]s_axi_awvalid;
  input [0:0]Q;
  input [0:0]\gen_axi.s_axi_wready_i_reg_0 ;
  input m_avalid_0;
  input mi_wready_1;
  input [0:0]m_axi_wready;

  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire [1:0]fifoaddr;
  wire [1:1]fifoaddr_i;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire [0:0]\gen_axi.s_axi_wready_i_reg_0 ;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_2 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_3 ;
  wire load_s1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [0:0]m_axi_wready;
  wire m_axi_wready_0_sn_1;
  wire [0:0]m_axi_wvalid;
  wire m_valid_i;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_reg_0;
  wire match;
  wire mi_wready_1;
  wire p_0_in7_in;
  wire p_8_in;
  wire push;
  wire [0:0]\s_axi_awaddr[23] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_axi_wvalid_0_sn_1;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_reg_0;
  wire \storage_data1_reg[0]_0 ;

  assign m_axi_wready_0_sp_1 = m_axi_wready_0_sn_1;
  assign s_axi_wvalid_0_sp_1 = s_axi_wvalid_0_sn_1;
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(\gen_axi.s_axi_wready_i_reg_0 ),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(m_avalid_0),
        .I3(s_axi_wlast),
        .I4(m_avalid_1),
        .I5(s_axi_wvalid),
        .O(\FSM_onehot_gen_axi.write_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_0_in7_in),
        .I1(s_axi_awvalid),
        .I2(Q),
        .I3(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_8_in),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3320EC203320)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(p_0_in7_in),
        .I4(m_valid_i_reg_0),
        .I5(p_8_in),
        .O(m_valid_i));
  LUT4 #(
    .INIT(16'h00A2)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(p_0_in7_in),
        .I1(s_axi_awvalid),
        .I2(Q),
        .I3(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h11011111)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(s_axi_awvalid),
        .I3(Q),
        .I4(s_ready_i_reg_0),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[2]_i_3__0 
       (.I0(mi_wready_1),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(m_avalid_0),
        .I3(s_axi_wlast),
        .I4(m_avalid_1),
        .I5(s_axi_wvalid),
        .O(\gen_axi.s_axi_wready_i_reg ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \FSM_onehot_state[2]_i_3__1 
       (.I0(m_axi_wready),
        .I1(\storage_data1_reg[0]_0 ),
        .I2(m_avalid),
        .I3(s_axi_wlast),
        .I4(m_avalid_1),
        .I5(s_axi_wvalid),
        .O(m_axi_wready_0_sn_1));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in7_in),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(p_8_in),
        .S(SS));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(SS),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222DF002000DF00)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(Q),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .I5(p_0_in7_in),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_2 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .O(fifoaddr_i));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .D(fifoaddr_i),
        .Q(fifoaddr[1]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3 
       (.I0(s_axi_wvalid),
        .I1(m_avalid_1),
        .I2(s_axi_wlast),
        .O(s_axi_wvalid_0_sn_1));
  design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_ndeep_srl \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_3 ),
        .Q(fifoaddr),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[0] (s_axi_wvalid_0_sn_1),
        .\gen_rep[0].fifoaddr_reg[1] ({p_0_in7_in,\FSM_onehot_state_reg_n_0_[0] }),
        .\gen_rep[0].fifoaddr_reg[1]_0 (s_ready_i_reg_0),
        .\gen_rep[0].fifoaddr_reg[1]_1 (Q),
        .load_s1(load_s1),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_axi_wready(m_axi_wready),
        .m_valid_i_reg(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .match(match),
        .mi_wready_1(mi_wready_1),
        .push(push),
        .\s_axi_awaddr[23] (\s_axi_awaddr[23] ),
        .s_axi_awvalid(s_axi_awvalid),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(s_axi_wvalid),
        .I1(m_avalid_1),
        .I2(m_avalid),
        .I3(\storage_data1_reg[0]_0 ),
        .O(m_axi_wvalid));
  LUT6 #(
    .INIT(64'hC8C8FF88C8C88888)) 
    m_valid_i_i_1
       (.I0(p_8_in),
        .I1(m_valid_i_reg_0),
        .I2(p_0_in7_in),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .I5(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1_n_0),
        .Q(m_avalid_1),
        .R(SS));
  LUT6 #(
    .INIT(64'h8A0A800080008000)) 
    \s_axi_wready[0]_INST_0 
       (.I0(m_avalid_1),
        .I1(m_avalid_0),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(mi_wready_1),
        .I4(m_avalid),
        .I5(m_axi_wready),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFEFFFEEEEEEEE)) 
    s_ready_i_i_1
       (.I0(s_ready_i_i_2_n_0),
        .I1(SS),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_ready_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .O(s_ready_i_i_2_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2222FF2222223222)) 
    \storage_data1[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\gen_srls[0].gen_rep[0].srl_nx1_n_2 ),
        .I2(p_0_in7_in),
        .I3(s_axi_awvalid),
        .I4(Q),
        .I5(p_8_in),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_36_axic_reg_srl_fifo" *) 
module design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo__parameterized0
   (m_avalid,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    Q,
    areset_d1,
    E,
    aclk,
    m_valid_i_reg_0,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    \gen_rep[0].fifoaddr_reg[1]_1 ,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    p_1_in,
    \gen_rep[0].fifoaddr_reg[0]_2 ,
    m_valid_i_reg_1,
    m_select_enc,
    mi_wready_1,
    D,
    SR);
  output m_avalid;
  output \gen_rep[0].fifoaddr_reg[0]_0 ;
  output [0:0]Q;
  input areset_d1;
  input [0:0]E;
  input aclk;
  input m_valid_i_reg_0;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input \gen_rep[0].fifoaddr_reg[1]_1 ;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  input p_1_in;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  input m_valid_i_reg_1;
  input [0:0]m_select_enc;
  input mi_wready_1;
  input [1:0]D;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire [1:1]fifoaddr_i;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire \gen_rep[0].fifoaddr_reg[1]_1 ;
  wire m_avalid;
  wire [0:0]m_select_enc;
  wire m_valid_i_i_3_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire mi_wready_1;
  wire p_1_in;
  wire p_6_in;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_6_in),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(Q),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(p_6_in),
        .S(areset_d1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA5A00000040)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(\gen_rep[0].fifoaddr_reg[1]_1 ),
        .I1(Q),
        .I2(\gen_rep[0].fifoaddr_reg[0]_1 ),
        .I3(p_1_in),
        .I4(\gen_rep[0].fifoaddr_reg[0]_2 ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FBFF040F0400FBF)) 
    \gen_rep[0].fifoaddr[1]_i_2__0 
       (.I0(\gen_rep[0].fifoaddr_reg[1]_1 ),
        .I1(Q),
        .I2(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(fifoaddr[0]),
        .I5(fifoaddr[1]),
        .O(fifoaddr_i));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .D(fifoaddr_i),
        .Q(fifoaddr[1]),
        .S(SR));
  LUT6 #(
    .INIT(64'hFFFFAAABAAAAAAAB)) 
    m_valid_i_i_1__0
       (.I0(m_valid_i_reg_0),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .I3(m_valid_i_i_3_n_0),
        .I4(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I5(p_6_in),
        .O(\gen_rep[0].fifoaddr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    m_valid_i_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_valid_i_reg_1),
        .I2(m_avalid),
        .I3(m_select_enc),
        .I4(mi_wready_1),
        .O(m_valid_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .Q(m_avalid),
        .R(areset_d1));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_36_axic_reg_srl_fifo" *) 
module design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_axic_reg_srl_fifo__parameterized0_7
   (m_avalid,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    Q,
    areset_d1,
    E,
    aclk,
    m_valid_i_reg_0,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    \gen_rep[0].fifoaddr_reg[1]_1 ,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    p_1_in,
    \gen_rep[0].fifoaddr_reg[0]_2 ,
    m_valid_i_reg_1,
    m_select_enc,
    m_axi_wready,
    D,
    SR);
  output m_avalid;
  output \gen_rep[0].fifoaddr_reg[0]_0 ;
  output [0:0]Q;
  input areset_d1;
  input [0:0]E;
  input aclk;
  input m_valid_i_reg_0;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input \gen_rep[0].fifoaddr_reg[1]_1 ;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  input p_1_in;
  input [0:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  input m_valid_i_reg_1;
  input [0:0]m_select_enc;
  input [0:0]m_axi_wready;
  input [1:0]D;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire [1:1]fifoaddr_i;
  wire \gen_rep[0].fifoaddr[0]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire \gen_rep[0].fifoaddr_reg[1]_1 ;
  wire m_avalid;
  wire [0:0]m_axi_wready;
  wire [0:0]m_select_enc;
  wire m_valid_i_i_3__0_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_1_in;
  wire p_6_in;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_6_in),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(Q),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:001,ZERO:100,ONE:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(p_6_in),
        .S(areset_d1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__1 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA5A00000040)) 
    \gen_rep[0].fifoaddr[1]_i_1__1 
       (.I0(\gen_rep[0].fifoaddr_reg[1]_1 ),
        .I1(Q),
        .I2(\gen_rep[0].fifoaddr_reg[0]_1 ),
        .I3(p_1_in),
        .I4(\gen_rep[0].fifoaddr_reg[0]_2 ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FBFF040F0400FBF)) 
    \gen_rep[0].fifoaddr[1]_i_2__1 
       (.I0(\gen_rep[0].fifoaddr_reg[1]_1 ),
        .I1(Q),
        .I2(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(fifoaddr[0]),
        .I5(fifoaddr[1]),
        .O(fifoaddr_i));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ),
        .D(\gen_rep[0].fifoaddr[0]_i_1__1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ),
        .D(fifoaddr_i),
        .Q(fifoaddr[1]),
        .S(SR));
  LUT6 #(
    .INIT(64'hFFFFAAABAAAAAAAB)) 
    m_valid_i_i_1__1
       (.I0(m_valid_i_reg_0),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .I3(m_valid_i_i_3__0_n_0),
        .I4(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I5(p_6_in),
        .O(\gen_rep[0].fifoaddr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    m_valid_i_i_3__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_valid_i_reg_1),
        .I2(m_avalid),
        .I3(m_select_enc),
        .I4(m_axi_wready),
        .O(m_valid_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .Q(m_avalid),
        .R(areset_d1));
endmodule

module design_1_axi_crossbar_1_0_axi_data_fifo_v2_1_36_ndeep_srl
   (push,
    \s_axi_awaddr[23] ,
    m_valid_i_reg,
    \FSM_onehot_state_reg[0] ,
    Q,
    aclk,
    match,
    \gen_rep[0].fifoaddr_reg[1] ,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    \gen_rep[0].fifoaddr_reg[1]_1 ,
    s_axi_awvalid,
    m_avalid_0,
    \storage_data1_reg[0] ,
    mi_wready_1,
    m_avalid,
    m_axi_wready,
    \gen_rep[0].fifoaddr_reg[0] ,
    load_s1);
  output push;
  output [0:0]\s_axi_awaddr[23] ;
  output m_valid_i_reg;
  output \FSM_onehot_state_reg[0] ;
  input [1:0]Q;
  input aclk;
  input match;
  input [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_1 ;
  input [0:0]s_axi_awvalid;
  input m_avalid_0;
  input \storage_data1_reg[0] ;
  input mi_wready_1;
  input m_avalid;
  input [0:0]m_axi_wready;
  input \gen_rep[0].fifoaddr_reg[0] ;
  input load_s1;

  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire aclk;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_1 ;
  wire load_s1;
  wire m_avalid;
  wire m_avalid_0;
  wire [0:0]m_axi_wready;
  wire m_valid_i_reg;
  wire match;
  wire mi_wready_1;
  wire push;
  wire [0:0]\s_axi_awaddr[23] ;
  wire [0:0]s_axi_awvalid;
  wire \storage_data1_reg[0] ;
  wire [0:0]storage_data2;
  wire \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "inst/\\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg " *) 
  (* srl_name = "inst/\\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 
       (.A({1'b0,1'b0,1'b0,Q}),
        .CE(push),
        .CLK(aclk),
        .D(\s_axi_awaddr[23] ),
        .Q(storage_data2),
        .Q31(\NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0000F88800000000)) 
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1 
       (.I0(\gen_rep[0].fifoaddr_reg[1] [1]),
        .I1(m_valid_i_reg),
        .I2(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I3(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I4(\gen_rep[0].fifoaddr_reg[1]_1 ),
        .I5(s_axi_awvalid),
        .O(push));
  LUT6 #(
    .INIT(64'hFFFFFFFF4C7F7F7F)) 
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2 
       (.I0(m_avalid_0),
        .I1(\storage_data1_reg[0] ),
        .I2(mi_wready_1),
        .I3(m_avalid),
        .I4(m_axi_wready),
        .I5(\gen_rep[0].fifoaddr_reg[0] ),
        .O(m_valid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.active_target_enc[0]_i_1 
       (.I0(match),
        .O(\s_axi_awaddr[23] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \storage_data1[0]_i_1 
       (.I0(storage_data2),
        .I1(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I2(match),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axi_register_slice
   (m_axi_bready,
    p_1_in,
    st_mr_rvalid,
    p_0_in,
    s_ready_i_reg,
    \aresetn_d_reg[1] ,
    E,
    s_axi_rdata,
    Q,
    \s_axi_arvalid[1] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \m_payload_i_reg[34] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    s_axi_rready_1_sp_1,
    s_axi_rvalid,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    D,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ,
    \m_payload_i_reg[1] ,
    aclk,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    m_axi_bvalid,
    m_axi_rvalid,
    \gen_single_thread.active_target_hot_0 ,
    \gen_single_thread.active_target_hot_1 ,
    \gen_arbiter.qual_reg_reg[1] ,
    s_axi_arvalid,
    \gen_arbiter.qual_reg_reg[0] ,
    match,
    \gen_master_slots[1].r_issuing_cnt_reg ,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    \gen_arbiter.qual_reg_reg[0]_1 ,
    match_2,
    s_axi_rready,
    \s_axi_rvalid[1] ,
    \s_axi_rvalid[1]_0 ,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    match_3,
    \gen_master_slots[1].w_issuing_cnt_reg ,
    \gen_arbiter.qual_reg_reg[0]_2 ,
    \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[1] ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    aresetn,
    m_axi_bresp);
  output [0:0]m_axi_bready;
  output p_1_in;
  output [0:0]st_mr_rvalid;
  output p_0_in;
  output s_ready_i_reg;
  output \aresetn_d_reg[1] ;
  output [0:0]E;
  output [29:0]s_axi_rdata;
  output [20:0]Q;
  output [1:0]\s_axi_arvalid[1] ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  output \m_payload_i_reg[34] ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  output s_axi_rready_1_sp_1;
  output [0:0]s_axi_rvalid;
  output \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output [0:0]D;
  output \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  output [1:0]\m_payload_i_reg[1] ;
  input aclk;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]s_axi_bready;
  input [0:0]m_axi_bvalid;
  input [0:0]m_axi_rvalid;
  input [1:0]\gen_single_thread.active_target_hot_0 ;
  input [1:0]\gen_single_thread.active_target_hot_1 ;
  input \gen_arbiter.qual_reg_reg[1] ;
  input [1:0]s_axi_arvalid;
  input [1:0]\gen_arbiter.qual_reg_reg[0] ;
  input match;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input \gen_arbiter.qual_reg_reg[0]_1 ;
  input match_2;
  input [1:0]s_axi_rready;
  input [1:0]\s_axi_rvalid[1] ;
  input [0:0]\s_axi_rvalid[1]_0 ;
  input [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input match_3;
  input [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  input \gen_arbiter.qual_reg_reg[0]_2 ;
  input \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  input [0:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input aresetn;
  input [1:0]m_axi_bresp;

  wire [0:0]D;
  wire [0:0]E;
  wire [20:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire [1:0]\gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.qual_reg_reg[0]_1 ;
  wire \gen_arbiter.qual_reg_reg[0]_2 ;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [1:0]\gen_single_thread.active_target_hot_0 ;
  wire [1:0]\gen_single_thread.active_target_hot_1 ;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[34] ;
  wire match;
  wire match_2;
  wire match_3;
  wire p_0_in;
  wire p_1_in;
  wire [1:0]s_axi_arvalid;
  wire [1:0]\s_axi_arvalid[1] ;
  wire [0:0]s_axi_bready;
  wire [29:0]s_axi_rdata;
  wire [1:0]s_axi_rready;
  wire s_axi_rready_1_sn_1;
  wire [0:0]s_axi_rvalid;
  wire [1:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[1]_0 ;
  wire s_ready_i_reg;
  wire [0:0]st_mr_rvalid;

  assign s_axi_rready_1_sp_1 = s_axi_rready_1_sn_1;
  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized1_5 \b.b_pipe 
       (.D(D),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0]_2 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (\gen_master_slots[0].w_issuing_cnt_reg[1] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1]_0 (\gen_master_slots[0].w_issuing_cnt_reg[1]_0 ),
        .\gen_master_slots[1].w_issuing_cnt_reg (\gen_master_slots[1].w_issuing_cnt_reg ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .m_valid_i_reg_inv_0(E),
        .match_3(match_3),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready));
  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized2_6 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0] ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_arbiter.qual_reg_reg[0]_0 ),
        .\gen_arbiter.qual_reg_reg[0]_1 (\gen_arbiter.qual_reg_reg[0]_1 ),
        .\gen_arbiter.qual_reg_reg[1] (\gen_arbiter.qual_reg_reg[1] ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_1 (\gen_master_slots[0].r_issuing_cnt_reg[0]_1 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[1] (\gen_master_slots[0].r_issuing_cnt_reg[1] ),
        .\gen_master_slots[1].r_issuing_cnt_reg (\gen_master_slots[1].r_issuing_cnt_reg ),
        .\gen_single_thread.active_target_hot_0 (\gen_single_thread.active_target_hot_0 ),
        .\gen_single_thread.active_target_hot_1 (\gen_single_thread.active_target_hot_1 ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .m_valid_i_reg_0(st_mr_rvalid),
        .match(match),
        .match_2(match_2),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_arvalid(s_axi_arvalid),
        .\s_axi_arvalid[1] (\s_axi_arvalid[1] ),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_1_sp_1(s_axi_rready_1_sn_1),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[1] (\s_axi_rvalid[1] ),
        .\s_axi_rvalid[1]_0 (\s_axi_rvalid[1]_0 ),
        .s_ready_i_reg_0(s_ready_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_36_axi_register_slice" *) 
module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axi_register_slice_2
   (st_mr_bvalid,
    mi_bready_1,
    m_valid_i_reg,
    mi_rready_1,
    m_valid_i_reg_0,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    Q,
    m_valid_i_reg_1,
    s_axi_rlast,
    p_0_in,
    m_valid_i_reg_2,
    aclk,
    p_1_in,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    mi_bvalid_1,
    s_ready_i_reg,
    mi_rvalid_1,
    \gen_master_slots[1].r_issuing_cnt_reg ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    s_axi_rready,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_hot_0 ,
    \s_axi_rlast[0] ,
    mi_rid_1,
    mi_rlast_1);
  output [0:0]st_mr_bvalid;
  output mi_bready_1;
  output [0:0]m_valid_i_reg;
  output mi_rready_1;
  output m_valid_i_reg_0;
  output \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  output [1:0]Q;
  output m_valid_i_reg_1;
  output [1:0]s_axi_rlast;
  input p_0_in;
  input m_valid_i_reg_2;
  input aclk;
  input p_1_in;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]s_axi_bready;
  input mi_bvalid_1;
  input s_ready_i_reg;
  input mi_rvalid_1;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  input [1:0]s_axi_rready;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\gen_single_thread.active_target_hot_0 ;
  input [0:0]\s_axi_rlast[0] ;
  input mi_rid_1;
  input mi_rlast_1;

  wire [1:0]Q;
  wire aclk;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_0 ;
  wire [0:0]m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire mi_bready_1;
  wire mi_bvalid_1;
  wire mi_rid_1;
  wire mi_rlast_1;
  wire mi_rready_1;
  wire mi_rvalid_1;
  wire p_0_in;
  wire p_1_in;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_rlast;
  wire [0:0]\s_axi_rlast[0] ;
  wire [1:0]s_axi_rready;
  wire s_ready_i_reg;
  wire [0:0]st_mr_bvalid;

  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .m_valid_i_reg_0(m_valid_i_reg_0),
        .m_valid_i_reg_1(m_valid_i_reg_2),
        .mi_bready_1(mi_bready_1),
        .mi_bvalid_1(mi_bvalid_1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(s_ready_i_reg),
        .st_mr_bvalid(st_mr_bvalid));
  design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized2 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_master_slots[1].r_issuing_cnt_reg (\gen_master_slots[1].r_issuing_cnt_reg ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_0 (\gen_single_thread.active_target_hot_0 ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_1),
        .mi_rid_1(mi_rid_1),
        .mi_rlast_1(mi_rlast_1),
        .mi_rvalid_1(mi_rvalid_1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_rlast(s_axi_rlast),
        .\s_axi_rlast[0] (\s_axi_rlast[0] ),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(mi_rready_1));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_36_axic_register_slice" *) 
module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized1
   (st_mr_bvalid,
    mi_bready_1,
    m_valid_i_reg_0,
    p_0_in,
    m_valid_i_reg_1,
    aclk,
    p_1_in,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    mi_bvalid_1,
    s_ready_i_reg_0);
  output [0:0]st_mr_bvalid;
  output mi_bready_1;
  output m_valid_i_reg_0;
  input p_0_in;
  input m_valid_i_reg_1;
  input aclk;
  input p_1_in;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]s_axi_bready;
  input mi_bvalid_1;
  input s_ready_i_reg_0;

  wire aclk;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire mi_bready_1;
  wire mi_bvalid_1;
  wire p_0_in;
  wire p_1_in;
  wire [0:0]s_axi_bready;
  wire s_ready_i_i_1__2_n_0;
  wire s_ready_i_reg_0;
  wire [0:0]st_mr_bvalid;

  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_2 
       (.I0(st_mr_bvalid),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(s_axi_bready),
        .O(m_valid_i_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_1),
        .Q(st_mr_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h80D5FFFF)) 
    s_ready_i_i_1__2
       (.I0(st_mr_bvalid),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(s_axi_bready),
        .I3(mi_bvalid_1),
        .I4(s_ready_i_reg_0),
        .O(s_ready_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(mi_bready_1),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_36_axic_register_slice" *) 
module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized1_5
   (m_axi_bready,
    p_1_in,
    \aresetn_d_reg[1]_0 ,
    m_valid_i_reg_inv_0,
    p_0_in,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    D,
    \m_payload_i_reg[1]_0 ,
    aclk,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    match_3,
    \gen_master_slots[1].w_issuing_cnt_reg ,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ,
    aresetn,
    m_axi_bresp);
  output [0:0]m_axi_bready;
  output p_1_in;
  output \aresetn_d_reg[1]_0 ;
  output m_valid_i_reg_inv_0;
  output p_0_in;
  output \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output [0:0]D;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input aclk;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]s_axi_bready;
  input [0:0]m_axi_bvalid;
  input [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input match_3;
  input [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  input aresetn;
  input [1:0]m_axi_bresp;

  wire [0:0]D;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \gen_arbiter.qual_reg[0]_i_4_n_0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire [1:0]\gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[1]_0 ;
  wire \gen_master_slots[1].reg_slice_mi/reset ;
  wire [0:0]\gen_master_slots[1].w_issuing_cnt_reg ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire m_valid_i_inv_i_1_n_0;
  wire m_valid_i_reg_inv_0;
  wire match_3;
  wire p_0_in;
  wire p_1_in;
  wire [0:0]s_axi_bready;
  wire s_ready_i_i_2__1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(\gen_master_slots[1].reg_slice_mi/reset ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(\gen_master_slots[1].reg_slice_mi/reset ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(\gen_master_slots[1].reg_slice_mi/reset ));
  LUT6 #(
    .INIT(64'h0400040004FF0400)) 
    \gen_arbiter.qual_reg[0]_i_2__0 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[1] [0]),
        .I1(\gen_master_slots[0].w_issuing_cnt_reg[1] [1]),
        .I2(\gen_arbiter.qual_reg[0]_i_4_n_0 ),
        .I3(match_3),
        .I4(\gen_master_slots[1].w_issuing_cnt_reg ),
        .I5(\gen_arbiter.qual_reg_reg[0] ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.qual_reg[0]_i_4 
       (.I0(m_valid_i_reg_inv_0),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(s_axi_bready),
        .O(\gen_arbiter.qual_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40FFBF00BF0040FF)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_2 
       (.I0(m_valid_i_reg_inv_0),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(s_axi_bready),
        .I3(\gen_master_slots[0].w_issuing_cnt_reg[1]_0 ),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[1] [1]),
        .I5(\gen_master_slots[0].w_issuing_cnt_reg[1] [0]),
        .O(D));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg_inv_0),
        .D(m_axi_bresp[0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg_inv_0),
        .D(m_axi_bresp[1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    m_valid_i_i_1__4
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h7444)) 
    m_valid_i_inv_i_1
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(s_axi_bready),
        .I3(\gen_single_thread.active_target_hot ),
        .O(m_valid_i_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1_n_0),
        .Q(m_valid_i_reg_inv_0),
        .S(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1__0
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h40EAFFFF)) 
    s_ready_i_i_2__1
       (.I0(m_valid_i_reg_inv_0),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(s_axi_bready),
        .I3(m_axi_bvalid),
        .I4(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2__1_n_0),
        .Q(m_axi_bready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_36_axic_register_slice" *) 
module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized2
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    Q,
    m_valid_i_reg_1,
    s_axi_rlast,
    p_0_in,
    aclk,
    p_1_in,
    mi_rvalid_1,
    \gen_master_slots[1].r_issuing_cnt_reg ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    s_axi_rready,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_hot_0 ,
    \s_axi_rlast[0] ,
    mi_rid_1,
    mi_rlast_1);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  output [1:0]Q;
  output m_valid_i_reg_1;
  output [1:0]s_axi_rlast;
  input p_0_in;
  input aclk;
  input p_1_in;
  input mi_rvalid_1;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  input \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  input [1:0]s_axi_rready;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\gen_single_thread.active_target_hot_0 ;
  input [0:0]\s_axi_rlast[0] ;
  input mi_rid_1;
  input mi_rlast_1;

  wire [1:0]Q;
  wire aclk;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_0 ;
  wire m_valid_i0;
  wire m_valid_i_i_2__2_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire mi_rid_1;
  wire mi_rlast_1;
  wire mi_rvalid_1;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire [1:0]s_axi_rlast;
  wire [0:0]\s_axi_rlast[0] ;
  wire [1:0]s_axi_rready;
  wire s_ready_i_i_1__3_n_0;
  wire s_ready_i_reg_0;
  wire [35:34]skid_buffer;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \gen_arbiter.any_grant_i_5 
       (.I0(\gen_master_slots[1].r_issuing_cnt_reg ),
        .I1(\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .I2(Q[0]),
        .I3(m_valid_i_reg_0),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_2 
       (.I0(m_valid_i_reg_0),
        .I1(Q[0]),
        .I2(\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .O(m_valid_i_reg_1));
  LUT6 #(
    .INIT(64'h8F808080FFFFFFFF)) 
    \m_payload_i[35]_i_1__0 
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(Q[1]),
        .I3(s_axi_rready[0]),
        .I4(\gen_single_thread.active_target_hot_0 ),
        .I5(m_valid_i_reg_0),
        .O(p_1_in_0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[34]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[35]),
        .Q(Q[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    m_valid_i_i_1__3
       (.I0(s_ready_i_reg_0),
        .I1(mi_rvalid_1),
        .I2(m_valid_i_i_2__2_n_0),
        .O(m_valid_i0));
  LUT6 #(
    .INIT(64'h002AAA2AAA2AAA2A)) 
    m_valid_i_i_2__2
       (.I0(m_valid_i_reg_0),
        .I1(\gen_single_thread.active_target_hot_0 ),
        .I2(s_axi_rready[0]),
        .I3(Q[1]),
        .I4(\gen_single_thread.active_target_hot ),
        .I5(s_axi_rready[1]),
        .O(m_valid_i_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(m_valid_i_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rlast[0]_INST_0 
       (.I0(Q[0]),
        .I1(\gen_single_thread.active_target_hot_0 ),
        .I2(\s_axi_rlast[0] ),
        .O(s_axi_rlast[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rlast[1]_INST_0 
       (.I0(Q[0]),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(\s_axi_rlast[0] ),
        .O(s_axi_rlast[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    s_ready_i_i_1__3
       (.I0(s_ready_i_reg_0),
        .I1(mi_rvalid_1),
        .I2(m_valid_i_i_2__2_n_0),
        .O(s_ready_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__3_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[34]_i_1 
       (.I0(mi_rlast_1),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[35]_i_1 
       (.I0(mi_rid_1),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[35]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_36_axic_register_slice" *) 
module design_1_axi_crossbar_1_0_axi_register_slice_v2_1_36_axic_register_slice__parameterized2_6
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    s_axi_rdata,
    \s_axi_arvalid[1] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \m_payload_i_reg[34]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    s_axi_rready_1_sp_1,
    Q,
    s_axi_rvalid,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ,
    p_0_in,
    aclk,
    p_1_in,
    m_axi_rvalid,
    \gen_single_thread.active_target_hot_0 ,
    \gen_single_thread.active_target_hot_1 ,
    \gen_arbiter.qual_reg_reg[1] ,
    s_axi_arvalid,
    \gen_arbiter.qual_reg_reg[0] ,
    match,
    \gen_master_slots[1].r_issuing_cnt_reg ,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    \gen_arbiter.qual_reg_reg[0]_1 ,
    match_2,
    s_axi_rready,
    \s_axi_rvalid[1] ,
    \s_axi_rvalid[1]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[1] ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output [29:0]s_axi_rdata;
  output [1:0]\s_axi_arvalid[1] ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  output \m_payload_i_reg[34]_0 ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  output s_axi_rready_1_sp_1;
  output [20:0]Q;
  output [0:0]s_axi_rvalid;
  output \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [0:0]m_axi_rvalid;
  input [1:0]\gen_single_thread.active_target_hot_0 ;
  input [1:0]\gen_single_thread.active_target_hot_1 ;
  input \gen_arbiter.qual_reg_reg[1] ;
  input [1:0]s_axi_arvalid;
  input [1:0]\gen_arbiter.qual_reg_reg[0] ;
  input match;
  input [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input \gen_arbiter.qual_reg_reg[0]_1 ;
  input match_2;
  input [1:0]s_axi_rready;
  input [1:0]\s_axi_rvalid[1] ;
  input [0:0]\s_axi_rvalid[1]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  input [0:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire [20:0]Q;
  wire aclk;
  wire [1:0]\gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.qual_reg_reg[0]_1 ;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg ;
  wire [1:0]\gen_single_thread.active_target_hot_0 ;
  wire [1:0]\gen_single_thread.active_target_hot_1 ;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire \m_payload_i_reg[34]_0 ;
  wire m_valid_i0;
  wire m_valid_i_reg_0;
  wire match;
  wire match_2;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire [1:0]s_axi_arvalid;
  wire [1:0]\s_axi_arvalid[1] ;
  wire [29:0]s_axi_rdata;
  wire [1:0]s_axi_rready;
  wire s_axi_rready_1_sn_1;
  wire [0:0]s_axi_rvalid;
  wire [1:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[1]_0 ;
  wire s_ready_i_i_1__1_n_0;
  wire s_ready_i_i_2__0_n_0;
  wire s_ready_i_reg_0;
  wire [35:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [32:3]st_mr_rmesg;

  assign s_axi_rready_1_sp_1 = s_axi_rready_1_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    \gen_arbiter.any_grant_i_6 
       (.I0(\gen_arbiter.qual_reg_reg[0] [0]),
        .I1(\gen_arbiter.qual_reg_reg[0] [1]),
        .I2(\gen_master_slots[0].r_issuing_cnt_reg[1] ),
        .I3(m_valid_i_reg_0),
        .I4(Q[19]),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h4000400040FF4000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_4 
       (.I0(\gen_arbiter.qual_reg_reg[0] [0]),
        .I1(\gen_arbiter.qual_reg_reg[0] [1]),
        .I2(\m_payload_i_reg[34]_0 ),
        .I3(match),
        .I4(\gen_master_slots[1].r_issuing_cnt_reg ),
        .I5(\gen_arbiter.qual_reg_reg[0]_0 ),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h4000400040FF4000)) 
    \gen_arbiter.m_grant_enc_i[0]_i_6 
       (.I0(\gen_arbiter.qual_reg_reg[0] [0]),
        .I1(\gen_arbiter.qual_reg_reg[0] [1]),
        .I2(\m_payload_i_reg[34]_0 ),
        .I3(match_2),
        .I4(\gen_master_slots[1].r_issuing_cnt_reg ),
        .I5(\gen_arbiter.qual_reg_reg[0]_0 ),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_arbiter.qual_reg[0]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .I1(\gen_arbiter.qual_reg_reg[0]_1 ),
        .I2(s_axi_arvalid[0]),
        .O(\s_axi_arvalid[1] [0]));
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_arbiter.qual_reg[1]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .I1(\gen_arbiter.qual_reg_reg[1] ),
        .I2(s_axi_arvalid[1]),
        .O(\s_axi_arvalid[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_3 
       (.I0(Q[19]),
        .I1(m_valid_i_reg_0),
        .I2(\gen_master_slots[0].r_issuing_cnt_reg[1] ),
        .O(\m_payload_i_reg[34]_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \gen_single_thread.accept_cnt[1]_i_3 
       (.I0(s_axi_rready[1]),
        .I1(\s_axi_rvalid[1] [0]),
        .I2(\gen_single_thread.active_target_hot_0 [1]),
        .I3(Q[19]),
        .I4(s_axi_rvalid),
        .O(s_axi_rready_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(m_axi_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  LUT6 #(
    .INIT(64'h8F808080FFFFFFFF)) 
    \m_payload_i[35]_i_1 
       (.I0(s_axi_rready[1]),
        .I1(\gen_single_thread.active_target_hot_0 [0]),
        .I2(Q[20]),
        .I3(s_axi_rready[0]),
        .I4(\gen_single_thread.active_target_hot_1 [0]),
        .I5(m_valid_i_reg_0),
        .O(p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_2 
       (.I0(m_axi_rid),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[0]),
        .Q(st_mr_rmesg[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[10]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[11]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[12]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[13]),
        .Q(st_mr_rmesg[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[14]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[15]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[16]),
        .Q(st_mr_rmesg[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[17]),
        .Q(st_mr_rmesg[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[18]),
        .Q(st_mr_rmesg[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[19]),
        .Q(st_mr_rmesg[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[1]),
        .Q(st_mr_rmesg[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[20]),
        .Q(st_mr_rmesg[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[21]),
        .Q(st_mr_rmesg[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[22]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[23]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[24]),
        .Q(st_mr_rmesg[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[25]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[26]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[27]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[28]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[29]),
        .Q(st_mr_rmesg[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[30]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[31]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[32]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[33]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[34]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[35]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[3]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[4]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[5]),
        .Q(st_mr_rmesg[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[6]),
        .Q(st_mr_rmesg[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[7]),
        .Q(st_mr_rmesg[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[8]),
        .Q(st_mr_rmesg[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[9]),
        .Q(Q[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    m_valid_i_i_2__1
       (.I0(s_ready_i_reg_0),
        .I1(m_axi_rvalid),
        .I2(s_ready_i_i_2__0_n_0),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(m_valid_i_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(\gen_single_thread.active_target_hot_1 [1]),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \s_axi_rvalid[1]_INST_0 
       (.I0(m_valid_i_reg_0),
        .I1(Q[20]),
        .I2(\gen_single_thread.active_target_hot_0 [0]),
        .I3(\s_axi_rvalid[1]_0 ),
        .I4(\s_axi_rvalid[1] [1]),
        .I5(\gen_single_thread.active_target_hot_0 [1]),
        .O(s_axi_rvalid));
  LUT3 #(
    .INIT(8'h2F)) 
    s_ready_i_i_1__1
       (.I0(s_ready_i_reg_0),
        .I1(m_axi_rvalid),
        .I2(s_ready_i_i_2__0_n_0),
        .O(s_ready_i_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h002AAA2AAA2AAA2A)) 
    s_ready_i_i_2__0
       (.I0(m_valid_i_reg_0),
        .I1(\gen_single_thread.active_target_hot_1 [0]),
        .I2(s_axi_rready[0]),
        .I3(Q[20]),
        .I4(\gen_single_thread.active_target_hot_0 [0]),
        .I5(s_axi_rready[1]),
        .O(s_ready_i_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__1_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_crossbar_1_0,axi_crossbar_v2_1_38_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_38_axi_crossbar,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axi_crossbar_1_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [0:0] [1:1]" *) (* X_INTERFACE_MODE = "slave S00_AXI, slave S01_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32]" *) input [63:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8]" *) input [15:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3]" *) input [5:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2]" *) input [3:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1]" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4]" *) input [7:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]" *) input [5:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4]" *) input [7:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]" *) input [1:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]" *) output [1:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32]" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4]" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1]" *) input [1:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]" *) input [1:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]" *) output [1:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [0:0] [1:1]" *) output [1:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]" *) output [3:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]" *) output [1:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]" *) input [1:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [0:0] [1:1]" *) input [1:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32]" *) input [63:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8]" *) input [15:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3]" *) input [5:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2]" *) input [3:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1]" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4]" *) input [7:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]" *) input [5:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4]" *) input [7:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]" *) input [1:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]" *) output [1:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [0:0] [1:1]" *) output [1:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32]" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]" *) output [3:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1]" *) output [1:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]" *) output [1:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]" *) input [1:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 4, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [0:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [0:0]m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [0:0]m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [0:0]m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [63:0]s_axi_araddr;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [1:0]s_axi_arready;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [0:0]\^s_axi_awready ;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [1:0]\^s_axi_bresp ;
  wire [0:0]\^s_axi_bvalid ;
  wire [63:0]s_axi_rdata;
  wire [1:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [3:0]s_axi_rresp;
  wire [1:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [0:0]\^s_axi_wready ;
  wire [7:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [1:1]NLW_inst_s_axi_awready_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [3:2]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [1:1]NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ruser_UNCONNECTED;
  wire [1:1]NLW_inst_s_axi_wready_UNCONNECTED;

  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign s_axi_awready[1] = \<const0> ;
  assign s_axi_awready[0] = \^s_axi_awready [0];
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[3] = \<const0> ;
  assign s_axi_bresp[2] = \<const0> ;
  assign s_axi_bresp[1:0] = \^s_axi_bresp [1:0];
  assign s_axi_bvalid[1] = \<const0> ;
  assign s_axi_bvalid[0] = \^s_axi_bvalid [0];
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_wready[1] = \<const0> ;
  assign s_axi_wready[0] = \^s_axi_wready [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "spartanuplus" *) 
  (* C_M_AXI_ADDR_WIDTH = "23" *) 
  (* C_M_AXI_BASE_ADDR = "64'b0000000000000000000000000000000010000000000000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "3" *) 
  (* C_M_AXI_READ_ISSUING = "2" *) 
  (* C_M_AXI_SECURE = "0" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "1" *) 
  (* C_M_AXI_WRITE_ISSUING = "2" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "1" *) 
  (* C_NUM_SLAVE_SLOTS = "2" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "64'b0000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
  (* C_S_AXI_SINGLE_THREAD = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "64'b0000000000000000000000000000001000000000000000000000000000000010" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "rtl" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "32'b00000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "1'b1" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "1'b1" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "2'b01" *) 
  design_1_axi_crossbar_1_0_axi_crossbar_v2_1_38_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser({1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[31:0]}),
        .s_axi_awburst({1'b0,1'b0,s_axi_awburst[1:0]}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,s_axi_awcache[3:0]}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awlen[7:0]}),
        .s_axi_awlock({1'b0,s_axi_awlock[0]}),
        .s_axi_awprot({1'b0,1'b0,1'b0,s_axi_awprot[2:0]}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,s_axi_awqos[3:0]}),
        .s_axi_awready({NLW_inst_s_axi_awready_UNCONNECTED[1],\^s_axi_awready }),
        .s_axi_awsize({1'b0,1'b0,1'b0,s_axi_awsize[2:0]}),
        .s_axi_awuser({1'b0,1'b0}),
        .s_axi_awvalid({1'b0,s_axi_awvalid[0]}),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[1:0]),
        .s_axi_bready({1'b0,s_axi_bready[0]}),
        .s_axi_bresp({NLW_inst_s_axi_bresp_UNCONNECTED[3:2],\^s_axi_bresp }),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[1:0]),
        .s_axi_bvalid({NLW_inst_s_axi_bvalid_UNCONNECTED[1],\^s_axi_bvalid }),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[1:0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[31:0]}),
        .s_axi_wid({1'b0,1'b0}),
        .s_axi_wlast({1'b0,s_axi_wlast[0]}),
        .s_axi_wready({NLW_inst_s_axi_wready_UNCONNECTED[1],\^s_axi_wready }),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,s_axi_wstrb[3:0]}),
        .s_axi_wuser({1'b0,1'b0}),
        .s_axi_wvalid({1'b0,s_axi_wvalid[0]}));
endmodule
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
