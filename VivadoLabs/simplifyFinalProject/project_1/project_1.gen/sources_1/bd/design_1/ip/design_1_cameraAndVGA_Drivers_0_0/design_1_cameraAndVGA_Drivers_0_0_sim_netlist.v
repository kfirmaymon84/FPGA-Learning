// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul  5 22:25:42 2022
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
    reset,
    debugLed);
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
  output debugLed;

  wire \<const0> ;
  wire [7:0]DIN;
  wire HS;
  wire PCLK;
  wire VSYNC;
  wire [18:0]addressRead;
  wire [18:0]addressWrite;
  wire clk25;
  wire [11:0]dataRead;
  wire [11:0]dataWrite;
  wire reset;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire vga_hs;
  wire [3:0]vga_r;
  wire vga_vs;
  wire [0:0]wea;

  assign debugLed = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers U0
       (.DIN(DIN),
        .HS(HS),
        .PCLK(PCLK),
        .VSYNC(VSYNC),
        .addressRead(addressRead),
        .addressWrite(addressWrite),
        .clk25(clk25),
        .dataRead(dataRead),
        .dataWrite(dataWrite),
        .reset(reset),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_hs(vga_hs),
        .vga_r(vga_r),
        .vga_vs(vga_vs),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "cameraAndVGA_Drivers" *) 
