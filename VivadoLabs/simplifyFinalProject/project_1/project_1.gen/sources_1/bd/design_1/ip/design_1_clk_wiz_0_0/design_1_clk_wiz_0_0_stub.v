// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Jun 25 17:08:08 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_clk_wiz_0_0 -prefix
//               design_1_clk_wiz_0_0_ design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk100_MHz, clk25_MHz, clk24_MHz, resetn, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk100_MHz,clk25_MHz,clk24_MHz,resetn,locked,clk_in1" */;
  output clk100_MHz;
  output clk25_MHz;
  output clk24_MHz;
  input resetn;
  output locked;
  input clk_in1;
endmodule
