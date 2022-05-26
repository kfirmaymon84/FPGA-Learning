// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Dec 10 20:38:37 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/xilinx/training/VLA_Intro/demo/ZCU104/vhdl/wave_gen.gen/sources_1/ip/ila_tx_side/ila_tx_side_stub.v
// Design      : ila_tx_side
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2021.2" *)
module ila_tx_side(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[2:0],probe1[7:0],probe2[31:0]" */;
  input clk;
  input [2:0]probe0;
  input [7:0]probe1;
  input [31:0]probe2;
endmodule
