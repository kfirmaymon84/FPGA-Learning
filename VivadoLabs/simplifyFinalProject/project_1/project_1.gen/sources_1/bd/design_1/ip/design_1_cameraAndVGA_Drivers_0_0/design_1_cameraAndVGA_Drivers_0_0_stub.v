// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Jul  5 22:25:42 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_cameraAndVGA_Drivers_0_0/design_1_cameraAndVGA_Drivers_0_0_stub.v
// Design      : design_1_cameraAndVGA_Drivers_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cameraAndVGA_Drivers,Vivado 2021.2" *)
module design_1_cameraAndVGA_Drivers_0_0(vga_r, vga_g, vga_b, vga_hs, vga_vs, addressWrite, 
  dataWrite, wea, addressRead, dataRead, PCLK, DIN, VSYNC, HS, clk, clk25, reset, debugLed)
/* synthesis syn_black_box black_box_pad_pin="vga_r[3:0],vga_g[3:0],vga_b[3:0],vga_hs,vga_vs,addressWrite[18:0],dataWrite[11:0],wea[0:0],addressRead[18:0],dataRead[11:0],PCLK,DIN[7:0],VSYNC,HS,clk,clk25,reset,debugLed" */;
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
  input clk;
  input clk25;
  input reset;
  output debugLed;
endmodule
