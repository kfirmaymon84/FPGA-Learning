// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jul  6 21:26:00 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_i2c_sender_0_0/design_1_i2c_sender_0_0_stub.v
// Design      : design_1_i2c_sender_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2c_sender,Vivado 2021.2" *)
module design_1_i2c_sender_0_0(clk, siod, sioc, resend, finished)
/* synthesis syn_black_box black_box_pad_pin="clk,siod,sioc,resend,finished" */;
  input clk;
  inout siod;
  output sioc;
  input resend;
  output finished;
endmodule
