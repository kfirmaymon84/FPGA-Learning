// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 20:09:56 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/FPGA-Learning/VivadoLabs/dspLab/dspLab/dspLab.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_stub.v
// Design      : dsp_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_2,Vivado 2021.2" *)
module dsp_macro_0(CLK, SEL, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[1:0],A[24:0],B[17:0],P[47:0]" */;
  input CLK;
  input [1:0]SEL;
  input [24:0]A;
  input [17:0]B;
  output [47:0]P;
endmodule
