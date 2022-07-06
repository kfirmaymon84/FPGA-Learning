// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jul  6 21:26:00 2022
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
   (finished,
    siod,
    sioc,
    clk,
    resend);
  output finished;
  output siod;
  output sioc;
  input clk;
  input resend;

  wire [7:0]address;
  wire \address_rep[0]_i_1_n_0 ;
  wire \address_rep[1]_i_1_n_0 ;
  wire \address_rep[2]_i_1_n_0 ;
  wire \address_rep[3]_i_1_n_0 ;
  wire \address_rep[4]_i_1_n_0 ;
  wire \address_rep[5]_i_1_n_0 ;
  wire \address_rep[6]_i_1_n_0 ;
  wire \address_rep[6]_i_2_n_0 ;
  wire \address_rep[7]_i_1_n_0 ;
  wire advance;
  wire \busy_sr[0]_i_1_n_0 ;
  wire \busy_sr[0]_i_3_n_0 ;
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
  wire \data_sr[31]_i_1_n_0 ;
  wire \data_sr[31]_i_3_n_0 ;
  wire \data_sr[31]_i_4_n_0 ;
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
  wire \divider_reg_n_0_[0] ;
  wire \divider_reg_n_0_[1] ;
  wire \divider_reg_n_0_[2] ;
  wire \divider_reg_n_0_[3] ;
  wire \divider_reg_n_0_[4] ;
  wire \divider_reg_n_0_[5] ;
  wire finished;
  wire finished_INST_0_i_1_n_0;
  wire finished_INST_0_i_2_n_0;
  wire finished_INST_0_i_3_n_0;
  wire finished_INST_0_i_4_n_0;
  wire [1:0]p_0_in;
  wire p_0_in_0;
  wire [7:0]p_0_in__0;
  wire [0:0]p_1_in;
  wire [1:0]p_1_in_1;
  wire [31:1]p_2_in;
  wire resend;
  wire sioc;
  wire sioc_i_1_n_0;
  wire sioc_i_2_n_0;
  wire sioc_i_3_n_0;
  wire siod;
  wire siod_INST_0_i_1_n_0;
  wire [15:0]sreg_reg__0;
  wire [15:0]NLW_sreg_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_sreg_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_sreg_reg_DOPBDOP_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[0] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[1] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[1]_i_1_n_0 ),
        .Q(address[1]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[2] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[3] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[4] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[5] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[6] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(resend));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[7] 
       (.C(clk),
        .CE(advance),
        .D(\address_rep[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(resend));
  LUT1 #(
    .INIT(2'h1)) 
    \address_rep[0]_i_1 
       (.I0(address[0]),
        .O(\address_rep[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address_rep[1]_i_1 
       (.I0(address[0]),
        .I1(address[1]),
        .O(\address_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address_rep[2]_i_1 
       (.I0(address[1]),
        .I1(address[0]),
        .I2(address[2]),
        .O(\address_rep[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \address_rep[3]_i_1 
       (.I0(address[2]),
        .I1(address[0]),
        .I2(address[1]),
        .I3(address[3]),
        .O(\address_rep[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \address_rep[4]_i_1 
       (.I0(address[3]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[2]),
        .I4(address[4]),
        .O(\address_rep[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \address_rep[5]_i_1 
       (.I0(address[4]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\address_rep[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \address_rep[6]_i_1 
       (.I0(\address_rep[6]_i_2_n_0 ),
        .I1(address[6]),
        .O(\address_rep[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address_rep[6]_i_2 
       (.I0(address[4]),
        .I1(address[2]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[5]),
        .O(\address_rep[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \address_rep[7]_i_1 
       (.I0(address[6]),
        .I1(\address_rep[6]_i_2_n_0 ),
        .I2(address[7]),
        .O(\address_rep[7]_i_1_n_0 ));
  FDRE advance_reg
       (.C(clk),
        .CE(1'b1),
        .D(\data_sr[31]_i_1_n_0 ),
        .Q(advance),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \busy_sr[0]_i_1 
       (.I0(\busy_sr[0]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in_0),
        .I4(\data_sr[31]_i_1_n_0 ),
        .O(\busy_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \busy_sr[0]_i_2 
       (.I0(finished_INST_0_i_4_n_0),
        .I1(finished_INST_0_i_3_n_0),
        .I2(finished_INST_0_i_2_n_0),
        .I3(finished_INST_0_i_1_n_0),
        .I4(p_0_in_0),
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[10]_i_1 
       (.I0(\busy_sr_reg_n_0_[9] ),
        .I1(p_0_in_0),
        .O(\busy_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[11]_i_1 
       (.I0(\busy_sr_reg_n_0_[10] ),
        .I1(p_0_in_0),
        .O(\busy_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[12]_i_1 
       (.I0(\busy_sr_reg_n_0_[11] ),
        .I1(p_0_in_0),
        .O(\busy_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[13]_i_1 
       (.I0(\busy_sr_reg_n_0_[12] ),
        .I1(p_0_in_0),
        .O(\busy_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[14]_i_1 
       (.I0(\busy_sr_reg_n_0_[13] ),
        .I1(p_0_in_0),
        .O(\busy_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[15]_i_1 
       (.I0(\busy_sr_reg_n_0_[14] ),
        .I1(p_0_in_0),
        .O(\busy_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[16]_i_1 
       (.I0(\busy_sr_reg_n_0_[15] ),
        .I1(p_0_in_0),
        .O(\busy_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[17]_i_1 
       (.I0(\busy_sr_reg_n_0_[16] ),
        .I1(p_0_in_0),
        .O(\busy_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[18]_i_1 
       (.I0(\busy_sr_reg_n_0_[17] ),
        .I1(p_0_in_0),
        .O(\busy_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[19]_i_1 
       (.I0(\busy_sr_reg_n_0_[18] ),
        .I1(p_0_in_0),
        .O(\busy_sr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[1]_i_1 
       (.I0(\busy_sr_reg_n_0_[0] ),
        .I1(p_0_in_0),
        .O(\busy_sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[20]_i_1 
       (.I0(p_1_in_1[0]),
        .I1(p_0_in_0),
        .O(\busy_sr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[21]_i_1 
       (.I0(p_1_in_1[1]),
        .I1(p_0_in_0),
        .O(\busy_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[22]_i_1 
       (.I0(\busy_sr_reg_n_0_[21] ),
        .I1(p_0_in_0),
        .O(\busy_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[23]_i_1 
       (.I0(\busy_sr_reg_n_0_[22] ),
        .I1(p_0_in_0),
        .O(\busy_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[24]_i_1 
       (.I0(\busy_sr_reg_n_0_[23] ),
        .I1(p_0_in_0),
        .O(\busy_sr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[25]_i_1 
       (.I0(\busy_sr_reg_n_0_[24] ),
        .I1(p_0_in_0),
        .O(\busy_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[26]_i_1 
       (.I0(\busy_sr_reg_n_0_[25] ),
        .I1(p_0_in_0),
        .O(\busy_sr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[27]_i_1 
       (.I0(\busy_sr_reg_n_0_[26] ),
        .I1(p_0_in_0),
        .O(\busy_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[28]_i_1 
       (.I0(\busy_sr_reg_n_0_[27] ),
        .I1(p_0_in_0),
        .O(\busy_sr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[29]_i_1 
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(p_0_in_0),
        .O(\busy_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[2]_i_1 
       (.I0(\busy_sr_reg_n_0_[1] ),
        .I1(p_0_in_0),
        .O(\busy_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[30]_i_1 
       (.I0(\busy_sr_reg_n_0_[29] ),
        .I1(p_0_in_0),
        .O(\busy_sr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8888888)) 
    \busy_sr[31]_i_1 
       (.I0(p_1_in),
        .I1(\data_sr[31]_i_1_n_0 ),
        .I2(p_0_in_0),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\busy_sr[0]_i_3_n_0 ),
        .O(\busy_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[31]_i_2 
       (.I0(\busy_sr_reg_n_0_[30] ),
        .I1(p_0_in_0),
        .O(\busy_sr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[3]_i_1 
       (.I0(\busy_sr_reg_n_0_[2] ),
        .I1(p_0_in_0),
        .O(\busy_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[4]_i_1 
       (.I0(\busy_sr_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .O(\busy_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[5]_i_1 
       (.I0(\busy_sr_reg_n_0_[4] ),
        .I1(p_0_in_0),
        .O(\busy_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[6]_i_1 
       (.I0(\busy_sr_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .O(\busy_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[7]_i_1 
       (.I0(\busy_sr_reg_n_0_[6] ),
        .I1(p_0_in_0),
        .O(\busy_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[8]_i_1 
       (.I0(\busy_sr_reg_n_0_[7] ),
        .I1(p_0_in_0),
        .O(\busy_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
    .INIT(64'hFFFFFFFFFFFF0080)) 
    \data_sr[0]_i_1 
       (.I0(p_0_in_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\busy_sr[0]_i_3_n_0 ),
        .I4(\data_sr[31]_i_1_n_0 ),
        .I5(\data_sr_reg_n_0_[0] ),
        .O(\data_sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[10]_i_1 
       (.I0(\data_sr_reg_n_0_[9] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[7]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[11]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[10] ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[12]_i_1 
       (.I0(\data_sr_reg_n_0_[11] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[8]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[13]_i_1 
       (.I0(\data_sr_reg_n_0_[12] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[9]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[14]_i_1 
       (.I0(\data_sr_reg_n_0_[13] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[10]),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[15]_i_1 
       (.I0(\data_sr_reg_n_0_[14] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[11]),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[16]_i_1 
       (.I0(\data_sr_reg_n_0_[15] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[12]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[17]_i_1 
       (.I0(\data_sr_reg_n_0_[16] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[13]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[18]_i_1 
       (.I0(\data_sr_reg_n_0_[17] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[14]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[19]_i_1 
       (.I0(\data_sr_reg_n_0_[18] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[15]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[1]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[0] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[20]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[19] ),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[23]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[22] ),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[24]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[23] ),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[25]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[24] ),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[26]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[25] ),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[27]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[26] ),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[28]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[27] ),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[29]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[28] ),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[2]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[1] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[30]_i_1 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[29] ),
        .O(p_2_in[30]));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \data_sr[31]_i_1 
       (.I0(p_0_in_0),
        .I1(finished_INST_0_i_1_n_0),
        .I2(finished_INST_0_i_2_n_0),
        .I3(finished_INST_0_i_3_n_0),
        .I4(finished_INST_0_i_4_n_0),
        .I5(\data_sr[31]_i_3_n_0 ),
        .O(\data_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[31]_i_2 
       (.I0(p_0_in_0),
        .I1(\data_sr_reg_n_0_[30] ),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_sr[31]_i_3 
       (.I0(\divider_reg_n_0_[2] ),
        .I1(\divider_reg_n_0_[3] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\data_sr[31]_i_4_n_0 ),
        .O(\data_sr[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_sr[31]_i_4 
       (.I0(\divider_reg_n_0_[5] ),
        .I1(\divider_reg_n_0_[4] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\data_sr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[3]_i_1 
       (.I0(\data_sr_reg_n_0_[2] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[0]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[4]_i_1 
       (.I0(\data_sr_reg_n_0_[3] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[1]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[5]_i_1 
       (.I0(\data_sr_reg_n_0_[4] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[2]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[6]_i_1 
       (.I0(\data_sr_reg_n_0_[5] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[3]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[7]_i_1 
       (.I0(\data_sr_reg_n_0_[6] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[4]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[8]_i_1 
       (.I0(\data_sr_reg_n_0_[7] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[5]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[9]_i_1 
       (.I0(\data_sr_reg_n_0_[8] ),
        .I1(p_0_in_0),
        .I2(sreg_reg__0[6]),
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
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[12] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(\data_sr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[13] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(\data_sr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[14] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(\data_sr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[15] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(\data_sr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[16] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(\data_sr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[17] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(\data_sr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[18] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(\data_sr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[19] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(\data_sr_reg_n_0_[19] ),
        .R(1'b0));
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
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[3] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\data_sr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[4] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\data_sr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[5] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\data_sr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[6] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\data_sr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[7] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\data_sr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[8] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\data_sr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[9] 
       (.C(clk),
        .CE(\busy_sr[0]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\data_sr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divider[0]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \divider[1]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .I1(\divider_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \divider[2]_i_1 
       (.I0(\divider_reg_n_0_[1] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \divider[7]_i_1 
       (.I0(finished_INST_0_i_1_n_0),
        .I1(finished_INST_0_i_2_n_0),
        .I2(finished_INST_0_i_3_n_0),
        .I3(finished_INST_0_i_4_n_0),
        .I4(\data_sr[31]_i_3_n_0 ),
        .I5(p_0_in_0),
        .O(\divider[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \divider[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(\busy_sr[0]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .O(p_0_in__0[7]));
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
  LUT4 #(
    .INIT(16'h0001)) 
    finished_INST_0
       (.I0(finished_INST_0_i_1_n_0),
        .I1(finished_INST_0_i_2_n_0),
        .I2(finished_INST_0_i_3_n_0),
        .I3(finished_INST_0_i_4_n_0),
        .O(finished));
  LUT4 #(
    .INIT(16'h7FFF)) 
    finished_INST_0_i_1
       (.I0(sreg_reg__0[5]),
        .I1(sreg_reg__0[4]),
        .I2(sreg_reg__0[7]),
        .I3(sreg_reg__0[6]),
        .O(finished_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    finished_INST_0_i_2
       (.I0(sreg_reg__0[1]),
        .I1(sreg_reg__0[0]),
        .I2(sreg_reg__0[3]),
        .I3(sreg_reg__0[2]),
        .O(finished_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    finished_INST_0_i_3
       (.I0(sreg_reg__0[13]),
        .I1(sreg_reg__0[12]),
        .I2(sreg_reg__0[15]),
        .I3(sreg_reg__0[14]),
        .O(finished_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    finished_INST_0_i_4
       (.I0(sreg_reg__0[9]),
        .I1(sreg_reg__0[8]),
        .I2(sreg_reg__0[11]),
        .I3(sreg_reg__0[10]),
        .O(finished_INST_0_i_4_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/sreg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h53295217510C50344F4014383A0440D004008C003E000C001140120412801280),
    .INIT_01(256'h229121021E3716020F4B0E61030A1A7B190332A41861171111403DC0581E5440),
    .INIT_02(256'h90008F008E008D4F74106B0A69004E204D403C78392A3871371D350B330B2907),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB80AB382B20EB10CB0849A0096009100),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sreg_reg
       (.ADDRARDADDR({1'b0,1'b0,address,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(sreg_reg__0),
        .DOBDO(NLW_sreg_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_sreg_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_sreg_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
