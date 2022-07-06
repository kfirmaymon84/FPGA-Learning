// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Jun 25 17:05:46 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_cameraAndVGA_Drivers_0_0/design_1_cameraAndVGA_Drivers_0_0_sim_netlist.v
// Design      : design_1_cameraAndVGA_Drivers_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cameraAndVGA_Drivers_0_0,cameraAndVGA_Drivers,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "cameraAndVGA_Drivers,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_cameraAndVGA_Drivers_0_0
   (vga_r,
    vga_g,
    vga_b,
    vga_hs,
    vga_vs,
    addressWrite,
    dataWrite,
    wea,
    addressRead,
    dataRead,
    PCLK,
    DIN,
    VSYNC,
    HS,
    clk,
    clk25,
    reset);
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  output vga_hs;
  output vga_vs;
  output [18:0]addressWrite;
  output [11:0]dataWrite;
  output [0:0]wea;
  output [18:0]addressRead;
  input [11:0]dataRead;
  input PCLK;
  input [7:0]DIN;
  input VSYNC;
  input HS;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input clk25;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire \<const0> ;
  wire [18:0]addressRead;
  wire clk25;
  wire [11:0]dataRead;
  wire reset;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire vga_hs;
  wire [3:0]vga_r;
  wire vga_vs;

  assign addressWrite[18] = \<const0> ;
  assign addressWrite[17] = \<const0> ;
  assign addressWrite[16] = \<const0> ;
  assign addressWrite[15] = \<const0> ;
  assign addressWrite[14] = \<const0> ;
  assign addressWrite[13] = \<const0> ;
  assign addressWrite[12] = \<const0> ;
  assign addressWrite[11] = \<const0> ;
  assign addressWrite[10] = \<const0> ;
  assign addressWrite[9] = \<const0> ;
  assign addressWrite[8] = \<const0> ;
  assign addressWrite[7] = \<const0> ;
  assign addressWrite[6] = \<const0> ;
  assign addressWrite[5] = \<const0> ;
  assign addressWrite[4] = \<const0> ;
  assign addressWrite[3] = \<const0> ;
  assign addressWrite[2] = \<const0> ;
  assign addressWrite[1] = \<const0> ;
  assign addressWrite[0] = \<const0> ;
  assign dataWrite[11] = \<const0> ;
  assign dataWrite[10] = \<const0> ;
  assign dataWrite[9] = \<const0> ;
  assign dataWrite[8] = \<const0> ;
  assign dataWrite[7] = \<const0> ;
  assign dataWrite[6] = \<const0> ;
  assign dataWrite[5] = \<const0> ;
  assign dataWrite[4] = \<const0> ;
  assign dataWrite[3] = \<const0> ;
  assign dataWrite[2] = \<const0> ;
  assign dataWrite[1] = \<const0> ;
  assign dataWrite[0] = \<const0> ;
  assign wea[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers U0
       (.addressRead(addressRead),
        .clk25(clk25),
        .dataRead(dataRead),
        .reset(reset),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_hs(vga_hs),
        .vga_r(vga_r),
        .vga_vs(vga_vs));
endmodule

(* ORIG_REF_NAME = "cameraAndVGA_Drivers" *) 
module design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers
   (addressRead,
    vga_vs,
    vga_hs,
    vga_r,
    vga_g,
    vga_b,
    reset,
    dataRead,
    clk25);
  output [18:0]addressRead;
  output vga_vs;
  output vga_hs;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  input reset;
  input [11:0]dataRead;
  input clk25;

  wire \BLUE_reg_n_0_[0] ;
  wire \BLUE_reg_n_0_[1] ;
  wire \BLUE_reg_n_0_[2] ;
  wire \BLUE_reg_n_0_[3] ;
  wire \GREEN_reg_n_0_[0] ;
  wire \GREEN_reg_n_0_[1] ;
  wire \GREEN_reg_n_0_[2] ;
  wire \GREEN_reg_n_0_[3] ;
  wire RED;
  wire \RED[3]_i_1_n_0 ;
  wire \RED_reg_n_0_[0] ;
  wire \RED_reg_n_0_[1] ;
  wire \RED_reg_n_0_[2] ;
  wire \RED_reg_n_0_[3] ;
  wire \addressCounter[0]_i_1_n_0 ;
  wire \addressCounter[18]_i_1_n_0 ;
  wire \addressCounter[18]_i_2_n_0 ;
  wire \addressCounter[18]_i_4_n_0 ;
  wire \addressCounter[18]_i_5_n_0 ;
  wire \addressCounter[18]_i_6_n_0 ;
  wire [18:0]addressRead;
  wire clk25;
  wire [11:0]dataRead;
  wire \h_cnt[9]_i_1_n_0 ;
  wire \h_cnt[9]_i_3_n_0 ;
  wire [9:4]h_cnt_reg;
  wire [0:0]h_cnt_reg__0;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire ltOp__40;
  wire [18:1]plusOp;
  wire [9:0]plusOp__0;
  wire [9:0]plusOp__1;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire reset;
  wire \v_cnt[9]_i_1_n_0 ;
  wire \v_cnt[9]_i_2_n_0 ;
  wire \v_cnt[9]_i_4_n_0 ;
  wire [9:1]v_cnt_reg;
  wire \v_cnt_reg_n_0_[0] ;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire vga_hs;
  wire [3:0]vga_r;
  wire vga_vs;
  wire vga_vs_INST_0_i_1_n_0;
  wire [3:1]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__3_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[0] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[0]),
        .Q(\BLUE_reg_n_0_[0] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[1] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[1]),
        .Q(\BLUE_reg_n_0_[1] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[2] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[2]),
        .Q(\BLUE_reg_n_0_[2] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[3] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[3]),
        .Q(\BLUE_reg_n_0_[3] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[0] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[4]),
        .Q(\GREEN_reg_n_0_[0] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[1] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[5]),
        .Q(\GREEN_reg_n_0_[1] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[2] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[6]),
        .Q(\GREEN_reg_n_0_[2] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[3] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[7]),
        .Q(\GREEN_reg_n_0_[3] ),
        .R(\RED[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFF00000000)) 
    \RED[3]_i_1 
       (.I0(v_cnt_reg[9]),
        .I1(h_cnt_reg[7]),
        .I2(h_cnt_reg[8]),
        .I3(h_cnt_reg[9]),
        .I4(vga_vs_INST_0_i_1_n_0),
        .I5(reset),
        .O(\RED[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \RED[3]_i_2 
       (.I0(\addressCounter[18]_i_6_n_0 ),
        .I1(reset),
        .O(RED));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[0] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[8]),
        .Q(\RED_reg_n_0_[0] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[1] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[9]),
        .Q(\RED_reg_n_0_[1] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[2] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[10]),
        .Q(\RED_reg_n_0_[2] ),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[3] 
       (.C(clk25),
        .CE(RED),
        .D(dataRead[11]),
        .Q(\RED_reg_n_0_[3] ),
        .R(\RED[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addressCounter[0]_i_1 
       (.I0(addressRead[0]),
        .O(\addressCounter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1500FFFF)) 
    \addressCounter[18]_i_1 
       (.I0(ltOp__40),
        .I1(\addressCounter[18]_i_4_n_0 ),
        .I2(\addressCounter[18]_i_5_n_0 ),
        .I3(v_cnt_reg[9]),
        .I4(reset),
        .O(\addressCounter[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addressCounter[18]_i_2 
       (.I0(\addressCounter[18]_i_6_n_0 ),
        .O(\addressCounter[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \addressCounter[18]_i_3 
       (.I0(h_cnt_reg[9]),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[6]),
        .I4(h_cnt_reg[7]),
        .O(ltOp__40));
  LUT3 #(
    .INIT(8'h01)) 
    \addressCounter[18]_i_4 
       (.I0(v_cnt_reg[6]),
        .I1(v_cnt_reg[5]),
        .I2(v_cnt_reg[4]),
        .O(\addressCounter[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0007)) 
    \addressCounter[18]_i_5 
       (.I0(v_cnt_reg[2]),
        .I1(v_cnt_reg[3]),
        .I2(v_cnt_reg[8]),
        .I3(v_cnt_reg[7]),
        .O(\addressCounter[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7F7F777)) 
    \addressCounter[18]_i_6 
       (.I0(h_cnt_reg__0),
        .I1(vga_vs_INST_0_i_1_n_0),
        .I2(h_cnt_reg[9]),
        .I3(h_cnt_reg[8]),
        .I4(h_cnt_reg[7]),
        .I5(v_cnt_reg[9]),
        .O(\addressCounter[18]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[0] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(\addressCounter[0]_i_1_n_0 ),
        .Q(addressRead[0]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[10] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[10]),
        .Q(addressRead[10]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[11] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[11]),
        .Q(addressRead[11]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[12] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[12]),
        .Q(addressRead[12]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[13] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[13]),
        .Q(addressRead[13]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[14] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[14]),
        .Q(addressRead[14]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[15] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[15]),
        .Q(addressRead[15]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[16] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[16]),
        .Q(addressRead[16]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[17] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[17]),
        .Q(addressRead[17]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[18] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[18]),
        .Q(addressRead[18]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[1] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(addressRead[1]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[2] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(addressRead[2]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[3] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(addressRead[3]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[4] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[4]),
        .Q(addressRead[4]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[5] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[5]),
        .Q(addressRead[5]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[6] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[6]),
        .Q(addressRead[6]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[7] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[7]),
        .Q(addressRead[7]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[8] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[8]),
        .Q(addressRead[8]),
        .R(\addressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addressCounter_reg[9] 
       (.C(clk25),
        .CE(\addressCounter[18]_i_2_n_0 ),
        .D(plusOp[9]),
        .Q(addressRead[9]),
        .R(\addressCounter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(h_cnt_reg__0),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cnt[1]_i_1 
       (.I0(h_cnt_reg__0),
        .I1(\h_cnt_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_cnt[2]_i_1 
       (.I0(h_cnt_reg__0),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(\h_cnt_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_cnt[3]_i_1 
       (.I0(\h_cnt_reg_n_0_[1] ),
        .I1(h_cnt_reg__0),
        .I2(\h_cnt_reg_n_0_[2] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_cnt[4]_i_1 
       (.I0(\h_cnt_reg_n_0_[2] ),
        .I1(h_cnt_reg__0),
        .I2(\h_cnt_reg_n_0_[1] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .I4(h_cnt_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_cnt[5]_i_1 
       (.I0(\h_cnt_reg_n_0_[3] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(h_cnt_reg__0),
        .I3(\h_cnt_reg_n_0_[2] ),
        .I4(h_cnt_reg[4]),
        .I5(h_cnt_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \h_cnt[6]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \h_cnt[7]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt_reg[6]),
        .I2(h_cnt_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \h_cnt[8]_i_1 
       (.I0(h_cnt_reg[7]),
        .I1(h_cnt_reg[6]),
        .I2(\h_cnt[9]_i_3_n_0 ),
        .I3(h_cnt_reg[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'hFE000000FFFFFFFF)) 
    \h_cnt[9]_i_1 
       (.I0(h_cnt_reg[7]),
        .I1(h_cnt_reg[6]),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[8]),
        .I4(h_cnt_reg[9]),
        .I5(reset),
        .O(\h_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \h_cnt[9]_i_2 
       (.I0(h_cnt_reg[8]),
        .I1(\h_cnt[9]_i_3_n_0 ),
        .I2(h_cnt_reg[6]),
        .I3(h_cnt_reg[7]),
        .I4(h_cnt_reg[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_cnt[9]_i_3 
       (.I0(\h_cnt_reg_n_0_[3] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(h_cnt_reg__0),
        .I3(\h_cnt_reg_n_0_[2] ),
        .I4(h_cnt_reg[4]),
        .I5(h_cnt_reg[5]),
        .O(\h_cnt[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(h_cnt_reg__0),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(\h_cnt_reg_n_0_[1] ),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(\h_cnt_reg_n_0_[2] ),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(\h_cnt_reg_n_0_[3] ),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(h_cnt_reg[4]),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(h_cnt_reg[5]),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(h_cnt_reg[6]),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(h_cnt_reg[7]),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[8]),
        .Q(h_cnt_reg[8]),
        .R(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(clk25),
        .CE(1'b1),
        .D(plusOp__0[9]),
        .Q(h_cnt_reg[9]),
        .R(\h_cnt[9]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(addressRead[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(addressRead[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(addressRead[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(addressRead[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(addressRead[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:1],plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3:2],plusOp[18:17]}),
        .S({1'b0,1'b0,addressRead[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(v_cnt_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_cnt[2]_i_1 
       (.I0(v_cnt_reg[1]),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(v_cnt_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_cnt[3]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(v_cnt_reg[1]),
        .I2(v_cnt_reg[2]),
        .I3(v_cnt_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_cnt[4]_i_1 
       (.I0(v_cnt_reg[3]),
        .I1(v_cnt_reg[2]),
        .I2(v_cnt_reg[1]),
        .I3(\v_cnt_reg_n_0_[0] ),
        .I4(v_cnt_reg[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_cnt[5]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(v_cnt_reg[1]),
        .I2(v_cnt_reg[2]),
        .I3(v_cnt_reg[3]),
        .I4(v_cnt_reg[4]),
        .I5(v_cnt_reg[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_cnt[6]_i_1 
       (.I0(v_cnt_reg[5]),
        .I1(\v_cnt[9]_i_4_n_0 ),
        .I2(v_cnt_reg[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_cnt[7]_i_1 
       (.I0(v_cnt_reg[6]),
        .I1(v_cnt_reg[5]),
        .I2(\v_cnt[9]_i_4_n_0 ),
        .I3(v_cnt_reg[7]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_cnt[8]_i_1 
       (.I0(v_cnt_reg[7]),
        .I1(\v_cnt[9]_i_4_n_0 ),
        .I2(v_cnt_reg[5]),
        .I3(v_cnt_reg[6]),
        .I4(v_cnt_reg[8]),
        .O(plusOp__1[8]));
  LUT5 #(
    .INIT(32'h1500FFFF)) 
    \v_cnt[9]_i_1 
       (.I0(ltOp__40),
        .I1(\addressCounter[18]_i_4_n_0 ),
        .I2(\addressCounter[18]_i_5_n_0 ),
        .I3(v_cnt_reg[9]),
        .I4(reset),
        .O(\v_cnt[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \v_cnt[9]_i_2 
       (.I0(h_cnt_reg[7]),
        .I1(h_cnt_reg[6]),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[8]),
        .I4(h_cnt_reg[9]),
        .O(\v_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_cnt[9]_i_3 
       (.I0(\v_cnt[9]_i_4_n_0 ),
        .I1(v_cnt_reg[5]),
        .I2(v_cnt_reg[6]),
        .I3(v_cnt_reg[8]),
        .I4(v_cnt_reg[7]),
        .I5(v_cnt_reg[9]),
        .O(plusOp__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_cnt[9]_i_4 
       (.I0(v_cnt_reg[4]),
        .I1(v_cnt_reg[3]),
        .I2(v_cnt_reg[2]),
        .I3(v_cnt_reg[1]),
        .I4(\v_cnt_reg_n_0_[0] ),
        .O(\v_cnt[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[0]),
        .Q(\v_cnt_reg_n_0_[0] ),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[1]),
        .Q(v_cnt_reg[1]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[2]),
        .Q(v_cnt_reg[2]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[3]),
        .Q(v_cnt_reg[3]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[4]),
        .Q(v_cnt_reg[4]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[5]),
        .Q(v_cnt_reg[5]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[6]),
        .Q(v_cnt_reg[6]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[7]),
        .Q(v_cnt_reg[7]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[8]),
        .Q(v_cnt_reg[8]),
        .R(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(clk25),
        .CE(\v_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[9]),
        .Q(v_cnt_reg[9]),
        .R(\v_cnt[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_b[0]_INST_0 
       (.I0(\BLUE_reg_n_0_[0] ),
        .I1(h_cnt_reg__0),
        .O(vga_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_b[1]_INST_0 
       (.I0(\BLUE_reg_n_0_[1] ),
        .I1(h_cnt_reg__0),
        .O(vga_b[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_b[2]_INST_0 
       (.I0(\BLUE_reg_n_0_[2] ),
        .I1(h_cnt_reg__0),
        .O(vga_b[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_b[3]_INST_0 
       (.I0(\BLUE_reg_n_0_[3] ),
        .I1(h_cnt_reg__0),
        .O(vga_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_g[0]_INST_0 
       (.I0(\GREEN_reg_n_0_[0] ),
        .I1(h_cnt_reg__0),
        .O(vga_g[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_g[1]_INST_0 
       (.I0(\GREEN_reg_n_0_[1] ),
        .I1(h_cnt_reg__0),
        .O(vga_g[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_g[2]_INST_0 
       (.I0(\GREEN_reg_n_0_[2] ),
        .I1(h_cnt_reg__0),
        .O(vga_g[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_g[3]_INST_0 
       (.I0(\GREEN_reg_n_0_[3] ),
        .I1(h_cnt_reg__0),
        .O(vga_g[3]));
  LUT6 #(
    .INIT(64'hFFFF81FFFFFFFFFF)) 
    vga_hs_INST_0
       (.I0(h_cnt_reg[6]),
        .I1(h_cnt_reg[5]),
        .I2(h_cnt_reg[4]),
        .I3(h_cnt_reg[9]),
        .I4(h_cnt_reg[8]),
        .I5(h_cnt_reg[7]),
        .O(vga_hs));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r[0]_INST_0 
       (.I0(\RED_reg_n_0_[0] ),
        .I1(h_cnt_reg__0),
        .O(vga_r[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r[1]_INST_0 
       (.I0(\RED_reg_n_0_[1] ),
        .I1(h_cnt_reg__0),
        .O(vga_r[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r[2]_INST_0 
       (.I0(\RED_reg_n_0_[2] ),
        .I1(h_cnt_reg__0),
        .O(vga_r[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \vga_r[3]_INST_0 
       (.I0(\RED_reg_n_0_[3] ),
        .I1(h_cnt_reg__0),
        .O(vga_r[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    vga_vs_INST_0
       (.I0(v_cnt_reg[1]),
        .I1(v_cnt_reg[3]),
        .I2(v_cnt_reg[4]),
        .I3(v_cnt_reg[2]),
        .I4(vga_vs_INST_0_i_1_n_0),
        .I5(v_cnt_reg[9]),
        .O(vga_vs));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vga_vs_INST_0_i_1
       (.I0(v_cnt_reg[5]),
        .I1(v_cnt_reg[6]),
        .I2(v_cnt_reg[7]),
        .I3(v_cnt_reg[8]),
        .O(vga_vs_INST_0_i_1_n_0));
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
