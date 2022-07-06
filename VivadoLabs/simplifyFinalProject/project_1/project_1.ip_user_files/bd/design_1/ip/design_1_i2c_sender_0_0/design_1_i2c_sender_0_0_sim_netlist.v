// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Jun 25 17:14:32 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_i2c_sender_0_0/design_1_i2c_sender_0_0_sim_netlist.v
// Design      : design_1_i2c_sender_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2c_sender_0_0,i2c_sender,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "i2c_sender,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_i2c_sender_0_0
   (clk,
    siod,
    sioc,
    resend,
    finished);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  inout siod;
  output sioc;
  input resend;
  output finished;

  wire clk;
  wire finished;
  wire resend;
  wire sioc;
  wire siod;

  design_1_i2c_sender_0_0_i2c_sender U0
       (.clk(clk),
        .finished(finished),
        .resend(resend),
        .sioc(sioc),
        .siod(siod));
endmodule

(* ORIG_REF_NAME = "i2c_sender" *) 
module design_1_i2c_sender_0_0_i2c_sender
   (siod,
    finished,
    sioc,
    clk,
    resend);
  output siod;
  output finished;
  output sioc;
  input clk;
  input resend;

  wire \address[7]_i_2_n_0 ;
  wire [7:0]address_reg;
  wire advance;
  wire \busy_sr[0]_i_1_n_0 ;
  wire \busy_sr[0]_i_3_n_0 ;
  wire \busy_sr[0]_i_4_n_0 ;
  wire \busy_sr[0]_i_5_n_0 ;
  wire \busy_sr[0]_i_6_n_0 ;
  wire \busy_sr[10]_i_1_n_0 ;
  wire \busy_sr[11]_i_1_n_0 ;
  wire \busy_sr[12]_i_1_n_0 ;
  wire \busy_sr[13]_i_1_n_0 ;
  wire \busy_sr[14]_i_1_n_0 ;
  wire \busy_sr[15]_i_1_n_0 ;
  wire \busy_sr[16]_i_1_n_0 ;
  wire \busy_sr[17]_i_1_n_0 ;
  wire \busy_sr[18]_i_1_n_0 ;
  wire \busy_sr[19]_i_1_n_0 ;
  wire \busy_sr[1]_i_1_n_0 ;
  wire \busy_sr[20]_i_1_n_0 ;
  wire \busy_sr[21]_i_1_n_0 ;
  wire \busy_sr[22]_i_1_n_0 ;
  wire \busy_sr[23]_i_1_n_0 ;
  wire \busy_sr[24]_i_1_n_0 ;
  wire \busy_sr[25]_i_1_n_0 ;
  wire \busy_sr[26]_i_1_n_0 ;
  wire \busy_sr[27]_i_1_n_0 ;
  wire \busy_sr[28]_i_1_n_0 ;
  wire \busy_sr[29]_i_1_n_0 ;
  wire \busy_sr[2]_i_1_n_0 ;
  wire \busy_sr[30]_i_1_n_0 ;
  wire \busy_sr[31]_i_1_n_0 ;
  wire \busy_sr[31]_i_2_n_0 ;
  wire \busy_sr[3]_i_1_n_0 ;
  wire \busy_sr[4]_i_1_n_0 ;
  wire \busy_sr[5]_i_1_n_0 ;
  wire \busy_sr[6]_i_1_n_0 ;
  wire \busy_sr[7]_i_1_n_0 ;
  wire \busy_sr[8]_i_1_n_0 ;
  wire \busy_sr[9]_i_1_n_0 ;
  wire \busy_sr_reg_n_0_[0] ;
  wire \busy_sr_reg_n_0_[10] ;
  wire \busy_sr_reg_n_0_[11] ;
  wire \busy_sr_reg_n_0_[12] ;
  wire \busy_sr_reg_n_0_[13] ;
  wire \busy_sr_reg_n_0_[14] ;
  wire \busy_sr_reg_n_0_[15] ;
  wire \busy_sr_reg_n_0_[16] ;
  wire \busy_sr_reg_n_0_[17] ;
  wire \busy_sr_reg_n_0_[18] ;
  wire \busy_sr_reg_n_0_[1] ;
  wire \busy_sr_reg_n_0_[21] ;
  wire \busy_sr_reg_n_0_[22] ;
  wire \busy_sr_reg_n_0_[23] ;
  wire \busy_sr_reg_n_0_[24] ;
  wire \busy_sr_reg_n_0_[25] ;
  wire \busy_sr_reg_n_0_[26] ;
  wire \busy_sr_reg_n_0_[27] ;
  wire \busy_sr_reg_n_0_[28] ;
  wire \busy_sr_reg_n_0_[29] ;
  wire \busy_sr_reg_n_0_[2] ;
  wire \busy_sr_reg_n_0_[30] ;
  wire \busy_sr_reg_n_0_[3] ;
  wire \busy_sr_reg_n_0_[4] ;
  wire \busy_sr_reg_n_0_[5] ;
  wire \busy_sr_reg_n_0_[6] ;
  wire \busy_sr_reg_n_0_[7] ;
  wire \busy_sr_reg_n_0_[8] ;
  wire \busy_sr_reg_n_0_[9] ;
  wire clk;
  wire \data_sr[0]_i_1_n_0 ;
  wire \data_sr[12]_i_1_n_0 ;
  wire \data_sr[14]_i_1_n_0 ;
  wire \data_sr[15]_i_1_n_0 ;
  wire \data_sr[17]_i_1_n_0 ;
  wire \data_sr[19]_i_1_n_0 ;
  wire \data_sr[19]_i_2_n_0 ;
  wire \data_sr[19]_i_3_n_0 ;
  wire \data_sr[31]_i_1_n_0 ;
  wire \data_sr[3]_i_1_n_0 ;
  wire \data_sr[4]_i_1_n_0 ;
  wire \data_sr[6]_i_1_n_0 ;
  wire \data_sr[8]_i_1_n_0 ;
  wire \data_sr_reg_n_0_[0] ;
  wire \data_sr_reg_n_0_[10] ;
  wire \data_sr_reg_n_0_[11] ;
  wire \data_sr_reg_n_0_[12] ;
  wire \data_sr_reg_n_0_[13] ;
  wire \data_sr_reg_n_0_[14] ;
  wire \data_sr_reg_n_0_[15] ;
  wire \data_sr_reg_n_0_[16] ;
  wire \data_sr_reg_n_0_[17] ;
  wire \data_sr_reg_n_0_[18] ;
  wire \data_sr_reg_n_0_[19] ;
  wire \data_sr_reg_n_0_[1] ;
  wire \data_sr_reg_n_0_[20] ;
  wire \data_sr_reg_n_0_[21] ;
  wire \data_sr_reg_n_0_[22] ;
  wire \data_sr_reg_n_0_[23] ;
  wire \data_sr_reg_n_0_[24] ;
  wire \data_sr_reg_n_0_[25] ;
  wire \data_sr_reg_n_0_[26] ;
  wire \data_sr_reg_n_0_[27] ;
  wire \data_sr_reg_n_0_[28] ;
  wire \data_sr_reg_n_0_[29] ;
  wire \data_sr_reg_n_0_[2] ;
  wire \data_sr_reg_n_0_[30] ;
  wire \data_sr_reg_n_0_[31] ;
  wire \data_sr_reg_n_0_[3] ;
  wire \data_sr_reg_n_0_[4] ;
  wire \data_sr_reg_n_0_[5] ;
  wire \data_sr_reg_n_0_[6] ;
  wire \data_sr_reg_n_0_[7] ;
  wire \data_sr_reg_n_0_[8] ;
  wire \data_sr_reg_n_0_[9] ;
  wire \divider[7]_i_1_n_0 ;
  wire \divider[7]_i_3_n_0 ;
  wire \divider_reg_n_0_[0] ;
  wire \divider_reg_n_0_[1] ;
  wire \divider_reg_n_0_[2] ;
  wire \divider_reg_n_0_[3] ;
  wire \divider_reg_n_0_[4] ;
  wire \divider_reg_n_0_[5] ;
  wire finished;
  wire [1:0]p_0_in;
  wire p_0_in0;
  wire p_0_in_0;
  wire [7:0]p_0_in__0;
  wire [0:0]p_1_in;
  wire [1:0]p_1_in_1;
  wire [31:1]p_2_in;
  wire [7:0]plusOp;
  wire resend;
  wire sioc;
  wire sioc_i_1_n_0;
  wire sioc_i_2_n_0;
  wire sioc_i_3_n_0;
  wire siod;
  wire siod_INST_0_i_1_n_0;
  wire [15:2]sreg;
  wire \sreg[12]_i_1_n_0 ;
  wire \sreg[14]_i_1_n_0 ;
  wire \sreg[2]_i_1_n_0 ;
  wire \sreg[7]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address[0]_i_1 
       (.I0(address_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address[1]_i_1 
       (.I0(address_reg[1]),
        .I1(address_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address[2]_i_1 
       (.I0(address_reg[1]),
        .I1(address_reg[0]),
        .I2(address_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \address[3]_i_1 
       (.I0(address_reg[2]),
        .I1(address_reg[0]),
        .I2(address_reg[1]),
        .I3(address_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \address[4]_i_1 
       (.I0(address_reg[3]),
        .I1(address_reg[1]),
        .I2(address_reg[0]),
        .I3(address_reg[2]),
        .I4(address_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \address[5]_i_1 
       (.I0(address_reg[4]),
        .I1(address_reg[2]),
        .I2(address_reg[0]),
        .I3(address_reg[1]),
        .I4(address_reg[3]),
        .I5(address_reg[5]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \address[6]_i_1 
       (.I0(address_reg[5]),
        .I1(address_reg[3]),
        .I2(\sreg[12]_i_1_n_0 ),
        .I3(address_reg[2]),
        .I4(address_reg[4]),
        .I5(address_reg[6]),
        .O(plusOp[6]));
  LUT3 #(
    .INIT(8'hD2)) 
    \address[7]_i_1 
       (.I0(address_reg[6]),
        .I1(\address[7]_i_2_n_0 ),
        .I2(address_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address[7]_i_2 
       (.I0(address_reg[4]),
        .I1(address_reg[2]),
        .I2(address_reg[0]),
        .I3(address_reg[1]),
        .I4(address_reg[3]),
        .I5(address_reg[5]),
        .O(\address[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[0]),
        .Q(address_reg[0]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[1]),
        .Q(address_reg[1]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[2]),
        .Q(address_reg[2]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[3]),
        .Q(address_reg[3]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[4]),
        .Q(address_reg[4]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[5]),
        .Q(address_reg[5]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[6]),
        .Q(address_reg[6]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(clk),
        .CE(advance),
        .D(plusOp[7]),
        .Q(address_reg[7]),
        .R(resend));
  FDRE advance_reg
       (.C(clk),
        .CE(1'b1),
        .D(\data_sr[31]_i_1_n_0 ),
        .Q(advance),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \busy_sr[0]_i_1 
       (.I0(\busy_sr[0]_i_3_n_0 ),
        .I1(\busy_sr[0]_i_4_n_0 ),
        .I2(\busy_sr[0]_i_5_n_0 ),
        .I3(\busy_sr[0]_i_6_n_0 ),
        .I4(p_1_in),
        .O(\busy_sr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \busy_sr[0]_i_2 
       (.I0(sreg[7]),
        .I1(sreg[12]),
        .I2(sreg[15]),
        .I3(sreg[14]),
        .I4(sreg[2]),
        .I5(p_0_in_0),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \busy_sr[0]_i_3 
       (.I0(\divider_reg_n_0_[4] ),
        .I1(\divider_reg_n_0_[2] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\divider_reg_n_0_[3] ),
        .I5(\divider_reg_n_0_[5] ),
        .O(\busy_sr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \busy_sr[0]_i_4 
       (.I0(p_0_in_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\busy_sr[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \busy_sr[0]_i_5 
       (.I0(\divider_reg_n_0_[1] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[3] ),
        .I3(\divider_reg_n_0_[2] ),
        .O(\busy_sr[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \busy_sr[0]_i_6 
       (.I0(\divider_reg_n_0_[5] ),
        .I1(\divider_reg_n_0_[4] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\busy_sr[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[10]_i_1 
       (.I0(\busy_sr_reg_n_0_[9] ),
        .I1(p_0_in_0),
        .O(\busy_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[11]_i_1 
       (.I0(\busy_sr_reg_n_0_[10] ),
        .I1(p_0_in_0),
        .O(\busy_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[12]_i_1 
       (.I0(\busy_sr_reg_n_0_[11] ),
        .I1(p_0_in_0),
        .O(\busy_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[13]_i_1 
       (.I0(\busy_sr_reg_n_0_[12] ),
        .I1(p_0_in_0),
        .O(\busy_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[14]_i_1 
       (.I0(\busy_sr_reg_n_0_[13] ),
        .I1(p_0_in_0),
        .O(\busy_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[15]_i_1 
       (.I0(\busy_sr_reg_n_0_[14] ),
        .I1(p_0_in_0),
        .O(\busy_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[16]_i_1 
       (.I0(\busy_sr_reg_n_0_[15] ),
        .I1(p_0_in_0),
        .O(\busy_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[17]_i_1 
       (.I0(\busy_sr_reg_n_0_[16] ),
        .I1(p_0_in_0),
        .O(\busy_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[18]_i_1 
       (.I0(\busy_sr_reg_n_0_[17] ),
        .I1(p_0_in_0),
        .O(\busy_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[19]_i_1 
       (.I0(\busy_sr_reg_n_0_[18] ),
        .I1(p_0_in_0),
        .O(\busy_sr[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[1]_i_1 
       (.I0(\busy_sr_reg_n_0_[0] ),
        .I1(p_0_in_0),
        .O(\busy_sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[20]_i_1 
       (.I0(p_1_in_1[0]),
        .I1(p_0_in_0),
        .O(\busy_sr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[21]_i_1 
       (.I0(p_1_in_1[1]),
        .I1(p_0_in_0),
        .O(\busy_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[22]_i_1 
       (.I0(\busy_sr_reg_n_0_[21] ),
        .I1(p_0_in_0),
        .O(\busy_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[23]_i_1 
       (.I0(\busy_sr_reg_n_0_[22] ),
        .I1(p_0_in_0),
        .O(\busy_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[24]_i_1 
       (.I0(\busy_sr_reg_n_0_[23] ),
        .I1(p_0_in_0),
        .O(\busy_sr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[25]_i_1 
       (.I0(\busy_sr_reg_n_0_[24] ),
        .I1(p_0_in_0),
        .O(\busy_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[26]_i_1 
       (.I0(\busy_sr_reg_n_0_[25] ),
        .I1(p_0_in_0),
        .O(\busy_sr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[27]_i_1 
       (.I0(\busy_sr_reg_n_0_[26] ),
        .I1(p_0_in_0),
        .O(\busy_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[28]_i_1 
       (.I0(\busy_sr_reg_n_0_[27] ),
        .I1(p_0_in_0),
        .O(\busy_sr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[29]_i_1 
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(p_0_in_0),
        .O(\busy_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[2]_i_1 
       (.I0(\busy_sr_reg_n_0_[1] ),
        .I1(p_0_in_0),
        .O(\busy_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[30]_i_1 
       (.I0(\busy_sr_reg_n_0_[29] ),
        .I1(p_0_in_0),
        .O(\busy_sr[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0202AA02)) 
    \busy_sr[31]_i_1 
       (.I0(p_1_in),
        .I1(\busy_sr[0]_i_6_n_0 ),
        .I2(\busy_sr[0]_i_5_n_0 ),
        .I3(\busy_sr[0]_i_4_n_0 ),
        .I4(\busy_sr[0]_i_3_n_0 ),
        .O(\busy_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[31]_i_2 
       (.I0(\busy_sr_reg_n_0_[30] ),
        .I1(p_0_in_0),
        .O(\busy_sr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[3]_i_1 
       (.I0(\busy_sr_reg_n_0_[2] ),
        .I1(p_0_in_0),
        .O(\busy_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[4]_i_1 
       (.I0(\busy_sr_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .O(\busy_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[5]_i_1 
       (.I0(\busy_sr_reg_n_0_[4] ),
        .I1(p_0_in_0),
        .O(\busy_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[6]_i_1 
       (.I0(\busy_sr_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .O(\busy_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[7]_i_1 
       (.I0(\busy_sr_reg_n_0_[6] ),
        .I1(p_0_in_0),
        .O(\busy_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[8]_i_1 
       (.I0(\busy_sr_reg_n_0_[7] ),
        .I1(p_0_in_0),
        .O(\busy_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[9]_i_1 
       (.I0(\busy_sr_reg_n_0_[8] ),
        .I1(p_0_in_0),
        .O(\busy_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \busy_sr_reg[0] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_1_in),
        .Q(\busy_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[10] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[10]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[10] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[11] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[11]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[11] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[12] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[12]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[12] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[13] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[13]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[13] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[14] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[14]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[14] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[15] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[15]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[15] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[16] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[16]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[16] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[17] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[17]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[17] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[18] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[18]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[18] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[19] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[19]_i_1_n_0 ),
        .Q(p_1_in_1[0]),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[1] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[1]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[1] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[20] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[20]_i_1_n_0 ),
        .Q(p_1_in_1[1]),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[21] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[21]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[21] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[22] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[22]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[22] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[23] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[23]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[23] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[24] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[24]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[24] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[25] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[25]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[25] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[26] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[26]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[26] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[27] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[27]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[27] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[28] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[28]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[28] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[29] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[29]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[29] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[2] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[2]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[2] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[30] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[30]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[30] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[31] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[31]_i_2_n_0 ),
        .Q(p_0_in_0),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[3] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[3]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[3] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[4] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[4]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[4] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[5] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[5]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[5] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[6] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[6]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[6] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[7] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[7]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[7] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[8] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[8]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[8] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[9] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\busy_sr[9]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[9] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF222222F2)) 
    \data_sr[0]_i_1 
       (.I0(\busy_sr[0]_i_4_n_0 ),
        .I1(\busy_sr[0]_i_3_n_0 ),
        .I2(p_1_in),
        .I3(\busy_sr[0]_i_6_n_0 ),
        .I4(\busy_sr[0]_i_5_n_0 ),
        .I5(\data_sr_reg_n_0_[0] ),
        .O(\data_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[10]_i_1 
       (.I0(\data_sr_reg_n_0_[9] ),
        .I1(p_0_in_0),
        .I2(sreg[7]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[11]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[10] ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[12]_i_1 
       (.I0(\data_sr_reg_n_0_[11] ),
        .I1(p_0_in_0),
        .O(\data_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[13]_i_1 
       (.I0(\data_sr_reg_n_0_[12] ),
        .I1(p_0_in_0),
        .I2(sreg[12]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[14]_i_1 
       (.I0(\data_sr_reg_n_0_[13] ),
        .I1(p_0_in_0),
        .O(\data_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[15]_i_1 
       (.I0(\data_sr_reg_n_0_[14] ),
        .I1(p_0_in_0),
        .O(\data_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[16]_i_1 
       (.I0(\data_sr_reg_n_0_[15] ),
        .I1(p_0_in_0),
        .I2(sreg[12]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[17]_i_1 
       (.I0(\data_sr_reg_n_0_[16] ),
        .I1(p_0_in_0),
        .O(\data_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[18]_i_1 
       (.I0(\data_sr_reg_n_0_[17] ),
        .I1(p_0_in_0),
        .I2(sreg[14]),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'h00080008AAAA0008)) 
    \data_sr[19]_i_1 
       (.I0(\data_sr[19]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(\busy_sr[0]_i_6_n_0 ),
        .I3(\busy_sr[0]_i_5_n_0 ),
        .I4(\busy_sr[0]_i_4_n_0 ),
        .I5(\busy_sr[0]_i_3_n_0 ),
        .O(\data_sr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[19]_i_2 
       (.I0(\data_sr_reg_n_0_[18] ),
        .I1(p_0_in_0),
        .O(\data_sr[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_sr[19]_i_3 
       (.I0(sreg[15]),
        .I1(p_0_in_0),
        .O(\data_sr[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[1]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[0] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[20]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[19] ),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[21]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[20] ),
        .O(p_2_in[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[22]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[21] ),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[23]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[22] ),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[24]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[23] ),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[25]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[24] ),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[26]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[25] ),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[27]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[26] ),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[28]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[27] ),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[29]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[28] ),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[2]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[1] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[30]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[29] ),
        .O(p_2_in[30]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_sr[31]_i_1 
       (.I0(p_1_in),
        .I1(\busy_sr[0]_i_6_n_0 ),
        .I2(\divider_reg_n_0_[1] ),
        .I3(\divider_reg_n_0_[0] ),
        .I4(\divider_reg_n_0_[3] ),
        .I5(\divider_reg_n_0_[2] ),
        .O(\data_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[31]_i_2 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[30] ),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[3]_i_1 
       (.I0(\data_sr_reg_n_0_[2] ),
        .I1(p_0_in_0),
        .O(\data_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[4]_i_1 
       (.I0(\data_sr_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .O(\data_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[5]_i_1 
       (.I0(\data_sr_reg_n_0_[4] ),
        .I1(p_0_in_0),
        .I2(sreg[2]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[6]_i_1 
       (.I0(\data_sr_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .O(\data_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[7]_i_1 
       (.I0(\data_sr_reg_n_0_[6] ),
        .I1(p_0_in_0),
        .I2(sreg[14]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[8]_i_1 
       (.I0(\data_sr_reg_n_0_[7] ),
        .I1(p_0_in_0),
        .O(\data_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[9]_i_1 
       (.I0(\data_sr_reg_n_0_[8] ),
        .I1(p_0_in_0),
        .I2(sreg[14]),
        .O(p_2_in[9]));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_sr[0]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[10] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\data_sr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[11] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\data_sr_reg_n_0_[11] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[12] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[12]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[12] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[13] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(\data_sr_reg_n_0_[13] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[14] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[14]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[14] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[15] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[15]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[15] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[16] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(\data_sr_reg_n_0_[16] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[17] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[17]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[17] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[18] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(\data_sr_reg_n_0_[18] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[19] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[19]_i_2_n_0 ),
        .Q(\data_sr_reg_n_0_[19] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[1] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\data_sr_reg_n_0_[1] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[20] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(\data_sr_reg_n_0_[20] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[21] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(\data_sr_reg_n_0_[21] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[22] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(\data_sr_reg_n_0_[22] ),
        .S(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[23] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(\data_sr_reg_n_0_[23] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[24] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(\data_sr_reg_n_0_[24] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[25] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(\data_sr_reg_n_0_[25] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[26] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(\data_sr_reg_n_0_[26] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[27] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(\data_sr_reg_n_0_[27] ),
        .S(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[28] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(\data_sr_reg_n_0_[28] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[29] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(\data_sr_reg_n_0_[29] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[2] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\data_sr_reg_n_0_[2] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[30] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(\data_sr_reg_n_0_[30] ),
        .R(\data_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[31] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(\data_sr_reg_n_0_[31] ),
        .S(\data_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[3] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[3]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[3] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[4] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[4]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[4] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[5] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\data_sr_reg_n_0_[5] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[6] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[6]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[6] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[7] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\data_sr_reg_n_0_[7] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \data_sr_reg[8] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(\data_sr[8]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[8] ),
        .S(\data_sr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[9] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\data_sr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divider[0]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \divider[1]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .I1(\divider_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \divider[2]_i_1 
       (.I0(\divider_reg_n_0_[1] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \divider[3]_i_1 
       (.I0(\divider_reg_n_0_[2] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[1] ),
        .I3(\divider_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \divider[4]_i_1 
       (.I0(\divider_reg_n_0_[3] ),
        .I1(\divider_reg_n_0_[1] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[2] ),
        .I4(\divider_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \divider[5]_i_1 
       (.I0(\divider_reg_n_0_[4] ),
        .I1(\divider_reg_n_0_[2] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\divider_reg_n_0_[3] ),
        .I5(\divider_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \divider[6]_i_1 
       (.I0(\busy_sr[0]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'hFFA8)) 
    \divider[7]_i_1 
       (.I0(\divider[7]_i_3_n_0 ),
        .I1(\busy_sr[0]_i_5_n_0 ),
        .I2(\busy_sr[0]_i_6_n_0 ),
        .I3(p_0_in_0),
        .O(\divider[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \divider[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(\busy_sr[0]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \divider[7]_i_3 
       (.I0(sreg[2]),
        .I1(sreg[14]),
        .I2(sreg[15]),
        .I3(sreg[12]),
        .I4(sreg[7]),
        .O(\divider[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \divider_reg[0] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\divider_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[1] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\divider_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[2] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\divider_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[3] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\divider_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[4] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\divider_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[5] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\divider_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[6] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[7] 
       (.C(clk),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(p_0_in[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    finished_INST_0
       (.I0(sreg[7]),
        .I1(sreg[12]),
        .I2(sreg[15]),
        .I3(sreg[14]),
        .I4(sreg[2]),
        .O(finished));
  LUT6 #(
    .INIT(64'hAFAFFFEFFFEFAFAF)) 
    sioc_i_1
       (.I0(sioc_i_2_n_0),
        .I1(sioc_i_3_n_0),
        .I2(p_0_in_0),
        .I3(\busy_sr_reg_n_0_[0] ),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(sioc_i_1_n_0));
  LUT6 #(
    .INIT(64'hCC0000000000000B)) 
    sioc_i_2
       (.I0(p_0_in[0]),
        .I1(\busy_sr_reg_n_0_[30] ),
        .I2(\busy_sr_reg_n_0_[0] ),
        .I3(\busy_sr_reg_n_0_[1] ),
        .I4(\busy_sr_reg_n_0_[29] ),
        .I5(\busy_sr_reg_n_0_[2] ),
        .O(sioc_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sioc_i_3
       (.I0(\busy_sr_reg_n_0_[30] ),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(\busy_sr_reg_n_0_[2] ),
        .O(sioc_i_3_n_0));
  FDRE sioc_reg
       (.C(clk),
        .CE(1'b1),
        .D(sioc_i_1_n_0),
        .Q(sioc),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    siod_INST_0
       (.I0(\data_sr_reg_n_0_[31] ),
        .I1(siod_INST_0_i_1_n_0),
        .O(siod));
  LUT6 #(
    .INIT(64'hB0BBB0BB0000B0BB)) 
    siod_INST_0_i_1
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(p_1_in_1[0]),
        .I3(p_1_in_1[1]),
        .I4(\busy_sr_reg_n_0_[11] ),
        .I5(\busy_sr_reg_n_0_[10] ),
        .O(siod_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sreg[12]_i_1 
       (.I0(address_reg[0]),
        .I1(address_reg[1]),
        .O(\sreg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sreg[14]_i_1 
       (.I0(address_reg[1]),
        .I1(address_reg[0]),
        .O(\sreg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sreg[15]_i_1 
       (.I0(address_reg[6]),
        .I1(address_reg[7]),
        .I2(address_reg[4]),
        .I3(address_reg[5]),
        .I4(address_reg[3]),
        .I5(address_reg[2]),
        .O(p_0_in0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sreg[2]_i_1 
       (.I0(address_reg[1]),
        .I1(address_reg[0]),
        .O(\sreg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sreg[7]_i_1 
       (.I0(address_reg[0]),
        .I1(address_reg[1]),
        .O(\sreg[7]_i_1_n_0 ));
  FDSE \sreg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sreg[12]_i_1_n_0 ),
        .Q(sreg[12]),
        .S(p_0_in0));
  FDSE \sreg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sreg[14]_i_1_n_0 ),
        .Q(sreg[14]),
        .S(p_0_in0));
  FDRE \sreg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(sreg[15]),
        .R(1'b0));
  FDSE \sreg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sreg[2]_i_1_n_0 ),
        .Q(sreg[2]),
        .S(p_0_in0));
  FDSE \sreg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sreg[7]_i_1_n_0 ),
        .Q(sreg[7]),
        .S(p_0_in0));
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