module design_1_cameraAndVGA_Drivers_0_0_cameraAndVGA_Drivers
   (vga_r,
    vga_g,
    vga_b,
    addressWrite,
    dataWrite,
    addressRead,
    vga_hs,
    vga_vs,
    wea,
    reset,
    VSYNC,
    PCLK,
    dataRead,
    clk25,
    DIN,
    HS);
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  output [18:0]addressWrite;
  output [11:0]dataWrite;
  output [18:0]addressRead;
  output vga_hs;
  output vga_vs;
  output [0:0]wea;
  input reset;
  input VSYNC;
  input PCLK;
  input [11:0]dataRead;
  input clk25;
  input [7:0]DIN;
  input HS;

  wire [7:0]DIN;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire HS;
  wire PCLK;
  wire \RED[3]_i_1_n_0 ;
  wire VSYNC;
  wire \addressCounter[0]_i_1_n_0 ;
  wire \addressCounter[18]_i_1_n_0 ;
  wire \addressCounter[18]_i_2_n_0 ;
  wire \addressCounter[18]_i_4_n_0 ;
  wire \addressCounter[18]_i_5_n_0 ;
  wire [18:0]addressRead;
  wire [18:0]addressWrite;
  wire clk25;
  wire [11:0]dataRead;
  wire [11:0]dataWrite;
  wire \dataWrite[11]_i_1_n_0 ;
  wire \h_cnt[9]_i_1_n_0 ;
  wire \h_cnt[9]_i_3_n_0 ;
  wire [9:4]h_cnt_reg;
  wire \h_cnt_reg_n_0_[0] ;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire [18:1]in8;
  wire isMSB_i_1_n_0;
  wire isMSB_i_2_n_0;
  wire isMSB_reg_n_0;
  wire isStart_i_1_n_0;
  wire isStart_reg_n_0;
  wire lastVsyncState;
  wire lastVsyncState_i_1_n_0;
  wire lastVsyncState_reg_n_0;
  wire ltOp__5;
  wire [15:15]p_1_out;
  wire [15:8]pixleData;
  wire [18:1]plusOp;
  wire [9:0]plusOp__0;
  wire [9:0]plusOp__1;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_0 ;
  wire \plusOp_inferred__1/i__carry__2_n_1 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__3_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__2/i__carry__0_n_0 ;
  wire \plusOp_inferred__2/i__carry__0_n_1 ;
  wire \plusOp_inferred__2/i__carry__0_n_2 ;
  wire \plusOp_inferred__2/i__carry__0_n_3 ;
  wire \plusOp_inferred__2/i__carry__1_n_0 ;
  wire \plusOp_inferred__2/i__carry__1_n_1 ;
  wire \plusOp_inferred__2/i__carry__1_n_2 ;
  wire \plusOp_inferred__2/i__carry__1_n_3 ;
  wire \plusOp_inferred__2/i__carry__2_n_0 ;
  wire \plusOp_inferred__2/i__carry__2_n_1 ;
  wire \plusOp_inferred__2/i__carry__2_n_2 ;
  wire \plusOp_inferred__2/i__carry__2_n_3 ;
  wire \plusOp_inferred__2/i__carry__3_n_3 ;
  wire \plusOp_inferred__2/i__carry_n_0 ;
  wire \plusOp_inferred__2/i__carry_n_1 ;
  wire \plusOp_inferred__2/i__carry_n_2 ;
  wire \plusOp_inferred__2/i__carry_n_3 ;
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
  wire [0:0]wea;
  wire \wea[0]_i_1_n_0 ;
  wire wrAddressCounter;
  wire \wrAddressCounter[0]_i_1_n_0 ;
  wire \wrAddressCounter[10]_i_1_n_0 ;
  wire \wrAddressCounter[11]_i_1_n_0 ;
  wire \wrAddressCounter[12]_i_1_n_0 ;
  wire \wrAddressCounter[13]_i_1_n_0 ;
  wire \wrAddressCounter[14]_i_1_n_0 ;
  wire \wrAddressCounter[15]_i_1_n_0 ;
  wire \wrAddressCounter[16]_i_1_n_0 ;
  wire \wrAddressCounter[17]_i_1_n_0 ;
  wire \wrAddressCounter[18]_i_1_n_0 ;
  wire \wrAddressCounter[18]_i_3_n_0 ;
  wire \wrAddressCounter[18]_i_4_n_0 ;
  wire \wrAddressCounter[1]_i_1_n_0 ;
  wire \wrAddressCounter[2]_i_1_n_0 ;
  wire \wrAddressCounter[3]_i_1_n_0 ;
  wire \wrAddressCounter[4]_i_1_n_0 ;
  wire \wrAddressCounter[5]_i_1_n_0 ;
  wire \wrAddressCounter[6]_i_1_n_0 ;
  wire \wrAddressCounter[7]_i_1_n_0 ;
  wire \wrAddressCounter[8]_i_1_n_0 ;
  wire \wrAddressCounter[9]_i_1_n_0 ;
  wire [3:1]\NLW_plusOp_inferred__1/i__carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__3_O_UNCONNECTED ;
  wire [3:1]\NLW_plusOp_inferred__2/i__carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__2/i__carry__3_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[0] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[0]),
        .Q(vga_b[0]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[1] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[1]),
        .Q(vga_b[1]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[2] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[2]),
        .Q(vga_b[2]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BLUE_reg[3] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[3]),
        .Q(vga_b[3]),
        .R(\RED[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F7F0F0FFFFFFFF)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(VSYNC),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(lastVsyncState_reg_n_0),
        .I4(lastVsyncState),
        .I5(reset),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFA020200000000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(VSYNC),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(lastVsyncState_reg_n_0),
        .I4(lastVsyncState),
        .I5(reset),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A800000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(VSYNC),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(lastVsyncState_reg_n_0),
        .I4(lastVsyncState),
        .I5(reset),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_start_frame:001,start_frame:010,end_frame_st:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(lastVsyncState),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_for_start_frame:001,start_frame:010,end_frame_st:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_for_start_frame:001,start_frame:010,end_frame_st:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[0] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[4]),
        .Q(vga_g[0]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[1] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[5]),
        .Q(vga_g[1]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[2] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[6]),
        .Q(vga_g[2]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GREEN_reg[3] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[7]),
        .Q(vga_g[3]),
        .R(\RED[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA800AAAA)) 
    \RED[3]_i_1 
       (.I0(reset),
        .I1(h_cnt_reg[7]),
        .I2(h_cnt_reg[8]),
        .I3(h_cnt_reg[9]),
        .I4(vga_vs_INST_0_i_1_n_0),
        .I5(v_cnt_reg[9]),
        .O(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[0] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[8]),
        .Q(vga_r[0]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[1] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[9]),
        .Q(vga_r[1]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[2] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[10]),
        .Q(vga_r[2]),
        .R(\RED[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RED_reg[3] 
       (.C(clk25),
        .CE(reset),
        .D(dataRead[11]),
        .Q(vga_r[3]),
        .R(\RED[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addressCounter[0]_i_1 
       (.I0(addressRead[0]),
        .O(\addressCounter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1500FFFF)) 
    \addressCounter[18]_i_1 
       (.I0(ltOp__5),
        .I1(\addressCounter[18]_i_4_n_0 ),
        .I2(\addressCounter[18]_i_5_n_0 ),
        .I3(v_cnt_reg[9]),
        .I4(reset),
        .O(\addressCounter[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001F00)) 
    \addressCounter[18]_i_2 
       (.I0(h_cnt_reg[7]),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[9]),
        .I3(vga_vs_INST_0_i_1_n_0),
        .I4(v_cnt_reg[9]),
        .O(\addressCounter[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \addressCounter[18]_i_3 
       (.I0(h_cnt_reg[9]),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[6]),
        .I4(h_cnt_reg[7]),
        .O(ltOp__5));
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
  LUT3 #(
    .INIT(8'h08)) 
    \dataWrite[11]_i_1 
       (.I0(HS),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(isMSB_reg_n_0),
        .O(\dataWrite[11]_i_1_n_0 ));
  FDRE \dataWrite_reg[0] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(DIN[1]),
        .Q(dataWrite[0]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[10] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[14]),
        .Q(dataWrite[10]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[11] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[15]),
        .Q(dataWrite[11]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[1] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(DIN[2]),
        .Q(dataWrite[1]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[2] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(DIN[3]),
        .Q(dataWrite[2]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[3] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(DIN[4]),
        .Q(dataWrite[3]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[4] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(DIN[7]),
        .Q(dataWrite[4]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[5] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[8]),
        .Q(dataWrite[5]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[6] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[9]),
        .Q(dataWrite[6]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[7] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[10]),
        .Q(dataWrite[7]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[8] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[12]),
        .Q(dataWrite[8]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE \dataWrite_reg[9] 
       (.C(PCLK),
        .CE(\dataWrite[11]_i_1_n_0 ),
        .D(pixleData[13]),
        .Q(dataWrite[9]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cnt[1]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_cnt[2]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(\h_cnt_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_cnt[3]_i_1 
       (.I0(\h_cnt_reg_n_0_[1] ),
        .I1(\h_cnt_reg_n_0_[0] ),
        .I2(\h_cnt_reg_n_0_[2] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_cnt[4]_i_1 
       (.I0(\h_cnt_reg_n_0_[2] ),
        .I1(\h_cnt_reg_n_0_[0] ),
        .I2(\h_cnt_reg_n_0_[1] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .I4(h_cnt_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_cnt[5]_i_1 
       (.I0(\h_cnt_reg_n_0_[3] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(\h_cnt_reg_n_0_[0] ),
        .I3(\h_cnt_reg_n_0_[2] ),
        .I4(h_cnt_reg[4]),
        .I5(h_cnt_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \h_cnt[6]_i_1 
       (.I0(\h_cnt[9]_i_3_n_0 ),
        .I1(h_cnt_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .I2(\h_cnt_reg_n_0_[0] ),
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
        .Q(\h_cnt_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7FFF800)) 
    isMSB_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(HS),
        .I2(isMSB_i_2_n_0),
        .I3(reset),
        .I4(isMSB_reg_n_0),
        .O(isMSB_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    isMSB_i_2
       (.I0(VSYNC),
        .I1(lastVsyncState),
        .I2(lastVsyncState_reg_n_0),
        .O(isMSB_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    isMSB_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(isMSB_i_1_n_0),
        .Q(isMSB_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF7FFFFFF000000)) 
    isStart_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(HS),
        .I2(isMSB_reg_n_0),
        .I3(isMSB_i_2_n_0),
        .I4(reset),
        .I5(isStart_reg_n_0),
        .O(isStart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    isStart_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(isStart_i_1_n_0),
        .Q(isStart_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    lastVsyncState_i_1
       (.I0(VSYNC),
        .I1(reset),
        .I2(lastVsyncState),
        .I3(lastVsyncState_reg_n_0),
        .O(lastVsyncState_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lastVsyncState_reg
       (.C(PCLK),
        .CE(1'b1),
        .D(lastVsyncState_i_1_n_0),
        .Q(lastVsyncState_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \pixleData[15]_i_1 
       (.I0(HS),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(isMSB_reg_n_0),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[10] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[2]),
        .Q(pixleData[10]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[12] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[4]),
        .Q(pixleData[12]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[13] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[5]),
        .Q(pixleData[13]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[14] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[6]),
        .Q(pixleData[14]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[15] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[7]),
        .Q(pixleData[15]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[8] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[0]),
        .Q(pixleData[8]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixleData_reg[9] 
       (.C(PCLK),
        .CE(p_1_out),
        .D(DIN[1]),
        .Q(pixleData[9]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(addressWrite[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S(addressWrite[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(addressWrite[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(addressWrite[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__2_n_0 ,\plusOp_inferred__1/i__carry__2_n_1 ,\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S(addressWrite[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__3 
       (.CI(\plusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__3_CO_UNCONNECTED [3:1],\plusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__3_O_UNCONNECTED [3:2],in8[18:17]}),
        .S({1'b0,1'b0,addressWrite[18:17]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__2/i__carry_n_0 ,\plusOp_inferred__2/i__carry_n_1 ,\plusOp_inferred__2/i__carry_n_2 ,\plusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(addressRead[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(addressRead[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__0 
       (.CI(\plusOp_inferred__2/i__carry_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__0_n_0 ,\plusOp_inferred__2/i__carry__0_n_1 ,\plusOp_inferred__2/i__carry__0_n_2 ,\plusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(addressRead[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__1 
       (.CI(\plusOp_inferred__2/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__1_n_0 ,\plusOp_inferred__2/i__carry__1_n_1 ,\plusOp_inferred__2/i__carry__1_n_2 ,\plusOp_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(addressRead[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__2 
       (.CI(\plusOp_inferred__2/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__2_n_0 ,\plusOp_inferred__2/i__carry__2_n_1 ,\plusOp_inferred__2/i__carry__2_n_2 ,\plusOp_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(addressRead[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__3 
       (.CI(\plusOp_inferred__2/i__carry__2_n_0 ),
        .CO({\NLW_plusOp_inferred__2/i__carry__3_CO_UNCONNECTED [3:1],\plusOp_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__2/i__carry__3_O_UNCONNECTED [3:2],plusOp[18:17]}),
        .S({1'b0,1'b0,addressRead[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(v_cnt_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_cnt[2]_i_1 
       (.I0(v_cnt_reg[1]),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(v_cnt_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
       (.I0(ltOp__5),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vga_vs_INST_0_i_1
       (.I0(v_cnt_reg[5]),
        .I1(v_cnt_reg[6]),
        .I2(v_cnt_reg[7]),
        .I3(v_cnt_reg[8]),
        .O(vga_vs_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h2AEA0000)) 
    \wea[0]_i_1 
       (.I0(wea),
        .I1(HS),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(isMSB_reg_n_0),
        .I4(reset),
        .O(\wea[0]_i_1_n_0 ));
  FDRE \wea_reg[0] 
       (.C(PCLK),
        .CE(1'b1),
        .D(\wea[0]_i_1_n_0 ),
        .Q(wea),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wrAddressCounter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(addressWrite[0]),
        .O(\wrAddressCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[10]),
        .O(\wrAddressCounter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[11]),
        .O(\wrAddressCounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[12]),
        .O(\wrAddressCounter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[13]),
        .O(\wrAddressCounter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[14]),
        .O(\wrAddressCounter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[15]),
        .O(\wrAddressCounter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[16]),
        .O(\wrAddressCounter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[17]),
        .O(\wrAddressCounter[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wrAddressCounter[18]_i_1 
       (.I0(reset),
        .O(\wrAddressCounter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \wrAddressCounter[18]_i_2 
       (.I0(\wrAddressCounter[18]_i_4_n_0 ),
        .I1(isMSB_reg_n_0),
        .I2(isStart_reg_n_0),
        .I3(lastVsyncState_reg_n_0),
        .I4(lastVsyncState),
        .I5(VSYNC),
        .O(wrAddressCounter));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[18]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[18]),
        .O(\wrAddressCounter[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[18]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(HS),
        .O(\wrAddressCounter[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[1]),
        .O(\wrAddressCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[2]),
        .O(\wrAddressCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[3]),
        .O(\wrAddressCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[4]),
        .O(\wrAddressCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[5]),
        .O(\wrAddressCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[6]),
        .O(\wrAddressCounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[7]),
        .O(\wrAddressCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[8]),
        .O(\wrAddressCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrAddressCounter[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in8[9]),
        .O(\wrAddressCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[0] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[0]_i_1_n_0 ),
        .Q(addressWrite[0]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[10] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[10]_i_1_n_0 ),
        .Q(addressWrite[10]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[11] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[11]_i_1_n_0 ),
        .Q(addressWrite[11]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[12] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[12]_i_1_n_0 ),
        .Q(addressWrite[12]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[13] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[13]_i_1_n_0 ),
        .Q(addressWrite[13]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[14] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[14]_i_1_n_0 ),
        .Q(addressWrite[14]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[15] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[15]_i_1_n_0 ),
        .Q(addressWrite[15]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[16] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[16]_i_1_n_0 ),
        .Q(addressWrite[16]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[17] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[17]_i_1_n_0 ),
        .Q(addressWrite[17]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[18] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[18]_i_3_n_0 ),
        .Q(addressWrite[18]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[1] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[1]_i_1_n_0 ),
        .Q(addressWrite[1]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[2] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[2]_i_1_n_0 ),
        .Q(addressWrite[2]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[3] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[3]_i_1_n_0 ),
        .Q(addressWrite[3]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[4] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[4]_i_1_n_0 ),
        .Q(addressWrite[4]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[5] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[5]_i_1_n_0 ),
        .Q(addressWrite[5]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[6] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[6]_i_1_n_0 ),
        .Q(addressWrite[6]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[7] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[7]_i_1_n_0 ),
        .Q(addressWrite[7]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[8] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[8]_i_1_n_0 ),
        .Q(addressWrite[8]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrAddressCounter_reg[9] 
       (.C(PCLK),
        .CE(wrAddressCounter),
        .D(\wrAddressCounter[9]_i_1_n_0 ),
        .Q(addressWrite[9]),
        .R(\wrAddressCounter[18]_i_1_n_0 ));
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
