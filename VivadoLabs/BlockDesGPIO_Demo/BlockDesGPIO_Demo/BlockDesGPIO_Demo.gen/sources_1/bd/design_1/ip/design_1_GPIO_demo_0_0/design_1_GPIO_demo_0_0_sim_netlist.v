// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  2 20:36:05 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/BlockDesGPIO_Demo/BlockDesGPIO_Demo/BlockDesGPIO_Demo.gen/sources_1/bd/design_1/ip/design_1_GPIO_demo_0_0/design_1_GPIO_demo_0_0_sim_netlist.v
// Design      : design_1_GPIO_demo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_GPIO_demo_0_0,GPIO_demo,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "GPIO_demo,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_GPIO_demo_0_0
   (SW,
    BTN,
    CLK,
    LED,
    SSEG_CA,
    SSEG_AN,
    UART_TXD,
    RGB1_Red,
    RGB1_Green,
    RGB1_Blue,
    RGB2_Red,
    RGB2_Green,
    RGB2_Blue,
    micClk,
    micLRSel,
    micData,
    ampPWM,
    ampSD);
  input [15:0]SW;
  input [4:0]BTN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0" *) input CLK;
  output [15:0]LED;
  output [7:0]SSEG_CA;
  output [7:0]SSEG_AN;
  output UART_TXD;
  output RGB1_Red;
  output RGB1_Green;
  output RGB1_Blue;
  output RGB2_Red;
  output RGB2_Green;
  output RGB2_Blue;
  output micClk;
  output micLRSel;
  input micData;
  output ampPWM;
  output ampSD;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]BTN;
  wire CLK;
  wire [15:0]LED;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire [7:4]\^SSEG_AN ;
  wire [6:0]\^SSEG_CA ;
  wire [15:0]SW;
  wire UART_TXD;
  wire ampPWM;
  wire micClk;
  wire micData;

  assign RGB1_Blue = RGB2_Blue;
  assign RGB1_Green = RGB2_Green;
  assign RGB1_Red = RGB2_Red;
  assign SSEG_AN[7:4] = \^SSEG_AN [7:4];
  assign SSEG_AN[3:0] = \^SSEG_AN [7:4];
  assign SSEG_CA[7] = \<const1> ;
  assign SSEG_CA[6:0] = \^SSEG_CA [6:0];
  assign ampSD = \<const1> ;
  assign micLRSel = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_GPIO_demo_0_0_GPIO_demo U0
       (.BTN(BTN),
        .CLK(CLK),
        .LED(LED),
        .RGB2_Blue(RGB2_Blue),
        .RGB2_Green(RGB2_Green),
        .RGB2_Red(RGB2_Red),
        .SSEG_AN(\^SSEG_AN ),
        .SSEG_CA(\^SSEG_CA ),
        .SW(SW),
        .UART_TXD(UART_TXD),
        .ampPWM(ampPWM),
        .micClk(micClk),
        .micData(micData));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "GPIO_demo" *) 
module design_1_GPIO_demo_0_0_GPIO_demo
   (UART_TXD,
    RGB2_Green,
    RGB2_Blue,
    RGB2_Red,
    micClk,
    SSEG_CA,
    SSEG_AN,
    LED,
    ampPWM,
    BTN,
    CLK,
    SW,
    micData);
  output UART_TXD;
  output RGB2_Green;
  output RGB2_Blue;
  output RGB2_Red;
  output micClk;
  output [6:0]SSEG_CA;
  output [3:0]SSEG_AN;
  output [15:0]LED;
  output ampPWM;
  input [4:0]BTN;
  input CLK;
  input [15:0]SW;
  input micData;

  wire [4:0]BTN;
  wire CLK;
  wire Inst_UART_TX_CTRL_n_1;
  wire Inst_UART_TX_CTRL_n_2;
  wire Inst_UART_TX_CTRL_n_3;
  wire Inst_btn_debounce_n_5;
  wire [15:0]LED;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire [3:0]SSEG_AN;
  wire [6:0]SSEG_CA;
  wire [15:0]SW;
  wire UART_TXD;
  wire ampPWM;
  wire [4:0]btnDeBnc;
  wire [3:0]btnReg;
  wire [3:0]clk_cntr_reg_reg;
  wire eqOp2_in;
  wire eqOp__25;
  wire micClk;
  wire micData;
  wire \myCounter[0]_i_2_n_0 ;
  wire [43:28]myCounter_reg;
  wire \myCounter_reg[0]_i_1_n_0 ;
  wire \myCounter_reg[0]_i_1_n_1 ;
  wire \myCounter_reg[0]_i_1_n_2 ;
  wire \myCounter_reg[0]_i_1_n_3 ;
  wire \myCounter_reg[0]_i_1_n_4 ;
  wire \myCounter_reg[0]_i_1_n_5 ;
  wire \myCounter_reg[0]_i_1_n_6 ;
  wire \myCounter_reg[0]_i_1_n_7 ;
  wire \myCounter_reg[12]_i_1_n_0 ;
  wire \myCounter_reg[12]_i_1_n_1 ;
  wire \myCounter_reg[12]_i_1_n_2 ;
  wire \myCounter_reg[12]_i_1_n_3 ;
  wire \myCounter_reg[12]_i_1_n_4 ;
  wire \myCounter_reg[12]_i_1_n_5 ;
  wire \myCounter_reg[12]_i_1_n_6 ;
  wire \myCounter_reg[12]_i_1_n_7 ;
  wire \myCounter_reg[16]_i_1_n_0 ;
  wire \myCounter_reg[16]_i_1_n_1 ;
  wire \myCounter_reg[16]_i_1_n_2 ;
  wire \myCounter_reg[16]_i_1_n_3 ;
  wire \myCounter_reg[16]_i_1_n_4 ;
  wire \myCounter_reg[16]_i_1_n_5 ;
  wire \myCounter_reg[16]_i_1_n_6 ;
  wire \myCounter_reg[16]_i_1_n_7 ;
  wire \myCounter_reg[20]_i_1_n_0 ;
  wire \myCounter_reg[20]_i_1_n_1 ;
  wire \myCounter_reg[20]_i_1_n_2 ;
  wire \myCounter_reg[20]_i_1_n_3 ;
  wire \myCounter_reg[20]_i_1_n_4 ;
  wire \myCounter_reg[20]_i_1_n_5 ;
  wire \myCounter_reg[20]_i_1_n_6 ;
  wire \myCounter_reg[20]_i_1_n_7 ;
  wire \myCounter_reg[24]_i_1_n_0 ;
  wire \myCounter_reg[24]_i_1_n_1 ;
  wire \myCounter_reg[24]_i_1_n_2 ;
  wire \myCounter_reg[24]_i_1_n_3 ;
  wire \myCounter_reg[24]_i_1_n_4 ;
  wire \myCounter_reg[24]_i_1_n_5 ;
  wire \myCounter_reg[24]_i_1_n_6 ;
  wire \myCounter_reg[24]_i_1_n_7 ;
  wire \myCounter_reg[28]_i_1_n_0 ;
  wire \myCounter_reg[28]_i_1_n_1 ;
  wire \myCounter_reg[28]_i_1_n_2 ;
  wire \myCounter_reg[28]_i_1_n_3 ;
  wire \myCounter_reg[28]_i_1_n_4 ;
  wire \myCounter_reg[28]_i_1_n_5 ;
  wire \myCounter_reg[28]_i_1_n_6 ;
  wire \myCounter_reg[28]_i_1_n_7 ;
  wire \myCounter_reg[32]_i_1_n_0 ;
  wire \myCounter_reg[32]_i_1_n_1 ;
  wire \myCounter_reg[32]_i_1_n_2 ;
  wire \myCounter_reg[32]_i_1_n_3 ;
  wire \myCounter_reg[32]_i_1_n_4 ;
  wire \myCounter_reg[32]_i_1_n_5 ;
  wire \myCounter_reg[32]_i_1_n_6 ;
  wire \myCounter_reg[32]_i_1_n_7 ;
  wire \myCounter_reg[36]_i_1_n_0 ;
  wire \myCounter_reg[36]_i_1_n_1 ;
  wire \myCounter_reg[36]_i_1_n_2 ;
  wire \myCounter_reg[36]_i_1_n_3 ;
  wire \myCounter_reg[36]_i_1_n_4 ;
  wire \myCounter_reg[36]_i_1_n_5 ;
  wire \myCounter_reg[36]_i_1_n_6 ;
  wire \myCounter_reg[36]_i_1_n_7 ;
  wire \myCounter_reg[40]_i_1_n_1 ;
  wire \myCounter_reg[40]_i_1_n_2 ;
  wire \myCounter_reg[40]_i_1_n_3 ;
  wire \myCounter_reg[40]_i_1_n_4 ;
  wire \myCounter_reg[40]_i_1_n_5 ;
  wire \myCounter_reg[40]_i_1_n_6 ;
  wire \myCounter_reg[40]_i_1_n_7 ;
  wire \myCounter_reg[4]_i_1_n_0 ;
  wire \myCounter_reg[4]_i_1_n_1 ;
  wire \myCounter_reg[4]_i_1_n_2 ;
  wire \myCounter_reg[4]_i_1_n_3 ;
  wire \myCounter_reg[4]_i_1_n_4 ;
  wire \myCounter_reg[4]_i_1_n_5 ;
  wire \myCounter_reg[4]_i_1_n_6 ;
  wire \myCounter_reg[4]_i_1_n_7 ;
  wire \myCounter_reg[8]_i_1_n_0 ;
  wire \myCounter_reg[8]_i_1_n_1 ;
  wire \myCounter_reg[8]_i_1_n_2 ;
  wire \myCounter_reg[8]_i_1_n_3 ;
  wire \myCounter_reg[8]_i_1_n_4 ;
  wire \myCounter_reg[8]_i_1_n_5 ;
  wire \myCounter_reg[8]_i_1_n_6 ;
  wire \myCounter_reg[8]_i_1_n_7 ;
  wire \myCounter_reg_n_0_[0] ;
  wire \myCounter_reg_n_0_[10] ;
  wire \myCounter_reg_n_0_[11] ;
  wire \myCounter_reg_n_0_[12] ;
  wire \myCounter_reg_n_0_[13] ;
  wire \myCounter_reg_n_0_[14] ;
  wire \myCounter_reg_n_0_[15] ;
  wire \myCounter_reg_n_0_[16] ;
  wire \myCounter_reg_n_0_[17] ;
  wire \myCounter_reg_n_0_[18] ;
  wire \myCounter_reg_n_0_[19] ;
  wire \myCounter_reg_n_0_[1] ;
  wire \myCounter_reg_n_0_[20] ;
  wire \myCounter_reg_n_0_[21] ;
  wire \myCounter_reg_n_0_[22] ;
  wire \myCounter_reg_n_0_[23] ;
  wire \myCounter_reg_n_0_[24] ;
  wire \myCounter_reg_n_0_[25] ;
  wire \myCounter_reg_n_0_[26] ;
  wire \myCounter_reg_n_0_[27] ;
  wire \myCounter_reg_n_0_[2] ;
  wire \myCounter_reg_n_0_[3] ;
  wire \myCounter_reg_n_0_[4] ;
  wire \myCounter_reg_n_0_[5] ;
  wire \myCounter_reg_n_0_[6] ;
  wire \myCounter_reg_n_0_[7] ;
  wire \myCounter_reg_n_0_[8] ;
  wire \myCounter_reg_n_0_[9] ;
  wire [3:2]plusOp__1;
  wire [4:0]plusOp__2;
  wire pwm_val_reg_i_1_n_0;
  wire pwm_val_reg_i_2_n_0;
  wire reset_cntr0;
  wire \reset_cntr[0]_i_4_n_0 ;
  wire \reset_cntr[0]_i_5_n_0 ;
  wire \reset_cntr[0]_i_6_n_0 ;
  wire \reset_cntr[0]_i_7_n_0 ;
  wire \reset_cntr[0]_i_8_n_0 ;
  wire [17:0]reset_cntr_reg;
  wire \reset_cntr_reg[0]_i_2_n_0 ;
  wire \reset_cntr_reg[0]_i_2_n_1 ;
  wire \reset_cntr_reg[0]_i_2_n_2 ;
  wire \reset_cntr_reg[0]_i_2_n_3 ;
  wire \reset_cntr_reg[0]_i_2_n_4 ;
  wire \reset_cntr_reg[0]_i_2_n_5 ;
  wire \reset_cntr_reg[0]_i_2_n_6 ;
  wire \reset_cntr_reg[0]_i_2_n_7 ;
  wire \reset_cntr_reg[12]_i_1_n_0 ;
  wire \reset_cntr_reg[12]_i_1_n_1 ;
  wire \reset_cntr_reg[12]_i_1_n_2 ;
  wire \reset_cntr_reg[12]_i_1_n_3 ;
  wire \reset_cntr_reg[12]_i_1_n_4 ;
  wire \reset_cntr_reg[12]_i_1_n_5 ;
  wire \reset_cntr_reg[12]_i_1_n_6 ;
  wire \reset_cntr_reg[12]_i_1_n_7 ;
  wire \reset_cntr_reg[16]_i_1_n_3 ;
  wire \reset_cntr_reg[16]_i_1_n_6 ;
  wire \reset_cntr_reg[16]_i_1_n_7 ;
  wire \reset_cntr_reg[4]_i_1_n_0 ;
  wire \reset_cntr_reg[4]_i_1_n_1 ;
  wire \reset_cntr_reg[4]_i_1_n_2 ;
  wire \reset_cntr_reg[4]_i_1_n_3 ;
  wire \reset_cntr_reg[4]_i_1_n_4 ;
  wire \reset_cntr_reg[4]_i_1_n_5 ;
  wire \reset_cntr_reg[4]_i_1_n_6 ;
  wire \reset_cntr_reg[4]_i_1_n_7 ;
  wire \reset_cntr_reg[8]_i_1_n_0 ;
  wire \reset_cntr_reg[8]_i_1_n_1 ;
  wire \reset_cntr_reg[8]_i_1_n_2 ;
  wire \reset_cntr_reg[8]_i_1_n_3 ;
  wire \reset_cntr_reg[8]_i_1_n_4 ;
  wire \reset_cntr_reg[8]_i_1_n_5 ;
  wire \reset_cntr_reg[8]_i_1_n_6 ;
  wire \reset_cntr_reg[8]_i_1_n_7 ;
  wire [6:0]\sendStr[0]_5 ;
  wire \sendStr[14][0]_i_1_n_0 ;
  wire \sendStr[2][0]_i_1_n_0 ;
  wire \sendStr[4][1]_i_1_n_0 ;
  wire [0:0]\sendStr_reg[14] ;
  wire [0:0]\sendStr_reg[2] ;
  wire [1:1]\sendStr_reg[4] ;
  wire \strEnd[3]_i_1_n_0 ;
  wire \strEnd_reg_n_0_[3] ;
  wire strIndex;
  wire strIndex0;
  wire \strIndex[0]_i_3_n_0 ;
  wire [30:0]strIndex_reg;
  wire \strIndex_reg[0]_i_2_n_0 ;
  wire \strIndex_reg[0]_i_2_n_1 ;
  wire \strIndex_reg[0]_i_2_n_2 ;
  wire \strIndex_reg[0]_i_2_n_3 ;
  wire \strIndex_reg[0]_i_2_n_4 ;
  wire \strIndex_reg[0]_i_2_n_5 ;
  wire \strIndex_reg[0]_i_2_n_6 ;
  wire \strIndex_reg[0]_i_2_n_7 ;
  wire \strIndex_reg[12]_i_1_n_0 ;
  wire \strIndex_reg[12]_i_1_n_1 ;
  wire \strIndex_reg[12]_i_1_n_2 ;
  wire \strIndex_reg[12]_i_1_n_3 ;
  wire \strIndex_reg[12]_i_1_n_4 ;
  wire \strIndex_reg[12]_i_1_n_5 ;
  wire \strIndex_reg[12]_i_1_n_6 ;
  wire \strIndex_reg[12]_i_1_n_7 ;
  wire \strIndex_reg[16]_i_1_n_0 ;
  wire \strIndex_reg[16]_i_1_n_1 ;
  wire \strIndex_reg[16]_i_1_n_2 ;
  wire \strIndex_reg[16]_i_1_n_3 ;
  wire \strIndex_reg[16]_i_1_n_4 ;
  wire \strIndex_reg[16]_i_1_n_5 ;
  wire \strIndex_reg[16]_i_1_n_6 ;
  wire \strIndex_reg[16]_i_1_n_7 ;
  wire \strIndex_reg[20]_i_1_n_0 ;
  wire \strIndex_reg[20]_i_1_n_1 ;
  wire \strIndex_reg[20]_i_1_n_2 ;
  wire \strIndex_reg[20]_i_1_n_3 ;
  wire \strIndex_reg[20]_i_1_n_4 ;
  wire \strIndex_reg[20]_i_1_n_5 ;
  wire \strIndex_reg[20]_i_1_n_6 ;
  wire \strIndex_reg[20]_i_1_n_7 ;
  wire \strIndex_reg[24]_i_1_n_0 ;
  wire \strIndex_reg[24]_i_1_n_1 ;
  wire \strIndex_reg[24]_i_1_n_2 ;
  wire \strIndex_reg[24]_i_1_n_3 ;
  wire \strIndex_reg[24]_i_1_n_4 ;
  wire \strIndex_reg[24]_i_1_n_5 ;
  wire \strIndex_reg[24]_i_1_n_6 ;
  wire \strIndex_reg[24]_i_1_n_7 ;
  wire \strIndex_reg[28]_i_1_n_2 ;
  wire \strIndex_reg[28]_i_1_n_3 ;
  wire \strIndex_reg[28]_i_1_n_5 ;
  wire \strIndex_reg[28]_i_1_n_6 ;
  wire \strIndex_reg[28]_i_1_n_7 ;
  wire \strIndex_reg[4]_i_1_n_0 ;
  wire \strIndex_reg[4]_i_1_n_1 ;
  wire \strIndex_reg[4]_i_1_n_2 ;
  wire \strIndex_reg[4]_i_1_n_3 ;
  wire \strIndex_reg[4]_i_1_n_4 ;
  wire \strIndex_reg[4]_i_1_n_5 ;
  wire \strIndex_reg[4]_i_1_n_6 ;
  wire \strIndex_reg[4]_i_1_n_7 ;
  wire \strIndex_reg[8]_i_1_n_0 ;
  wire \strIndex_reg[8]_i_1_n_1 ;
  wire \strIndex_reg[8]_i_1_n_2 ;
  wire \strIndex_reg[8]_i_1_n_3 ;
  wire \strIndex_reg[8]_i_1_n_4 ;
  wire \strIndex_reg[8]_i_1_n_5 ;
  wire \strIndex_reg[8]_i_1_n_6 ;
  wire \strIndex_reg[8]_i_1_n_7 ;
  wire tmrCntr0;
  wire \tmrCntr[0]_i_3_n_0 ;
  wire [26:0]tmrCntr_reg;
  wire \tmrCntr_reg[0]_i_2_n_0 ;
  wire \tmrCntr_reg[0]_i_2_n_1 ;
  wire \tmrCntr_reg[0]_i_2_n_2 ;
  wire \tmrCntr_reg[0]_i_2_n_3 ;
  wire \tmrCntr_reg[0]_i_2_n_4 ;
  wire \tmrCntr_reg[0]_i_2_n_5 ;
  wire \tmrCntr_reg[0]_i_2_n_6 ;
  wire \tmrCntr_reg[0]_i_2_n_7 ;
  wire \tmrCntr_reg[12]_i_1_n_0 ;
  wire \tmrCntr_reg[12]_i_1_n_1 ;
  wire \tmrCntr_reg[12]_i_1_n_2 ;
  wire \tmrCntr_reg[12]_i_1_n_3 ;
  wire \tmrCntr_reg[12]_i_1_n_4 ;
  wire \tmrCntr_reg[12]_i_1_n_5 ;
  wire \tmrCntr_reg[12]_i_1_n_6 ;
  wire \tmrCntr_reg[12]_i_1_n_7 ;
  wire \tmrCntr_reg[16]_i_1_n_0 ;
  wire \tmrCntr_reg[16]_i_1_n_1 ;
  wire \tmrCntr_reg[16]_i_1_n_2 ;
  wire \tmrCntr_reg[16]_i_1_n_3 ;
  wire \tmrCntr_reg[16]_i_1_n_4 ;
  wire \tmrCntr_reg[16]_i_1_n_5 ;
  wire \tmrCntr_reg[16]_i_1_n_6 ;
  wire \tmrCntr_reg[16]_i_1_n_7 ;
  wire \tmrCntr_reg[20]_i_1_n_0 ;
  wire \tmrCntr_reg[20]_i_1_n_1 ;
  wire \tmrCntr_reg[20]_i_1_n_2 ;
  wire \tmrCntr_reg[20]_i_1_n_3 ;
  wire \tmrCntr_reg[20]_i_1_n_4 ;
  wire \tmrCntr_reg[20]_i_1_n_5 ;
  wire \tmrCntr_reg[20]_i_1_n_6 ;
  wire \tmrCntr_reg[20]_i_1_n_7 ;
  wire \tmrCntr_reg[24]_i_1_n_2 ;
  wire \tmrCntr_reg[24]_i_1_n_3 ;
  wire \tmrCntr_reg[24]_i_1_n_5 ;
  wire \tmrCntr_reg[24]_i_1_n_6 ;
  wire \tmrCntr_reg[24]_i_1_n_7 ;
  wire \tmrCntr_reg[4]_i_1_n_0 ;
  wire \tmrCntr_reg[4]_i_1_n_1 ;
  wire \tmrCntr_reg[4]_i_1_n_2 ;
  wire \tmrCntr_reg[4]_i_1_n_3 ;
  wire \tmrCntr_reg[4]_i_1_n_4 ;
  wire \tmrCntr_reg[4]_i_1_n_5 ;
  wire \tmrCntr_reg[4]_i_1_n_6 ;
  wire \tmrCntr_reg[4]_i_1_n_7 ;
  wire \tmrCntr_reg[8]_i_1_n_0 ;
  wire \tmrCntr_reg[8]_i_1_n_1 ;
  wire \tmrCntr_reg[8]_i_1_n_2 ;
  wire \tmrCntr_reg[8]_i_1_n_3 ;
  wire \tmrCntr_reg[8]_i_1_n_4 ;
  wire \tmrCntr_reg[8]_i_1_n_5 ;
  wire \tmrCntr_reg[8]_i_1_n_6 ;
  wire \tmrCntr_reg[8]_i_1_n_7 ;
  wire \tmrVal[0]_i_1_n_0 ;
  wire \tmrVal[1]_i_1_n_0 ;
  wire \tmrVal[3]_i_1_n_0 ;
  wire \tmrVal[3]_i_4_n_0 ;
  wire \tmrVal[3]_i_5_n_0 ;
  wire \tmrVal[3]_i_6_n_0 ;
  wire \tmrVal[3]_i_7_n_0 ;
  wire \tmrVal[3]_i_8_n_0 ;
  wire \tmrVal[3]_i_9_n_0 ;
  wire [3:0]tmrVal_reg;
  wire [6:0]uartData;
  wire \uartData[0]_i_2_n_0 ;
  wire \uartData[1]_i_3_n_0 ;
  wire \uartData[1]_i_4_n_0 ;
  wire \uartData[2]_i_3_n_0 ;
  wire \uartData[2]_i_4_n_0 ;
  wire \uartData[3]_i_2_n_0 ;
  wire \uartData[4]_i_2_n_0 ;
  wire \uartData[5]_i_2_n_0 ;
  wire \uartData[6]_i_3_n_0 ;
  wire \uartData_reg[1]_i_2_n_0 ;
  wire \uartData_reg[2]_i_2_n_0 ;
  wire uartSend;
  wire [2:0]uartState;
  wire uartState1_carry__0_i_1_n_0;
  wire uartState1_carry__0_i_2_n_0;
  wire uartState1_carry__0_i_3_n_0;
  wire uartState1_carry__0_i_4_n_0;
  wire uartState1_carry__0_n_0;
  wire uartState1_carry__0_n_1;
  wire uartState1_carry__0_n_2;
  wire uartState1_carry__0_n_3;
  wire uartState1_carry__1_i_1_n_0;
  wire uartState1_carry__1_i_2_n_0;
  wire uartState1_carry__1_i_3_n_0;
  wire uartState1_carry__1_n_1;
  wire uartState1_carry__1_n_2;
  wire uartState1_carry__1_n_3;
  wire uartState1_carry_i_1_n_0;
  wire uartState1_carry_i_2_n_0;
  wire uartState1_carry_i_3_n_0;
  wire uartState1_carry_i_4_n_0;
  wire uartState1_carry_n_0;
  wire uartState1_carry_n_1;
  wire uartState1_carry_n_2;
  wire uartState1_carry_n_3;
  wire [3:3]\NLW_myCounter_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_strIndex_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_tmrCntr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmrCntr_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_uartState1_carry_O_UNCONNECTED;
  wire [3:0]NLW_uartState1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_uartState1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_uartState1_carry__1_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Inst_UART_TX_CTRL_n_3),
        .Q(uartState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Inst_UART_TX_CTRL_n_2),
        .Q(uartState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rst_reg:000,ld_init_str:001,rdy_low:011,wait_rdy:100,ld_btn_str:110,send_char:010,wait_btn:101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(Inst_UART_TX_CTRL_n_1),
        .Q(uartState[2]),
        .R(1'b0));
  design_1_GPIO_demo_0_0_UART_TX_CTRL Inst_UART_TX_CTRL
       (.CLK(CLK),
        .CO(uartState1_carry__1_n_1),
        .E(uartSend),
        .\FSM_sequential_uartState_reg[0] (Inst_UART_TX_CTRL_n_3),
        .\FSM_sequential_uartState_reg[0]_0 (Inst_btn_debounce_n_5),
        .\FSM_sequential_uartState_reg[1] (Inst_UART_TX_CTRL_n_2),
        .\FSM_sequential_uartState_reg[2] (Inst_UART_TX_CTRL_n_1),
        .Q(uartData),
        .UART_TXD(UART_TXD),
        .btnDeBnc(btnDeBnc[4]),
        .eqOp__25(eqOp__25),
        .uartState(uartState));
  design_1_GPIO_demo_0_0_debouncer Inst_btn_debounce
       (.BTN(BTN),
        .CLK(CLK),
        .Q(btnReg),
        .SSEG_AN(SSEG_AN),
        .btnDeBnc(btnDeBnc),
        .\btnReg_reg[0] (Inst_btn_debounce_n_5),
        .uartState(uartState[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[0]_INST_0 
       (.I0(myCounter_reg[28]),
        .I1(BTN[4]),
        .I2(SW[0]),
        .O(LED[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[10]_INST_0 
       (.I0(myCounter_reg[38]),
        .I1(BTN[4]),
        .I2(SW[10]),
        .O(LED[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[11]_INST_0 
       (.I0(myCounter_reg[39]),
        .I1(BTN[4]),
        .I2(SW[11]),
        .O(LED[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[12]_INST_0 
       (.I0(myCounter_reg[40]),
        .I1(BTN[4]),
        .I2(SW[12]),
        .O(LED[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[13]_INST_0 
       (.I0(myCounter_reg[41]),
        .I1(BTN[4]),
        .I2(SW[13]),
        .O(LED[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[14]_INST_0 
       (.I0(myCounter_reg[42]),
        .I1(BTN[4]),
        .I2(SW[14]),
        .O(LED[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[15]_INST_0 
       (.I0(myCounter_reg[43]),
        .I1(BTN[4]),
        .I2(SW[15]),
        .O(LED[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[1]_INST_0 
       (.I0(myCounter_reg[29]),
        .I1(BTN[4]),
        .I2(SW[1]),
        .O(LED[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[2]_INST_0 
       (.I0(myCounter_reg[30]),
        .I1(BTN[4]),
        .I2(SW[2]),
        .O(LED[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[3]_INST_0 
       (.I0(myCounter_reg[31]),
        .I1(BTN[4]),
        .I2(SW[3]),
        .O(LED[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[4]_INST_0 
       (.I0(myCounter_reg[32]),
        .I1(BTN[4]),
        .I2(SW[4]),
        .O(LED[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[5]_INST_0 
       (.I0(myCounter_reg[33]),
        .I1(BTN[4]),
        .I2(SW[5]),
        .O(LED[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[6]_INST_0 
       (.I0(myCounter_reg[34]),
        .I1(BTN[4]),
        .I2(SW[6]),
        .O(LED[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[7]_INST_0 
       (.I0(myCounter_reg[35]),
        .I1(BTN[4]),
        .I2(SW[7]),
        .O(LED[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[8]_INST_0 
       (.I0(myCounter_reg[36]),
        .I1(BTN[4]),
        .I2(SW[8]),
        .O(LED[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED[9]_INST_0 
       (.I0(myCounter_reg[37]),
        .I1(BTN[4]),
        .I2(SW[9]),
        .O(LED[9]));
  design_1_GPIO_demo_0_0_RGB_controller RGB_Core
       (.CLK(CLK),
        .RGB2_Blue(RGB2_Blue),
        .RGB2_Green(RGB2_Green),
        .RGB2_Red(RGB2_Red));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \SSEG_CA[0]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[2]),
        .I2(tmrVal_reg[0]),
        .I3(tmrVal_reg[1]),
        .O(SSEG_CA[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hACE8)) 
    \SSEG_CA[1]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[2]),
        .I2(tmrVal_reg[1]),
        .I3(tmrVal_reg[0]),
        .O(SSEG_CA[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \SSEG_CA[2]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[0]),
        .I2(tmrVal_reg[1]),
        .I3(tmrVal_reg[2]),
        .O(SSEG_CA[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEA9C)) 
    \SSEG_CA[3]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[2]),
        .I2(tmrVal_reg[0]),
        .I3(tmrVal_reg[1]),
        .O(SSEG_CA[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \SSEG_CA[4]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[1]),
        .I2(tmrVal_reg[2]),
        .I3(tmrVal_reg[0]),
        .O(SSEG_CA[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF9B8)) 
    \SSEG_CA[5]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[2]),
        .I2(tmrVal_reg[1]),
        .I3(tmrVal_reg[0]),
        .O(SSEG_CA[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEAA5)) 
    \SSEG_CA[6]_INST_0 
       (.I0(tmrVal_reg[3]),
        .I1(tmrVal_reg[0]),
        .I2(tmrVal_reg[2]),
        .I3(tmrVal_reg[1]),
        .O(SSEG_CA[6]));
  FDRE #(
    .INIT(1'b0)) 
    \btnReg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(btnDeBnc[0]),
        .Q(btnReg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btnReg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(btnDeBnc[1]),
        .Q(btnReg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btnReg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(btnDeBnc[2]),
        .Q(btnReg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btnReg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(btnDeBnc[3]),
        .Q(btnReg[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cntr_reg[0]_i_1 
       (.I0(clk_cntr_reg_reg[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cntr_reg[1]_i_1 
       (.I0(clk_cntr_reg_reg[0]),
        .I1(clk_cntr_reg_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_cntr_reg[2]_i_1 
       (.I0(clk_cntr_reg_reg[0]),
        .I1(clk_cntr_reg_reg[1]),
        .I2(clk_cntr_reg_reg[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cntr_reg[3]_i_1 
       (.I0(clk_cntr_reg_reg[1]),
        .I1(clk_cntr_reg_reg[0]),
        .I2(clk_cntr_reg_reg[2]),
        .I3(clk_cntr_reg_reg[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_cntr_reg[4]_i_1 
       (.I0(clk_cntr_reg_reg[2]),
        .I1(clk_cntr_reg_reg[0]),
        .I2(clk_cntr_reg_reg[1]),
        .I3(clk_cntr_reg_reg[3]),
        .I4(micClk),
        .O(plusOp__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cntr_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__2[0]),
        .Q(clk_cntr_reg_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cntr_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__2[1]),
        .Q(clk_cntr_reg_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cntr_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__2[2]),
        .Q(clk_cntr_reg_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cntr_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__2[3]),
        .Q(clk_cntr_reg_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cntr_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__2[4]),
        .Q(micClk),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \myCounter[0]_i_2 
       (.I0(\myCounter_reg_n_0_[0] ),
        .O(\myCounter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[0]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\myCounter_reg[0]_i_1_n_0 ,\myCounter_reg[0]_i_1_n_1 ,\myCounter_reg[0]_i_1_n_2 ,\myCounter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\myCounter_reg[0]_i_1_n_4 ,\myCounter_reg[0]_i_1_n_5 ,\myCounter_reg[0]_i_1_n_6 ,\myCounter_reg[0]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[3] ,\myCounter_reg_n_0_[2] ,\myCounter_reg_n_0_[1] ,\myCounter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[8]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[8]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[12]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[12]_i_1 
       (.CI(\myCounter_reg[8]_i_1_n_0 ),
        .CO({\myCounter_reg[12]_i_1_n_0 ,\myCounter_reg[12]_i_1_n_1 ,\myCounter_reg[12]_i_1_n_2 ,\myCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[12]_i_1_n_4 ,\myCounter_reg[12]_i_1_n_5 ,\myCounter_reg[12]_i_1_n_6 ,\myCounter_reg[12]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[15] ,\myCounter_reg_n_0_[14] ,\myCounter_reg_n_0_[13] ,\myCounter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[12]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[12]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[12]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[16]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[16]_i_1 
       (.CI(\myCounter_reg[12]_i_1_n_0 ),
        .CO({\myCounter_reg[16]_i_1_n_0 ,\myCounter_reg[16]_i_1_n_1 ,\myCounter_reg[16]_i_1_n_2 ,\myCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[16]_i_1_n_4 ,\myCounter_reg[16]_i_1_n_5 ,\myCounter_reg[16]_i_1_n_6 ,\myCounter_reg[16]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[19] ,\myCounter_reg_n_0_[18] ,\myCounter_reg_n_0_[17] ,\myCounter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[16]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[16]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[16]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[0]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[20]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[20] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[20]_i_1 
       (.CI(\myCounter_reg[16]_i_1_n_0 ),
        .CO({\myCounter_reg[20]_i_1_n_0 ,\myCounter_reg[20]_i_1_n_1 ,\myCounter_reg[20]_i_1_n_2 ,\myCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[20]_i_1_n_4 ,\myCounter_reg[20]_i_1_n_5 ,\myCounter_reg[20]_i_1_n_6 ,\myCounter_reg[20]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[23] ,\myCounter_reg_n_0_[22] ,\myCounter_reg_n_0_[21] ,\myCounter_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[20]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[20]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[20]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[24]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[24] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[24]_i_1 
       (.CI(\myCounter_reg[20]_i_1_n_0 ),
        .CO({\myCounter_reg[24]_i_1_n_0 ,\myCounter_reg[24]_i_1_n_1 ,\myCounter_reg[24]_i_1_n_2 ,\myCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[24]_i_1_n_4 ,\myCounter_reg[24]_i_1_n_5 ,\myCounter_reg[24]_i_1_n_6 ,\myCounter_reg[24]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[27] ,\myCounter_reg_n_0_[26] ,\myCounter_reg_n_0_[25] ,\myCounter_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[24]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[24]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[24]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[28]_i_1_n_7 ),
        .Q(myCounter_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[28]_i_1 
       (.CI(\myCounter_reg[24]_i_1_n_0 ),
        .CO({\myCounter_reg[28]_i_1_n_0 ,\myCounter_reg[28]_i_1_n_1 ,\myCounter_reg[28]_i_1_n_2 ,\myCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[28]_i_1_n_4 ,\myCounter_reg[28]_i_1_n_5 ,\myCounter_reg[28]_i_1_n_6 ,\myCounter_reg[28]_i_1_n_7 }),
        .S(myCounter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[28]_i_1_n_6 ),
        .Q(myCounter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[0]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[28]_i_1_n_5 ),
        .Q(myCounter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[28]_i_1_n_4 ),
        .Q(myCounter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[32]_i_1_n_7 ),
        .Q(myCounter_reg[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[32]_i_1 
       (.CI(\myCounter_reg[28]_i_1_n_0 ),
        .CO({\myCounter_reg[32]_i_1_n_0 ,\myCounter_reg[32]_i_1_n_1 ,\myCounter_reg[32]_i_1_n_2 ,\myCounter_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[32]_i_1_n_4 ,\myCounter_reg[32]_i_1_n_5 ,\myCounter_reg[32]_i_1_n_6 ,\myCounter_reg[32]_i_1_n_7 }),
        .S(myCounter_reg[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[32]_i_1_n_6 ),
        .Q(myCounter_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[32]_i_1_n_5 ),
        .Q(myCounter_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[32]_i_1_n_4 ),
        .Q(myCounter_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[36]_i_1_n_7 ),
        .Q(myCounter_reg[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[36]_i_1 
       (.CI(\myCounter_reg[32]_i_1_n_0 ),
        .CO({\myCounter_reg[36]_i_1_n_0 ,\myCounter_reg[36]_i_1_n_1 ,\myCounter_reg[36]_i_1_n_2 ,\myCounter_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[36]_i_1_n_4 ,\myCounter_reg[36]_i_1_n_5 ,\myCounter_reg[36]_i_1_n_6 ,\myCounter_reg[36]_i_1_n_7 }),
        .S(myCounter_reg[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[36]_i_1_n_6 ),
        .Q(myCounter_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[36]_i_1_n_5 ),
        .Q(myCounter_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[36]_i_1_n_4 ),
        .Q(myCounter_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[0]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[40]_i_1_n_7 ),
        .Q(myCounter_reg[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[40]_i_1 
       (.CI(\myCounter_reg[36]_i_1_n_0 ),
        .CO({\NLW_myCounter_reg[40]_i_1_CO_UNCONNECTED [3],\myCounter_reg[40]_i_1_n_1 ,\myCounter_reg[40]_i_1_n_2 ,\myCounter_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[40]_i_1_n_4 ,\myCounter_reg[40]_i_1_n_5 ,\myCounter_reg[40]_i_1_n_6 ,\myCounter_reg[40]_i_1_n_7 }),
        .S(myCounter_reg[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[40]_i_1_n_6 ),
        .Q(myCounter_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[40]_i_1_n_5 ),
        .Q(myCounter_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[40]_i_1_n_4 ),
        .Q(myCounter_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[4]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[4]_i_1 
       (.CI(\myCounter_reg[0]_i_1_n_0 ),
        .CO({\myCounter_reg[4]_i_1_n_0 ,\myCounter_reg[4]_i_1_n_1 ,\myCounter_reg[4]_i_1_n_2 ,\myCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[4]_i_1_n_4 ,\myCounter_reg[4]_i_1_n_5 ,\myCounter_reg[4]_i_1_n_6 ,\myCounter_reg[4]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[7] ,\myCounter_reg_n_0_[6] ,\myCounter_reg_n_0_[5] ,\myCounter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[4]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[4]_i_1_n_5 ),
        .Q(\myCounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[4]_i_1_n_4 ),
        .Q(\myCounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[8]_i_1_n_7 ),
        .Q(\myCounter_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \myCounter_reg[8]_i_1 
       (.CI(\myCounter_reg[4]_i_1_n_0 ),
        .CO({\myCounter_reg[8]_i_1_n_0 ,\myCounter_reg[8]_i_1_n_1 ,\myCounter_reg[8]_i_1_n_2 ,\myCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\myCounter_reg[8]_i_1_n_4 ,\myCounter_reg[8]_i_1_n_5 ,\myCounter_reg[8]_i_1_n_6 ,\myCounter_reg[8]_i_1_n_7 }),
        .S({\myCounter_reg_n_0_[11] ,\myCounter_reg_n_0_[10] ,\myCounter_reg_n_0_[9] ,\myCounter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \myCounter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\myCounter_reg[8]_i_1_n_6 ),
        .Q(\myCounter_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    pwm_val_reg_i_1
       (.I0(micData),
        .I1(micClk),
        .I2(clk_cntr_reg_reg[3]),
        .I3(pwm_val_reg_i_2_n_0),
        .I4(ampPWM),
        .O(pwm_val_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    pwm_val_reg_i_2
       (.I0(clk_cntr_reg_reg[2]),
        .I1(clk_cntr_reg_reg[0]),
        .I2(clk_cntr_reg_reg[1]),
        .O(pwm_val_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_val_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pwm_val_reg_i_1_n_0),
        .Q(ampPWM),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reset_cntr[0]_i_1 
       (.I0(eqOp__25),
        .I1(uartState[0]),
        .I2(uartState[2]),
        .I3(uartState[1]),
        .O(reset_cntr0));
  LUT4 #(
    .INIT(16'h4000)) 
    \reset_cntr[0]_i_3 
       (.I0(\reset_cntr[0]_i_5_n_0 ),
        .I1(\reset_cntr[0]_i_6_n_0 ),
        .I2(\reset_cntr[0]_i_7_n_0 ),
        .I3(\reset_cntr[0]_i_8_n_0 ),
        .O(eqOp__25));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_cntr[0]_i_4 
       (.I0(reset_cntr_reg[0]),
        .O(\reset_cntr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reset_cntr[0]_i_5 
       (.I0(reset_cntr_reg[5]),
        .I1(reset_cntr_reg[3]),
        .I2(reset_cntr_reg[4]),
        .I3(reset_cntr_reg[9]),
        .I4(reset_cntr_reg[7]),
        .O(\reset_cntr[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \reset_cntr[0]_i_6 
       (.I0(reset_cntr_reg[15]),
        .I1(reset_cntr_reg[14]),
        .I2(reset_cntr_reg[13]),
        .I3(reset_cntr_reg[12]),
        .O(\reset_cntr[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \reset_cntr[0]_i_7 
       (.I0(reset_cntr_reg[2]),
        .I1(reset_cntr_reg[1]),
        .I2(reset_cntr_reg[16]),
        .I3(reset_cntr_reg[0]),
        .O(\reset_cntr[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reset_cntr[0]_i_8 
       (.I0(reset_cntr_reg[6]),
        .I1(reset_cntr_reg[8]),
        .I2(reset_cntr_reg[10]),
        .I3(reset_cntr_reg[17]),
        .I4(reset_cntr_reg[11]),
        .O(\reset_cntr[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[0]_i_2_n_7 ),
        .Q(reset_cntr_reg[0]),
        .R(reset_cntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_cntr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reset_cntr_reg[0]_i_2_n_0 ,\reset_cntr_reg[0]_i_2_n_1 ,\reset_cntr_reg[0]_i_2_n_2 ,\reset_cntr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reset_cntr_reg[0]_i_2_n_4 ,\reset_cntr_reg[0]_i_2_n_5 ,\reset_cntr_reg[0]_i_2_n_6 ,\reset_cntr_reg[0]_i_2_n_7 }),
        .S({reset_cntr_reg[3:1],\reset_cntr[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[8]_i_1_n_5 ),
        .Q(reset_cntr_reg[10]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[8]_i_1_n_4 ),
        .Q(reset_cntr_reg[11]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[12]_i_1_n_7 ),
        .Q(reset_cntr_reg[12]),
        .R(reset_cntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_cntr_reg[12]_i_1 
       (.CI(\reset_cntr_reg[8]_i_1_n_0 ),
        .CO({\reset_cntr_reg[12]_i_1_n_0 ,\reset_cntr_reg[12]_i_1_n_1 ,\reset_cntr_reg[12]_i_1_n_2 ,\reset_cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cntr_reg[12]_i_1_n_4 ,\reset_cntr_reg[12]_i_1_n_5 ,\reset_cntr_reg[12]_i_1_n_6 ,\reset_cntr_reg[12]_i_1_n_7 }),
        .S(reset_cntr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[12]_i_1_n_6 ),
        .Q(reset_cntr_reg[13]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[12]_i_1_n_5 ),
        .Q(reset_cntr_reg[14]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[12]_i_1_n_4 ),
        .Q(reset_cntr_reg[15]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[16]_i_1_n_7 ),
        .Q(reset_cntr_reg[16]),
        .R(reset_cntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_cntr_reg[16]_i_1 
       (.CI(\reset_cntr_reg[12]_i_1_n_0 ),
        .CO({\NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED [3:1],\reset_cntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED [3:2],\reset_cntr_reg[16]_i_1_n_6 ,\reset_cntr_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,reset_cntr_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[16]_i_1_n_6 ),
        .Q(reset_cntr_reg[17]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[0]_i_2_n_6 ),
        .Q(reset_cntr_reg[1]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[0]_i_2_n_5 ),
        .Q(reset_cntr_reg[2]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[0]_i_2_n_4 ),
        .Q(reset_cntr_reg[3]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[4]_i_1_n_7 ),
        .Q(reset_cntr_reg[4]),
        .R(reset_cntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_cntr_reg[4]_i_1 
       (.CI(\reset_cntr_reg[0]_i_2_n_0 ),
        .CO({\reset_cntr_reg[4]_i_1_n_0 ,\reset_cntr_reg[4]_i_1_n_1 ,\reset_cntr_reg[4]_i_1_n_2 ,\reset_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cntr_reg[4]_i_1_n_4 ,\reset_cntr_reg[4]_i_1_n_5 ,\reset_cntr_reg[4]_i_1_n_6 ,\reset_cntr_reg[4]_i_1_n_7 }),
        .S(reset_cntr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[4]_i_1_n_6 ),
        .Q(reset_cntr_reg[5]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[4]_i_1_n_5 ),
        .Q(reset_cntr_reg[6]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[4]_i_1_n_4 ),
        .Q(reset_cntr_reg[7]),
        .R(reset_cntr0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[8]_i_1_n_7 ),
        .Q(reset_cntr_reg[8]),
        .R(reset_cntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reset_cntr_reg[8]_i_1 
       (.CI(\reset_cntr_reg[4]_i_1_n_0 ),
        .CO({\reset_cntr_reg[8]_i_1_n_0 ,\reset_cntr_reg[8]_i_1_n_1 ,\reset_cntr_reg[8]_i_1_n_2 ,\reset_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cntr_reg[8]_i_1_n_4 ,\reset_cntr_reg[8]_i_1_n_5 ,\reset_cntr_reg[8]_i_1_n_6 ,\reset_cntr_reg[8]_i_1_n_7 }),
        .S(reset_cntr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\reset_cntr_reg[8]_i_1_n_6 ),
        .Q(reset_cntr_reg[9]),
        .R(reset_cntr0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAE8A)) 
    \sendStr[14][0]_i_1 
       (.I0(\sendStr_reg[14] ),
        .I1(uartState[1]),
        .I2(uartState[0]),
        .I3(uartState[2]),
        .O(\sendStr[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA2BA)) 
    \sendStr[2][0]_i_1 
       (.I0(\sendStr_reg[2] ),
        .I1(uartState[1]),
        .I2(uartState[0]),
        .I3(uartState[2]),
        .O(\sendStr[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAE8A)) 
    \sendStr[4][1]_i_1 
       (.I0(\sendStr_reg[4] ),
        .I1(uartState[1]),
        .I2(uartState[0]),
        .I3(uartState[2]),
        .O(\sendStr[4][1]_i_1_n_0 ));
  FDRE \sendStr_reg[14][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sendStr[14][0]_i_1_n_0 ),
        .Q(\sendStr_reg[14] ),
        .R(1'b0));
  FDRE \sendStr_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sendStr[2][0]_i_1_n_0 ),
        .Q(\sendStr_reg[2] ),
        .R(1'b0));
  FDRE \sendStr_reg[4][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sendStr[4][1]_i_1_n_0 ),
        .Q(\sendStr_reg[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAE8A)) 
    \strEnd[3]_i_1 
       (.I0(\strEnd_reg_n_0_[3] ),
        .I1(uartState[1]),
        .I2(uartState[0]),
        .I3(uartState[2]),
        .O(\strEnd[3]_i_1_n_0 ));
  FDRE \strEnd_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\strEnd[3]_i_1_n_0 ),
        .Q(\strEnd_reg_n_0_[3] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h18)) 
    \strIndex[0]_i_1 
       (.I0(uartState[1]),
        .I1(uartState[2]),
        .I2(uartState[0]),
        .O(strIndex0));
  LUT1 #(
    .INIT(2'h1)) 
    \strIndex[0]_i_3 
       (.I0(strIndex_reg[0]),
        .O(\strIndex[0]_i_3_n_0 ));
  FDRE \strIndex_reg[0] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[0]_i_2_n_7 ),
        .Q(strIndex_reg[0]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\strIndex_reg[0]_i_2_n_0 ,\strIndex_reg[0]_i_2_n_1 ,\strIndex_reg[0]_i_2_n_2 ,\strIndex_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\strIndex_reg[0]_i_2_n_4 ,\strIndex_reg[0]_i_2_n_5 ,\strIndex_reg[0]_i_2_n_6 ,\strIndex_reg[0]_i_2_n_7 }),
        .S({strIndex_reg[3:1],\strIndex[0]_i_3_n_0 }));
  FDRE \strIndex_reg[10] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[8]_i_1_n_5 ),
        .Q(strIndex_reg[10]),
        .R(strIndex0));
  FDRE \strIndex_reg[11] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[8]_i_1_n_4 ),
        .Q(strIndex_reg[11]),
        .R(strIndex0));
  FDRE \strIndex_reg[12] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[12]_i_1_n_7 ),
        .Q(strIndex_reg[12]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[12]_i_1 
       (.CI(\strIndex_reg[8]_i_1_n_0 ),
        .CO({\strIndex_reg[12]_i_1_n_0 ,\strIndex_reg[12]_i_1_n_1 ,\strIndex_reg[12]_i_1_n_2 ,\strIndex_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[12]_i_1_n_4 ,\strIndex_reg[12]_i_1_n_5 ,\strIndex_reg[12]_i_1_n_6 ,\strIndex_reg[12]_i_1_n_7 }),
        .S(strIndex_reg[15:12]));
  FDRE \strIndex_reg[13] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[12]_i_1_n_6 ),
        .Q(strIndex_reg[13]),
        .R(strIndex0));
  FDRE \strIndex_reg[14] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[12]_i_1_n_5 ),
        .Q(strIndex_reg[14]),
        .R(strIndex0));
  FDRE \strIndex_reg[15] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[12]_i_1_n_4 ),
        .Q(strIndex_reg[15]),
        .R(strIndex0));
  FDRE \strIndex_reg[16] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[16]_i_1_n_7 ),
        .Q(strIndex_reg[16]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[16]_i_1 
       (.CI(\strIndex_reg[12]_i_1_n_0 ),
        .CO({\strIndex_reg[16]_i_1_n_0 ,\strIndex_reg[16]_i_1_n_1 ,\strIndex_reg[16]_i_1_n_2 ,\strIndex_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[16]_i_1_n_4 ,\strIndex_reg[16]_i_1_n_5 ,\strIndex_reg[16]_i_1_n_6 ,\strIndex_reg[16]_i_1_n_7 }),
        .S(strIndex_reg[19:16]));
  FDRE \strIndex_reg[17] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[16]_i_1_n_6 ),
        .Q(strIndex_reg[17]),
        .R(strIndex0));
  FDRE \strIndex_reg[18] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[16]_i_1_n_5 ),
        .Q(strIndex_reg[18]),
        .R(strIndex0));
  FDRE \strIndex_reg[19] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[16]_i_1_n_4 ),
        .Q(strIndex_reg[19]),
        .R(strIndex0));
  FDRE \strIndex_reg[1] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[0]_i_2_n_6 ),
        .Q(strIndex_reg[1]),
        .R(strIndex0));
  FDRE \strIndex_reg[20] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[20]_i_1_n_7 ),
        .Q(strIndex_reg[20]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[20]_i_1 
       (.CI(\strIndex_reg[16]_i_1_n_0 ),
        .CO({\strIndex_reg[20]_i_1_n_0 ,\strIndex_reg[20]_i_1_n_1 ,\strIndex_reg[20]_i_1_n_2 ,\strIndex_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[20]_i_1_n_4 ,\strIndex_reg[20]_i_1_n_5 ,\strIndex_reg[20]_i_1_n_6 ,\strIndex_reg[20]_i_1_n_7 }),
        .S(strIndex_reg[23:20]));
  FDRE \strIndex_reg[21] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[20]_i_1_n_6 ),
        .Q(strIndex_reg[21]),
        .R(strIndex0));
  FDRE \strIndex_reg[22] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[20]_i_1_n_5 ),
        .Q(strIndex_reg[22]),
        .R(strIndex0));
  FDRE \strIndex_reg[23] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[20]_i_1_n_4 ),
        .Q(strIndex_reg[23]),
        .R(strIndex0));
  FDRE \strIndex_reg[24] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[24]_i_1_n_7 ),
        .Q(strIndex_reg[24]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[24]_i_1 
       (.CI(\strIndex_reg[20]_i_1_n_0 ),
        .CO({\strIndex_reg[24]_i_1_n_0 ,\strIndex_reg[24]_i_1_n_1 ,\strIndex_reg[24]_i_1_n_2 ,\strIndex_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[24]_i_1_n_4 ,\strIndex_reg[24]_i_1_n_5 ,\strIndex_reg[24]_i_1_n_6 ,\strIndex_reg[24]_i_1_n_7 }),
        .S(strIndex_reg[27:24]));
  FDRE \strIndex_reg[25] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[24]_i_1_n_6 ),
        .Q(strIndex_reg[25]),
        .R(strIndex0));
  FDRE \strIndex_reg[26] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[24]_i_1_n_5 ),
        .Q(strIndex_reg[26]),
        .R(strIndex0));
  FDRE \strIndex_reg[27] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[24]_i_1_n_4 ),
        .Q(strIndex_reg[27]),
        .R(strIndex0));
  FDRE \strIndex_reg[28] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[28]_i_1_n_7 ),
        .Q(strIndex_reg[28]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[28]_i_1 
       (.CI(\strIndex_reg[24]_i_1_n_0 ),
        .CO({\NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED [3:2],\strIndex_reg[28]_i_1_n_2 ,\strIndex_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_strIndex_reg[28]_i_1_O_UNCONNECTED [3],\strIndex_reg[28]_i_1_n_5 ,\strIndex_reg[28]_i_1_n_6 ,\strIndex_reg[28]_i_1_n_7 }),
        .S({1'b0,strIndex_reg[30:28]}));
  FDRE \strIndex_reg[29] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[28]_i_1_n_6 ),
        .Q(strIndex_reg[29]),
        .R(strIndex0));
  FDRE \strIndex_reg[2] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[0]_i_2_n_5 ),
        .Q(strIndex_reg[2]),
        .R(strIndex0));
  FDRE \strIndex_reg[30] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[28]_i_1_n_5 ),
        .Q(strIndex_reg[30]),
        .R(strIndex0));
  FDRE \strIndex_reg[3] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[0]_i_2_n_4 ),
        .Q(strIndex_reg[3]),
        .R(strIndex0));
  FDRE \strIndex_reg[4] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[4]_i_1_n_7 ),
        .Q(strIndex_reg[4]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[4]_i_1 
       (.CI(\strIndex_reg[0]_i_2_n_0 ),
        .CO({\strIndex_reg[4]_i_1_n_0 ,\strIndex_reg[4]_i_1_n_1 ,\strIndex_reg[4]_i_1_n_2 ,\strIndex_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[4]_i_1_n_4 ,\strIndex_reg[4]_i_1_n_5 ,\strIndex_reg[4]_i_1_n_6 ,\strIndex_reg[4]_i_1_n_7 }),
        .S(strIndex_reg[7:4]));
  FDRE \strIndex_reg[5] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[4]_i_1_n_6 ),
        .Q(strIndex_reg[5]),
        .R(strIndex0));
  FDRE \strIndex_reg[6] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[4]_i_1_n_5 ),
        .Q(strIndex_reg[6]),
        .R(strIndex0));
  FDRE \strIndex_reg[7] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[4]_i_1_n_4 ),
        .Q(strIndex_reg[7]),
        .R(strIndex0));
  FDRE \strIndex_reg[8] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[8]_i_1_n_7 ),
        .Q(strIndex_reg[8]),
        .R(strIndex0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \strIndex_reg[8]_i_1 
       (.CI(\strIndex_reg[4]_i_1_n_0 ),
        .CO({\strIndex_reg[8]_i_1_n_0 ,\strIndex_reg[8]_i_1_n_1 ,\strIndex_reg[8]_i_1_n_2 ,\strIndex_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\strIndex_reg[8]_i_1_n_4 ,\strIndex_reg[8]_i_1_n_5 ,\strIndex_reg[8]_i_1_n_6 ,\strIndex_reg[8]_i_1_n_7 }),
        .S(strIndex_reg[11:8]));
  FDRE \strIndex_reg[9] 
       (.C(CLK),
        .CE(strIndex),
        .D(\strIndex_reg[8]_i_1_n_6 ),
        .Q(strIndex_reg[9]),
        .R(strIndex0));
  LUT2 #(
    .INIT(4'hE)) 
    \tmrCntr[0]_i_1 
       (.I0(eqOp2_in),
        .I1(BTN[4]),
        .O(tmrCntr0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmrCntr[0]_i_3 
       (.I0(tmrCntr_reg[0]),
        .O(\tmrCntr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[0]_i_2_n_7 ),
        .Q(tmrCntr_reg[0]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\tmrCntr_reg[0]_i_2_n_0 ,\tmrCntr_reg[0]_i_2_n_1 ,\tmrCntr_reg[0]_i_2_n_2 ,\tmrCntr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\tmrCntr_reg[0]_i_2_n_4 ,\tmrCntr_reg[0]_i_2_n_5 ,\tmrCntr_reg[0]_i_2_n_6 ,\tmrCntr_reg[0]_i_2_n_7 }),
        .S({tmrCntr_reg[3:1],\tmrCntr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[8]_i_1_n_5 ),
        .Q(tmrCntr_reg[10]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[8]_i_1_n_4 ),
        .Q(tmrCntr_reg[11]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[12]_i_1_n_7 ),
        .Q(tmrCntr_reg[12]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[12]_i_1 
       (.CI(\tmrCntr_reg[8]_i_1_n_0 ),
        .CO({\tmrCntr_reg[12]_i_1_n_0 ,\tmrCntr_reg[12]_i_1_n_1 ,\tmrCntr_reg[12]_i_1_n_2 ,\tmrCntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmrCntr_reg[12]_i_1_n_4 ,\tmrCntr_reg[12]_i_1_n_5 ,\tmrCntr_reg[12]_i_1_n_6 ,\tmrCntr_reg[12]_i_1_n_7 }),
        .S(tmrCntr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[12]_i_1_n_6 ),
        .Q(tmrCntr_reg[13]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[12]_i_1_n_5 ),
        .Q(tmrCntr_reg[14]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[12]_i_1_n_4 ),
        .Q(tmrCntr_reg[15]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[16]_i_1_n_7 ),
        .Q(tmrCntr_reg[16]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[16]_i_1 
       (.CI(\tmrCntr_reg[12]_i_1_n_0 ),
        .CO({\tmrCntr_reg[16]_i_1_n_0 ,\tmrCntr_reg[16]_i_1_n_1 ,\tmrCntr_reg[16]_i_1_n_2 ,\tmrCntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmrCntr_reg[16]_i_1_n_4 ,\tmrCntr_reg[16]_i_1_n_5 ,\tmrCntr_reg[16]_i_1_n_6 ,\tmrCntr_reg[16]_i_1_n_7 }),
        .S(tmrCntr_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[16]_i_1_n_6 ),
        .Q(tmrCntr_reg[17]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[16]_i_1_n_5 ),
        .Q(tmrCntr_reg[18]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[16]_i_1_n_4 ),
        .Q(tmrCntr_reg[19]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[0]_i_2_n_6 ),
        .Q(tmrCntr_reg[1]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[20]_i_1_n_7 ),
        .Q(tmrCntr_reg[20]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[20]_i_1 
       (.CI(\tmrCntr_reg[16]_i_1_n_0 ),
        .CO({\tmrCntr_reg[20]_i_1_n_0 ,\tmrCntr_reg[20]_i_1_n_1 ,\tmrCntr_reg[20]_i_1_n_2 ,\tmrCntr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmrCntr_reg[20]_i_1_n_4 ,\tmrCntr_reg[20]_i_1_n_5 ,\tmrCntr_reg[20]_i_1_n_6 ,\tmrCntr_reg[20]_i_1_n_7 }),
        .S(tmrCntr_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[20]_i_1_n_6 ),
        .Q(tmrCntr_reg[21]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[20]_i_1_n_5 ),
        .Q(tmrCntr_reg[22]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[20]_i_1_n_4 ),
        .Q(tmrCntr_reg[23]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[24]_i_1_n_7 ),
        .Q(tmrCntr_reg[24]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[24]_i_1 
       (.CI(\tmrCntr_reg[20]_i_1_n_0 ),
        .CO({\NLW_tmrCntr_reg[24]_i_1_CO_UNCONNECTED [3:2],\tmrCntr_reg[24]_i_1_n_2 ,\tmrCntr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmrCntr_reg[24]_i_1_O_UNCONNECTED [3],\tmrCntr_reg[24]_i_1_n_5 ,\tmrCntr_reg[24]_i_1_n_6 ,\tmrCntr_reg[24]_i_1_n_7 }),
        .S({1'b0,tmrCntr_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[24]_i_1_n_6 ),
        .Q(tmrCntr_reg[25]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[24]_i_1_n_5 ),
        .Q(tmrCntr_reg[26]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[0]_i_2_n_5 ),
        .Q(tmrCntr_reg[2]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[0]_i_2_n_4 ),
        .Q(tmrCntr_reg[3]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[4]_i_1_n_7 ),
        .Q(tmrCntr_reg[4]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[4]_i_1 
       (.CI(\tmrCntr_reg[0]_i_2_n_0 ),
        .CO({\tmrCntr_reg[4]_i_1_n_0 ,\tmrCntr_reg[4]_i_1_n_1 ,\tmrCntr_reg[4]_i_1_n_2 ,\tmrCntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmrCntr_reg[4]_i_1_n_4 ,\tmrCntr_reg[4]_i_1_n_5 ,\tmrCntr_reg[4]_i_1_n_6 ,\tmrCntr_reg[4]_i_1_n_7 }),
        .S(tmrCntr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[4]_i_1_n_6 ),
        .Q(tmrCntr_reg[5]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[4]_i_1_n_5 ),
        .Q(tmrCntr_reg[6]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[4]_i_1_n_4 ),
        .Q(tmrCntr_reg[7]),
        .R(tmrCntr0));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[8]_i_1_n_7 ),
        .Q(tmrCntr_reg[8]),
        .R(tmrCntr0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tmrCntr_reg[8]_i_1 
       (.CI(\tmrCntr_reg[4]_i_1_n_0 ),
        .CO({\tmrCntr_reg[8]_i_1_n_0 ,\tmrCntr_reg[8]_i_1_n_1 ,\tmrCntr_reg[8]_i_1_n_2 ,\tmrCntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tmrCntr_reg[8]_i_1_n_4 ,\tmrCntr_reg[8]_i_1_n_5 ,\tmrCntr_reg[8]_i_1_n_6 ,\tmrCntr_reg[8]_i_1_n_7 }),
        .S(tmrCntr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \tmrCntr_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tmrCntr_reg[8]_i_1_n_6 ),
        .Q(tmrCntr_reg[9]),
        .R(tmrCntr0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmrVal[0]_i_1 
       (.I0(tmrVal_reg[0]),
        .O(\tmrVal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmrVal[1]_i_1 
       (.I0(tmrVal_reg[0]),
        .I1(tmrVal_reg[1]),
        .O(\tmrVal[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmrVal[2]_i_1 
       (.I0(tmrVal_reg[0]),
        .I1(tmrVal_reg[1]),
        .I2(tmrVal_reg[2]),
        .O(plusOp__1[2]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \tmrVal[3]_i_1 
       (.I0(BTN[4]),
        .I1(tmrVal_reg[1]),
        .I2(tmrVal_reg[2]),
        .I3(tmrVal_reg[0]),
        .I4(tmrVal_reg[3]),
        .I5(eqOp2_in),
        .O(\tmrVal[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \tmrVal[3]_i_2 
       (.I0(\tmrVal[3]_i_4_n_0 ),
        .I1(tmrCntr_reg[9]),
        .I2(tmrCntr_reg[6]),
        .I3(tmrCntr_reg[7]),
        .I4(\tmrVal[3]_i_5_n_0 ),
        .I5(\tmrVal[3]_i_6_n_0 ),
        .O(eqOp2_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmrVal[3]_i_3 
       (.I0(tmrVal_reg[1]),
        .I1(tmrVal_reg[0]),
        .I2(tmrVal_reg[2]),
        .I3(tmrVal_reg[3]),
        .O(plusOp__1[3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmrVal[3]_i_4 
       (.I0(tmrCntr_reg[5]),
        .I1(tmrCntr_reg[4]),
        .I2(tmrCntr_reg[3]),
        .I3(tmrCntr_reg[2]),
        .O(\tmrVal[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tmrVal[3]_i_5 
       (.I0(tmrCntr_reg[25]),
        .I1(tmrCntr_reg[17]),
        .I2(tmrCntr_reg[19]),
        .I3(tmrCntr_reg[10]),
        .I4(tmrCntr_reg[11]),
        .I5(tmrCntr_reg[12]),
        .O(\tmrVal[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \tmrVal[3]_i_6 
       (.I0(\tmrVal[3]_i_7_n_0 ),
        .I1(tmrCntr_reg[20]),
        .I2(tmrCntr_reg[18]),
        .I3(tmrCntr_reg[16]),
        .I4(\tmrVal[3]_i_8_n_0 ),
        .I5(\tmrVal[3]_i_9_n_0 ),
        .O(\tmrVal[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tmrVal[3]_i_7 
       (.I0(tmrCntr_reg[13]),
        .I1(tmrCntr_reg[8]),
        .I2(tmrCntr_reg[15]),
        .I3(tmrCntr_reg[14]),
        .O(\tmrVal[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tmrVal[3]_i_8 
       (.I0(tmrCntr_reg[22]),
        .I1(tmrCntr_reg[21]),
        .I2(tmrCntr_reg[24]),
        .I3(tmrCntr_reg[23]),
        .O(\tmrVal[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \tmrVal[3]_i_9 
       (.I0(tmrCntr_reg[0]),
        .I1(tmrCntr_reg[26]),
        .I2(tmrCntr_reg[1]),
        .O(\tmrVal[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmrVal_reg[0] 
       (.C(CLK),
        .CE(eqOp2_in),
        .D(\tmrVal[0]_i_1_n_0 ),
        .Q(tmrVal_reg[0]),
        .R(\tmrVal[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmrVal_reg[1] 
       (.C(CLK),
        .CE(eqOp2_in),
        .D(\tmrVal[1]_i_1_n_0 ),
        .Q(tmrVal_reg[1]),
        .R(\tmrVal[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmrVal_reg[2] 
       (.C(CLK),
        .CE(eqOp2_in),
        .D(plusOp__1[2]),
        .Q(tmrVal_reg[2]),
        .R(\tmrVal[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmrVal_reg[3] 
       (.C(CLK),
        .CE(eqOp2_in),
        .D(plusOp__1[3]),
        .Q(tmrVal_reg[3]),
        .R(\tmrVal[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3A3A0A0A3A3A0A3A)) 
    \uartData[0]_i_1 
       (.I0(\uartData[0]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[2]),
        .I4(strIndex_reg[0]),
        .I5(strIndex_reg[1]),
        .O(\sendStr[0]_5 [0]));
  LUT6 #(
    .INIT(64'hFC0C0F0F8F8C3C30)) 
    \uartData[0]_i_2 
       (.I0(\sendStr_reg[14] ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[2]),
        .I3(\sendStr_reg[2] ),
        .I4(strIndex_reg[1]),
        .I5(strIndex_reg[0]),
        .O(\uartData[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A0A0A3A0A0A)) 
    \uartData[1]_i_1 
       (.I0(\uartData_reg[1]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[2]),
        .I4(strIndex_reg[0]),
        .I5(strIndex_reg[1]),
        .O(\sendStr[0]_5 [1]));
  LUT5 #(
    .INIT(32'h30CC30BB)) 
    \uartData[1]_i_3 
       (.I0(\sendStr_reg[4] ),
        .I1(strIndex_reg[2]),
        .I2(\sendStr_reg[2] ),
        .I3(strIndex_reg[1]),
        .I4(strIndex_reg[0]),
        .O(\uartData[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3838BB88)) 
    \uartData[1]_i_4 
       (.I0(\sendStr_reg[2] ),
        .I1(strIndex_reg[2]),
        .I2(strIndex_reg[1]),
        .I3(\sendStr_reg[14] ),
        .I4(strIndex_reg[0]),
        .O(\uartData[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3A3A0A0A0A3A3A3A)) 
    \uartData[2]_i_1 
       (.I0(\uartData_reg[2]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[2]),
        .I4(strIndex_reg[1]),
        .I5(strIndex_reg[0]),
        .O(\sendStr[0]_5 [2]));
  LUT6 #(
    .INIT(64'hAFAFFF0F0F00C0C0)) 
    \uartData[2]_i_3 
       (.I0(\sendStr_reg[2] ),
        .I1(\sendStr_reg[4] ),
        .I2(strIndex_reg[2]),
        .I3(\sendStr_reg[14] ),
        .I4(strIndex_reg[1]),
        .I5(strIndex_reg[0]),
        .O(\uartData[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFE8E048)) 
    \uartData[2]_i_4 
       (.I0(strIndex_reg[2]),
        .I1(\sendStr_reg[2] ),
        .I2(strIndex_reg[1]),
        .I3(strIndex_reg[0]),
        .I4(\sendStr_reg[14] ),
        .O(\uartData[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \uartData[3]_i_1 
       (.I0(\uartData[3]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[2]),
        .I4(strIndex_reg[1]),
        .O(\sendStr[0]_5 [3]));
  LUT6 #(
    .INIT(64'hFAAFEFF500004050)) 
    \uartData[3]_i_2 
       (.I0(strIndex_reg[3]),
        .I1(\sendStr_reg[14] ),
        .I2(strIndex_reg[2]),
        .I3(strIndex_reg[0]),
        .I4(strIndex_reg[1]),
        .I5(\sendStr_reg[2] ),
        .O(\uartData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \uartData[4]_i_1 
       (.I0(\uartData[4]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[0]),
        .I4(strIndex_reg[1]),
        .I5(strIndex_reg[2]),
        .O(\sendStr[0]_5 [4]));
  LUT6 #(
    .INIT(64'hFF4D0F0A00480000)) 
    \uartData[4]_i_2 
       (.I0(strIndex_reg[3]),
        .I1(\sendStr_reg[2] ),
        .I2(strIndex_reg[2]),
        .I3(strIndex_reg[1]),
        .I4(strIndex_reg[0]),
        .I5(\sendStr_reg[14] ),
        .O(\uartData[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A3A3A3A)) 
    \uartData[5]_i_1 
       (.I0(\uartData[5]_i_2_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[1]),
        .I4(strIndex_reg[2]),
        .O(\sendStr[0]_5 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFEA00005040)) 
    \uartData[5]_i_2 
       (.I0(strIndex_reg[3]),
        .I1(\sendStr_reg[4] ),
        .I2(strIndex_reg[2]),
        .I3(strIndex_reg[1]),
        .I4(strIndex_reg[0]),
        .I5(\sendStr_reg[14] ),
        .O(\uartData[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \uartData[6]_i_1 
       (.I0(uartState[1]),
        .I1(uartState[2]),
        .I2(uartState[0]),
        .O(strIndex));
  LUT6 #(
    .INIT(64'h0A0A0A3A3A3A3A3A)) 
    \uartData[6]_i_2 
       (.I0(\uartData[6]_i_3_n_0 ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[4]),
        .I3(strIndex_reg[0]),
        .I4(strIndex_reg[1]),
        .I5(strIndex_reg[2]),
        .O(\sendStr[0]_5 [6]));
  LUT6 #(
    .INIT(64'hFCFFFBFF30FF3BCC)) 
    \uartData[6]_i_3 
       (.I0(\sendStr_reg[2] ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[0]),
        .I3(strIndex_reg[2]),
        .I4(strIndex_reg[1]),
        .I5(\sendStr_reg[14] ),
        .O(\uartData[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[0] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [0]),
        .Q(uartData[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[1] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [1]),
        .Q(uartData[1]),
        .R(1'b0));
  MUXF7 \uartData_reg[1]_i_2 
       (.I0(\uartData[1]_i_3_n_0 ),
        .I1(\uartData[1]_i_4_n_0 ),
        .O(\uartData_reg[1]_i_2_n_0 ),
        .S(strIndex_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[2] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [2]),
        .Q(uartData[2]),
        .R(1'b0));
  MUXF7 \uartData_reg[2]_i_2 
       (.I0(\uartData[2]_i_3_n_0 ),
        .I1(\uartData[2]_i_4_n_0 ),
        .O(\uartData_reg[2]_i_2_n_0 ),
        .S(strIndex_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[3] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [3]),
        .Q(uartData[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[4] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [4]),
        .Q(uartData[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[5] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [5]),
        .Q(uartData[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[6] 
       (.C(CLK),
        .CE(strIndex),
        .D(\sendStr[0]_5 [6]),
        .Q(uartData[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    uartSend_reg
       (.C(CLK),
        .CE(1'b1),
        .D(strIndex),
        .Q(uartSend),
        .R(1'b0));
  CARRY4 uartState1_carry
       (.CI(1'b0),
        .CO({uartState1_carry_n_0,uartState1_carry_n_1,uartState1_carry_n_2,uartState1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uartState1_carry_O_UNCONNECTED[3:0]),
        .S({uartState1_carry_i_1_n_0,uartState1_carry_i_2_n_0,uartState1_carry_i_3_n_0,uartState1_carry_i_4_n_0}));
  CARRY4 uartState1_carry__0
       (.CI(uartState1_carry_n_0),
        .CO({uartState1_carry__0_n_0,uartState1_carry__0_n_1,uartState1_carry__0_n_2,uartState1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uartState1_carry__0_O_UNCONNECTED[3:0]),
        .S({uartState1_carry__0_i_1_n_0,uartState1_carry__0_i_2_n_0,uartState1_carry__0_i_3_n_0,uartState1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__0_i_1
       (.I0(strIndex_reg[23]),
        .I1(strIndex_reg[22]),
        .I2(strIndex_reg[21]),
        .O(uartState1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__0_i_2
       (.I0(strIndex_reg[20]),
        .I1(strIndex_reg[19]),
        .I2(strIndex_reg[18]),
        .O(uartState1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__0_i_3
       (.I0(strIndex_reg[17]),
        .I1(strIndex_reg[16]),
        .I2(strIndex_reg[15]),
        .O(uartState1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__0_i_4
       (.I0(strIndex_reg[14]),
        .I1(strIndex_reg[13]),
        .I2(strIndex_reg[12]),
        .O(uartState1_carry__0_i_4_n_0));
  CARRY4 uartState1_carry__1
       (.CI(uartState1_carry__0_n_0),
        .CO({NLW_uartState1_carry__1_CO_UNCONNECTED[3],uartState1_carry__1_n_1,uartState1_carry__1_n_2,uartState1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uartState1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,uartState1_carry__1_i_1_n_0,uartState1_carry__1_i_2_n_0,uartState1_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    uartState1_carry__1_i_1
       (.I0(strIndex_reg[30]),
        .O(uartState1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__1_i_2
       (.I0(strIndex_reg[29]),
        .I1(strIndex_reg[28]),
        .I2(strIndex_reg[27]),
        .O(uartState1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry__1_i_3
       (.I0(strIndex_reg[26]),
        .I1(strIndex_reg[25]),
        .I2(strIndex_reg[24]),
        .O(uartState1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry_i_1
       (.I0(strIndex_reg[11]),
        .I1(strIndex_reg[10]),
        .I2(strIndex_reg[9]),
        .O(uartState1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry_i_2
       (.I0(strIndex_reg[8]),
        .I1(strIndex_reg[7]),
        .I2(strIndex_reg[6]),
        .O(uartState1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0900)) 
    uartState1_carry_i_3
       (.I0(\strEnd_reg_n_0_[3] ),
        .I1(strIndex_reg[3]),
        .I2(strIndex_reg[5]),
        .I3(strIndex_reg[4]),
        .O(uartState1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    uartState1_carry_i_4
       (.I0(strIndex_reg[2]),
        .I1(strIndex_reg[1]),
        .I2(strIndex_reg[0]),
        .O(uartState1_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "RGB_controller" *) 
module design_1_GPIO_demo_0_0_RGB_controller
   (RGB2_Green,
    RGB2_Blue,
    RGB2_Red,
    CLK);
  output RGB2_Green;
  output RGB2_Blue;
  output RGB2_Red;
  input CLK;

  wire CLK;
  wire [8:7]L;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire clear;
  wire \deltacount[0]_i_3_n_0 ;
  wire \deltacount[0]_i_4_n_0 ;
  wire \deltacount[0]_i_5_n_0 ;
  wire [19:0]deltacount_reg;
  wire \deltacount_reg[0]_i_2_n_0 ;
  wire \deltacount_reg[0]_i_2_n_1 ;
  wire \deltacount_reg[0]_i_2_n_2 ;
  wire \deltacount_reg[0]_i_2_n_3 ;
  wire \deltacount_reg[0]_i_2_n_4 ;
  wire \deltacount_reg[0]_i_2_n_5 ;
  wire \deltacount_reg[0]_i_2_n_6 ;
  wire \deltacount_reg[0]_i_2_n_7 ;
  wire \deltacount_reg[12]_i_1_n_0 ;
  wire \deltacount_reg[12]_i_1_n_1 ;
  wire \deltacount_reg[12]_i_1_n_2 ;
  wire \deltacount_reg[12]_i_1_n_3 ;
  wire \deltacount_reg[12]_i_1_n_4 ;
  wire \deltacount_reg[12]_i_1_n_5 ;
  wire \deltacount_reg[12]_i_1_n_6 ;
  wire \deltacount_reg[12]_i_1_n_7 ;
  wire \deltacount_reg[16]_i_1_n_1 ;
  wire \deltacount_reg[16]_i_1_n_2 ;
  wire \deltacount_reg[16]_i_1_n_3 ;
  wire \deltacount_reg[16]_i_1_n_4 ;
  wire \deltacount_reg[16]_i_1_n_5 ;
  wire \deltacount_reg[16]_i_1_n_6 ;
  wire \deltacount_reg[16]_i_1_n_7 ;
  wire \deltacount_reg[4]_i_1_n_0 ;
  wire \deltacount_reg[4]_i_1_n_1 ;
  wire \deltacount_reg[4]_i_1_n_2 ;
  wire \deltacount_reg[4]_i_1_n_3 ;
  wire \deltacount_reg[4]_i_1_n_4 ;
  wire \deltacount_reg[4]_i_1_n_5 ;
  wire \deltacount_reg[4]_i_1_n_6 ;
  wire \deltacount_reg[4]_i_1_n_7 ;
  wire \deltacount_reg[8]_i_1_n_0 ;
  wire \deltacount_reg[8]_i_1_n_1 ;
  wire \deltacount_reg[8]_i_1_n_2 ;
  wire \deltacount_reg[8]_i_1_n_3 ;
  wire \deltacount_reg[8]_i_1_n_4 ;
  wire \deltacount_reg[8]_i_1_n_5 ;
  wire \deltacount_reg[8]_i_1_n_6 ;
  wire \deltacount_reg[8]_i_1_n_7 ;
  wire gtOp;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire \gtOp_inferred__0/i__carry_n_0 ;
  wire \gtOp_inferred__0/i__carry_n_1 ;
  wire \gtOp_inferred__0/i__carry_n_2 ;
  wire \gtOp_inferred__0/i__carry_n_3 ;
  wire \gtOp_inferred__1/i__carry_n_0 ;
  wire \gtOp_inferred__1/i__carry_n_1 ;
  wire \gtOp_inferred__1/i__carry_n_2 ;
  wire \gtOp_inferred__1/i__carry_n_3 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire p_0_in;
  wire [5:3]plusOp;
  wire [7:1]plusOp__0;
  wire valcount;
  wire \valcount[0]_i_1_n_0 ;
  wire \valcount[1]_i_1_n_0 ;
  wire \valcount[2]_i_1_n_0 ;
  wire \valcount[6]_i_1_n_0 ;
  wire \valcount[7]_i_1_n_0 ;
  wire \valcount[8]_i_1_n_0 ;
  wire \valcount[8]_i_2_n_0 ;
  wire \valcount[8]_i_3_n_0 ;
  wire \valcount[8]_i_4_n_0 ;
  wire \valcount[8]_i_5_n_0 ;
  wire \valcount[8]_i_6_n_0 ;
  wire \valcount[8]_i_7_n_0 ;
  wire \valcount[8]_i_8_n_0 ;
  wire \valcount_reg_n_0_[0] ;
  wire \valcount_reg_n_0_[1] ;
  wire \valcount_reg_n_0_[2] ;
  wire \valcount_reg_n_0_[3] ;
  wire \valcount_reg_n_0_[4] ;
  wire \valcount_reg_n_0_[5] ;
  wire \windowcount[0]_i_1_n_0 ;
  wire \windowcount[7]_i_1_n_0 ;
  wire \windowcount[7]_i_3_n_0 ;
  wire \windowcount[7]_i_4_n_0 ;
  wire [7:0]windowcount_reg;
  wire [3:3]\NLW_deltacount_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:0]\NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gtOp_inferred__1/i__carry_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000000080008000)) 
    \deltacount[0]_i_1 
       (.I0(deltacount_reg[18]),
        .I1(deltacount_reg[19]),
        .I2(deltacount_reg[16]),
        .I3(deltacount_reg[17]),
        .I4(deltacount_reg[15]),
        .I5(\deltacount[0]_i_3_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \deltacount[0]_i_3 
       (.I0(\deltacount[0]_i_5_n_0 ),
        .I1(deltacount_reg[6]),
        .I2(deltacount_reg[7]),
        .I3(deltacount_reg[8]),
        .I4(deltacount_reg[9]),
        .I5(deltacount_reg[14]),
        .O(\deltacount[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deltacount[0]_i_4 
       (.I0(deltacount_reg[0]),
        .O(\deltacount[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deltacount[0]_i_5 
       (.I0(deltacount_reg[13]),
        .I1(deltacount_reg[12]),
        .I2(deltacount_reg[11]),
        .I3(deltacount_reg[10]),
        .O(\deltacount[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[0]_i_2_n_7 ),
        .Q(deltacount_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \deltacount_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\deltacount_reg[0]_i_2_n_0 ,\deltacount_reg[0]_i_2_n_1 ,\deltacount_reg[0]_i_2_n_2 ,\deltacount_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\deltacount_reg[0]_i_2_n_4 ,\deltacount_reg[0]_i_2_n_5 ,\deltacount_reg[0]_i_2_n_6 ,\deltacount_reg[0]_i_2_n_7 }),
        .S({deltacount_reg[3:1],\deltacount[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[8]_i_1_n_5 ),
        .Q(deltacount_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[8]_i_1_n_4 ),
        .Q(deltacount_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[12]_i_1_n_7 ),
        .Q(deltacount_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \deltacount_reg[12]_i_1 
       (.CI(\deltacount_reg[8]_i_1_n_0 ),
        .CO({\deltacount_reg[12]_i_1_n_0 ,\deltacount_reg[12]_i_1_n_1 ,\deltacount_reg[12]_i_1_n_2 ,\deltacount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\deltacount_reg[12]_i_1_n_4 ,\deltacount_reg[12]_i_1_n_5 ,\deltacount_reg[12]_i_1_n_6 ,\deltacount_reg[12]_i_1_n_7 }),
        .S(deltacount_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[12]_i_1_n_6 ),
        .Q(deltacount_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[12]_i_1_n_5 ),
        .Q(deltacount_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[12]_i_1_n_4 ),
        .Q(deltacount_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[16]_i_1_n_7 ),
        .Q(deltacount_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \deltacount_reg[16]_i_1 
       (.CI(\deltacount_reg[12]_i_1_n_0 ),
        .CO({\NLW_deltacount_reg[16]_i_1_CO_UNCONNECTED [3],\deltacount_reg[16]_i_1_n_1 ,\deltacount_reg[16]_i_1_n_2 ,\deltacount_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\deltacount_reg[16]_i_1_n_4 ,\deltacount_reg[16]_i_1_n_5 ,\deltacount_reg[16]_i_1_n_6 ,\deltacount_reg[16]_i_1_n_7 }),
        .S(deltacount_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[16]_i_1_n_6 ),
        .Q(deltacount_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[16]_i_1_n_5 ),
        .Q(deltacount_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[16]_i_1_n_4 ),
        .Q(deltacount_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[0]_i_2_n_6 ),
        .Q(deltacount_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[0]_i_2_n_5 ),
        .Q(deltacount_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[0]_i_2_n_4 ),
        .Q(deltacount_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[4]_i_1_n_7 ),
        .Q(deltacount_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \deltacount_reg[4]_i_1 
       (.CI(\deltacount_reg[0]_i_2_n_0 ),
        .CO({\deltacount_reg[4]_i_1_n_0 ,\deltacount_reg[4]_i_1_n_1 ,\deltacount_reg[4]_i_1_n_2 ,\deltacount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\deltacount_reg[4]_i_1_n_4 ,\deltacount_reg[4]_i_1_n_5 ,\deltacount_reg[4]_i_1_n_6 ,\deltacount_reg[4]_i_1_n_7 }),
        .S(deltacount_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[4]_i_1_n_6 ),
        .Q(deltacount_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[4]_i_1_n_5 ),
        .Q(deltacount_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[4]_i_1_n_4 ),
        .Q(deltacount_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[8]_i_1_n_7 ),
        .Q(deltacount_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \deltacount_reg[8]_i_1 
       (.CI(\deltacount_reg[4]_i_1_n_0 ),
        .CO({\deltacount_reg[8]_i_1_n_0 ,\deltacount_reg[8]_i_1_n_1 ,\deltacount_reg[8]_i_1_n_2 ,\deltacount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\deltacount_reg[8]_i_1_n_4 ,\deltacount_reg[8]_i_1_n_5 ,\deltacount_reg[8]_i_1_n_6 ,\deltacount_reg[8]_i_1_n_7 }),
        .S(deltacount_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \deltacount_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\deltacount_reg[8]_i_1_n_6 ),
        .Q(deltacount_reg[9]),
        .R(clear));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  LUT5 #(
    .INIT(32'h00001140)) 
    gtOp_carry_i_1
       (.I0(windowcount_reg[6]),
        .I1(p_0_in),
        .I2(L[7]),
        .I3(L[8]),
        .I4(windowcount_reg[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h011F011F2F020000)) 
    gtOp_carry_i_2
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(windowcount_reg[5]),
        .I3(\valcount_reg_n_0_[5] ),
        .I4(L[7]),
        .I5(L[8]),
        .O(gtOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h011F011F2F020000)) 
    gtOp_carry_i_3
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(windowcount_reg[3]),
        .I3(\valcount_reg_n_0_[3] ),
        .I4(L[7]),
        .I5(L[8]),
        .O(gtOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h011F011F2F020000)) 
    gtOp_carry_i_4
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(windowcount_reg[1]),
        .I3(\valcount_reg_n_0_[1] ),
        .I4(L[7]),
        .I5(L[8]),
        .O(gtOp_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h000058A7)) 
    gtOp_carry_i_5
       (.I0(p_0_in),
        .I1(L[7]),
        .I2(L[8]),
        .I3(windowcount_reg[6]),
        .I4(windowcount_reg[7]),
        .O(gtOp_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0606900060600933)) 
    gtOp_carry_i_6
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(\valcount_reg_n_0_[5] ),
        .I3(L[7]),
        .I4(L[8]),
        .I5(windowcount_reg[5]),
        .O(gtOp_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0606900060600933)) 
    gtOp_carry_i_7
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(\valcount_reg_n_0_[3] ),
        .I3(L[7]),
        .I4(L[8]),
        .I5(windowcount_reg[3]),
        .O(gtOp_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0606900060600933)) 
    gtOp_carry_i_8
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(\valcount_reg_n_0_[1] ),
        .I3(L[7]),
        .I4(L[8]),
        .I5(windowcount_reg[1]),
        .O(gtOp_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gtOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\gtOp_inferred__0/i__carry_n_0 ,\gtOp_inferred__0/i__carry_n_1 ,\gtOp_inferred__0/i__carry_n_2 ,\gtOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gtOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\gtOp_inferred__1/i__carry_n_0 ,\gtOp_inferred__1/i__carry_n_1 ,\gtOp_inferred__1/i__carry_n_2 ,\gtOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_gtOp_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  LUT5 #(
    .INIT(32'h00000110)) 
    i__carry_i_1
       (.I0(windowcount_reg[6]),
        .I1(L[8]),
        .I2(L[7]),
        .I3(p_0_in),
        .I4(windowcount_reg[7]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h00004401)) 
    i__carry_i_1__0
       (.I0(windowcount_reg[6]),
        .I1(L[8]),
        .I2(L[7]),
        .I3(p_0_in),
        .I4(windowcount_reg[7]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0001002F001F0002)) 
    i__carry_i_2
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(windowcount_reg[5]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F002F010200021F)) 
    i__carry_i_2__0
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(windowcount_reg[5]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[5] ),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0001002F001F0002)) 
    i__carry_i_3
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(windowcount_reg[3]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2F002F010200021F)) 
    i__carry_i_3__0
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(windowcount_reg[3]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0001002F001F0002)) 
    i__carry_i_4
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(windowcount_reg[1]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h2F002F010200021F)) 
    i__carry_i_4__0
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(windowcount_reg[1]),
        .I3(L[8]),
        .I4(L[7]),
        .I5(\valcount_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h000014EB)) 
    i__carry_i_5
       (.I0(L[8]),
        .I1(L[7]),
        .I2(p_0_in),
        .I3(windowcount_reg[6]),
        .I4(windowcount_reg[7]),
        .O(i__carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h0000A15E)) 
    i__carry_i_5__0
       (.I0(L[8]),
        .I1(L[7]),
        .I2(p_0_in),
        .I3(windowcount_reg[6]),
        .I4(windowcount_reg[7]),
        .O(i__carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0009060036303039)) 
    i__carry_i_6
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[5] ),
        .I5(windowcount_reg[5]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9090000603069390)) 
    i__carry_i_6__0
       (.I0(\valcount_reg_n_0_[4] ),
        .I1(windowcount_reg[4]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[5] ),
        .I5(windowcount_reg[5]),
        .O(i__carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0009060036303039)) 
    i__carry_i_7
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[3] ),
        .I5(windowcount_reg[3]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9090000603069390)) 
    i__carry_i_7__0
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(windowcount_reg[2]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[3] ),
        .I5(windowcount_reg[3]),
        .O(i__carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0009060036303039)) 
    i__carry_i_8
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[1] ),
        .I5(windowcount_reg[1]),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h9090000603069390)) 
    i__carry_i_8__0
       (.I0(\valcount_reg_n_0_[0] ),
        .I1(windowcount_reg[0]),
        .I2(L[8]),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[1] ),
        .I5(windowcount_reg[1]),
        .O(i__carry_i_8__0_n_0));
  FDRE \rgbLedReg1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(gtOp),
        .Q(RGB2_Green),
        .R(1'b0));
  FDRE \rgbLedReg1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gtOp_inferred__0/i__carry_n_0 ),
        .Q(RGB2_Blue),
        .R(1'b0));
  FDRE \rgbLedReg1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gtOp_inferred__1/i__carry_n_0 ),
        .Q(RGB2_Red),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \valcount[0]_i_1 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(L[7]),
        .O(\valcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1133444C)) 
    \valcount[1]_i_1 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount[8]_i_6_n_0 ),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[1] ),
        .O(\valcount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1133557F444C0000)) 
    \valcount[2]_i_1 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount[8]_i_6_n_0 ),
        .I3(L[7]),
        .I4(\valcount_reg_n_0_[1] ),
        .I5(\valcount_reg_n_0_[2] ),
        .O(\valcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \valcount[3]_i_1 
       (.I0(\valcount_reg_n_0_[1] ),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount_reg_n_0_[2] ),
        .I3(\valcount_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \valcount[4]_i_1 
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount_reg_n_0_[1] ),
        .I3(\valcount_reg_n_0_[3] ),
        .I4(\valcount_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT5 #(
    .INIT(32'h88888000)) 
    \valcount[5]_i_1 
       (.I0(\valcount[8]_i_1_n_0 ),
        .I1(L[8]),
        .I2(\valcount_reg_n_0_[0] ),
        .I3(\valcount[8]_i_6_n_0 ),
        .I4(L[7]),
        .O(valcount));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \valcount[5]_i_2 
       (.I0(\valcount_reg_n_0_[3] ),
        .I1(\valcount_reg_n_0_[1] ),
        .I2(\valcount_reg_n_0_[0] ),
        .I3(\valcount_reg_n_0_[2] ),
        .I4(\valcount_reg_n_0_[4] ),
        .I5(\valcount_reg_n_0_[5] ),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h0000557F557F0000)) 
    \valcount[6]_i_1 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount[8]_i_6_n_0 ),
        .I3(L[7]),
        .I4(\valcount[8]_i_7_n_0 ),
        .I5(p_0_in),
        .O(\valcount[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F550055005500)) 
    \valcount[7]_i_1 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount[8]_i_6_n_0 ),
        .I3(L[7]),
        .I4(\valcount[8]_i_7_n_0 ),
        .I5(p_0_in),
        .O(\valcount[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \valcount[8]_i_1 
       (.I0(deltacount_reg[12]),
        .I1(\valcount[8]_i_3_n_0 ),
        .I2(deltacount_reg[14]),
        .I3(deltacount_reg[13]),
        .I4(\valcount[8]_i_4_n_0 ),
        .I5(\valcount[8]_i_5_n_0 ),
        .O(\valcount[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h552A002A002A002A)) 
    \valcount[8]_i_2 
       (.I0(L[8]),
        .I1(\valcount_reg_n_0_[0] ),
        .I2(\valcount[8]_i_6_n_0 ),
        .I3(L[7]),
        .I4(p_0_in),
        .I5(\valcount[8]_i_7_n_0 ),
        .O(\valcount[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \valcount[8]_i_3 
       (.I0(deltacount_reg[10]),
        .I1(deltacount_reg[11]),
        .O(\valcount[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \valcount[8]_i_4 
       (.I0(deltacount_reg[18]),
        .I1(deltacount_reg[19]),
        .I2(deltacount_reg[15]),
        .I3(deltacount_reg[16]),
        .I4(deltacount_reg[17]),
        .O(\valcount[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \valcount[8]_i_5 
       (.I0(deltacount_reg[2]),
        .I1(deltacount_reg[1]),
        .I2(deltacount_reg[0]),
        .I3(deltacount_reg[3]),
        .I4(deltacount_reg[4]),
        .I5(\valcount[8]_i_8_n_0 ),
        .O(\valcount[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \valcount[8]_i_6 
       (.I0(\valcount_reg_n_0_[2] ),
        .I1(\valcount_reg_n_0_[1] ),
        .I2(\valcount_reg_n_0_[5] ),
        .I3(p_0_in),
        .I4(\valcount_reg_n_0_[3] ),
        .I5(\valcount_reg_n_0_[4] ),
        .O(\valcount[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \valcount[8]_i_7 
       (.I0(\valcount_reg_n_0_[5] ),
        .I1(\valcount_reg_n_0_[3] ),
        .I2(\valcount_reg_n_0_[1] ),
        .I3(\valcount_reg_n_0_[0] ),
        .I4(\valcount_reg_n_0_[2] ),
        .I5(\valcount_reg_n_0_[4] ),
        .O(\valcount[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \valcount[8]_i_8 
       (.I0(deltacount_reg[9]),
        .I1(deltacount_reg[8]),
        .I2(deltacount_reg[5]),
        .I3(deltacount_reg[6]),
        .I4(deltacount_reg[7]),
        .O(\valcount[8]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[0] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[0]_i_1_n_0 ),
        .Q(\valcount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[1] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[1]_i_1_n_0 ),
        .Q(\valcount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[2] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[2]_i_1_n_0 ),
        .Q(\valcount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[3] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(\valcount_reg_n_0_[3] ),
        .R(valcount));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[4] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(\valcount_reg_n_0_[4] ),
        .R(valcount));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[5] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(\valcount_reg_n_0_[5] ),
        .R(valcount));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[6] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[6]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[7] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[7]_i_1_n_0 ),
        .Q(L[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valcount_reg[8] 
       (.C(CLK),
        .CE(\valcount[8]_i_1_n_0 ),
        .D(\valcount[8]_i_2_n_0 ),
        .Q(L[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \windowcount[0]_i_1 
       (.I0(windowcount_reg[0]),
        .O(\windowcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \windowcount[1]_i_1 
       (.I0(windowcount_reg[0]),
        .I1(windowcount_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \windowcount[2]_i_1 
       (.I0(windowcount_reg[0]),
        .I1(windowcount_reg[1]),
        .I2(windowcount_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \windowcount[3]_i_1 
       (.I0(windowcount_reg[1]),
        .I1(windowcount_reg[0]),
        .I2(windowcount_reg[2]),
        .I3(windowcount_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \windowcount[4]_i_1 
       (.I0(windowcount_reg[2]),
        .I1(windowcount_reg[0]),
        .I2(windowcount_reg[1]),
        .I3(windowcount_reg[3]),
        .I4(windowcount_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \windowcount[5]_i_1 
       (.I0(windowcount_reg[3]),
        .I1(windowcount_reg[1]),
        .I2(windowcount_reg[0]),
        .I3(windowcount_reg[2]),
        .I4(windowcount_reg[4]),
        .I5(windowcount_reg[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \windowcount[6]_i_1 
       (.I0(\windowcount[7]_i_4_n_0 ),
        .I1(windowcount_reg[6]),
        .O(plusOp__0[6]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \windowcount[7]_i_1 
       (.I0(\windowcount[7]_i_3_n_0 ),
        .I1(windowcount_reg[1]),
        .I2(windowcount_reg[3]),
        .I3(windowcount_reg[2]),
        .I4(windowcount_reg[0]),
        .O(\windowcount[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \windowcount[7]_i_2 
       (.I0(\windowcount[7]_i_4_n_0 ),
        .I1(windowcount_reg[6]),
        .I2(windowcount_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \windowcount[7]_i_3 
       (.I0(windowcount_reg[5]),
        .I1(windowcount_reg[4]),
        .I2(windowcount_reg[7]),
        .I3(windowcount_reg[6]),
        .O(\windowcount[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \windowcount[7]_i_4 
       (.I0(windowcount_reg[5]),
        .I1(windowcount_reg[3]),
        .I2(windowcount_reg[1]),
        .I3(windowcount_reg[0]),
        .I4(windowcount_reg[2]),
        .I5(windowcount_reg[4]),
        .O(\windowcount[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\windowcount[0]_i_1_n_0 ),
        .Q(windowcount_reg[0]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(windowcount_reg[1]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(windowcount_reg[2]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(windowcount_reg[3]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(windowcount_reg[4]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(windowcount_reg[5]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[6]),
        .Q(windowcount_reg[6]),
        .R(\windowcount[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \windowcount_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp__0[7]),
        .Q(windowcount_reg[7]),
        .R(\windowcount[7]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "UART_TX_CTRL" *) 
module design_1_GPIO_demo_0_0_UART_TX_CTRL
   (UART_TXD,
    \FSM_sequential_uartState_reg[2] ,
    \FSM_sequential_uartState_reg[1] ,
    \FSM_sequential_uartState_reg[0] ,
    CLK,
    E,
    uartState,
    CO,
    btnDeBnc,
    eqOp__25,
    \FSM_sequential_uartState_reg[0]_0 ,
    Q);
  output UART_TXD;
  output \FSM_sequential_uartState_reg[2] ;
  output \FSM_sequential_uartState_reg[1] ;
  output \FSM_sequential_uartState_reg[0] ;
  input CLK;
  input [0:0]E;
  input [2:0]uartState;
  input [0:0]CO;
  input [0:0]btnDeBnc;
  input eqOp__25;
  input \FSM_sequential_uartState_reg[0]_0 ;
  input [6:0]Q;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_txState[0]_i_1_n_0 ;
  wire \FSM_sequential_txState[0]_i_2_n_0 ;
  wire \FSM_sequential_txState[0]_i_3_n_0 ;
  wire \FSM_sequential_txState[0]_i_4_n_0 ;
  wire \FSM_sequential_txState[0]_i_5_n_0 ;
  wire \FSM_sequential_txState[0]_i_6_n_0 ;
  wire \FSM_sequential_txState[0]_i_7_n_0 ;
  wire \FSM_sequential_txState[0]_i_8_n_0 ;
  wire \FSM_sequential_txState[0]_i_9_n_0 ;
  wire \FSM_sequential_txState[1]_i_1_n_0 ;
  wire \FSM_sequential_txState[1]_i_3_n_0 ;
  wire \FSM_sequential_txState[1]_i_4_n_0 ;
  wire \FSM_sequential_txState[1]_i_5_n_0 ;
  wire \FSM_sequential_uartState[2]_i_2_n_0 ;
  wire \FSM_sequential_uartState_reg[0] ;
  wire \FSM_sequential_uartState_reg[0]_0 ;
  wire \FSM_sequential_uartState_reg[1] ;
  wire \FSM_sequential_uartState_reg[2] ;
  wire [6:0]Q;
  wire READY;
  wire UART_TXD;
  wire \bitIndex[0]_i_2_n_0 ;
  wire [30:0]bitIndex_reg;
  wire \bitIndex_reg[0]_i_1_n_0 ;
  wire \bitIndex_reg[0]_i_1_n_1 ;
  wire \bitIndex_reg[0]_i_1_n_2 ;
  wire \bitIndex_reg[0]_i_1_n_3 ;
  wire \bitIndex_reg[0]_i_1_n_4 ;
  wire \bitIndex_reg[0]_i_1_n_5 ;
  wire \bitIndex_reg[0]_i_1_n_6 ;
  wire \bitIndex_reg[0]_i_1_n_7 ;
  wire \bitIndex_reg[12]_i_1_n_0 ;
  wire \bitIndex_reg[12]_i_1_n_1 ;
  wire \bitIndex_reg[12]_i_1_n_2 ;
  wire \bitIndex_reg[12]_i_1_n_3 ;
  wire \bitIndex_reg[12]_i_1_n_4 ;
  wire \bitIndex_reg[12]_i_1_n_5 ;
  wire \bitIndex_reg[12]_i_1_n_6 ;
  wire \bitIndex_reg[12]_i_1_n_7 ;
  wire \bitIndex_reg[16]_i_1_n_0 ;
  wire \bitIndex_reg[16]_i_1_n_1 ;
  wire \bitIndex_reg[16]_i_1_n_2 ;
  wire \bitIndex_reg[16]_i_1_n_3 ;
  wire \bitIndex_reg[16]_i_1_n_4 ;
  wire \bitIndex_reg[16]_i_1_n_5 ;
  wire \bitIndex_reg[16]_i_1_n_6 ;
  wire \bitIndex_reg[16]_i_1_n_7 ;
  wire \bitIndex_reg[20]_i_1_n_0 ;
  wire \bitIndex_reg[20]_i_1_n_1 ;
  wire \bitIndex_reg[20]_i_1_n_2 ;
  wire \bitIndex_reg[20]_i_1_n_3 ;
  wire \bitIndex_reg[20]_i_1_n_4 ;
  wire \bitIndex_reg[20]_i_1_n_5 ;
  wire \bitIndex_reg[20]_i_1_n_6 ;
  wire \bitIndex_reg[20]_i_1_n_7 ;
  wire \bitIndex_reg[24]_i_1_n_0 ;
  wire \bitIndex_reg[24]_i_1_n_1 ;
  wire \bitIndex_reg[24]_i_1_n_2 ;
  wire \bitIndex_reg[24]_i_1_n_3 ;
  wire \bitIndex_reg[24]_i_1_n_4 ;
  wire \bitIndex_reg[24]_i_1_n_5 ;
  wire \bitIndex_reg[24]_i_1_n_6 ;
  wire \bitIndex_reg[24]_i_1_n_7 ;
  wire \bitIndex_reg[28]_i_1_n_2 ;
  wire \bitIndex_reg[28]_i_1_n_3 ;
  wire \bitIndex_reg[28]_i_1_n_5 ;
  wire \bitIndex_reg[28]_i_1_n_6 ;
  wire \bitIndex_reg[28]_i_1_n_7 ;
  wire \bitIndex_reg[4]_i_1_n_0 ;
  wire \bitIndex_reg[4]_i_1_n_1 ;
  wire \bitIndex_reg[4]_i_1_n_2 ;
  wire \bitIndex_reg[4]_i_1_n_3 ;
  wire \bitIndex_reg[4]_i_1_n_4 ;
  wire \bitIndex_reg[4]_i_1_n_5 ;
  wire \bitIndex_reg[4]_i_1_n_6 ;
  wire \bitIndex_reg[4]_i_1_n_7 ;
  wire \bitIndex_reg[8]_i_1_n_0 ;
  wire \bitIndex_reg[8]_i_1_n_1 ;
  wire \bitIndex_reg[8]_i_1_n_2 ;
  wire \bitIndex_reg[8]_i_1_n_3 ;
  wire \bitIndex_reg[8]_i_1_n_4 ;
  wire \bitIndex_reg[8]_i_1_n_5 ;
  wire \bitIndex_reg[8]_i_1_n_6 ;
  wire \bitIndex_reg[8]_i_1_n_7 ;
  wire bitTmr;
  wire \bitTmr[0]_i_3_n_0 ;
  wire [13:0]bitTmr_reg;
  wire \bitTmr_reg[0]_i_2_n_0 ;
  wire \bitTmr_reg[0]_i_2_n_1 ;
  wire \bitTmr_reg[0]_i_2_n_2 ;
  wire \bitTmr_reg[0]_i_2_n_3 ;
  wire \bitTmr_reg[0]_i_2_n_4 ;
  wire \bitTmr_reg[0]_i_2_n_5 ;
  wire \bitTmr_reg[0]_i_2_n_6 ;
  wire \bitTmr_reg[0]_i_2_n_7 ;
  wire \bitTmr_reg[12]_i_1_n_3 ;
  wire \bitTmr_reg[12]_i_1_n_6 ;
  wire \bitTmr_reg[12]_i_1_n_7 ;
  wire \bitTmr_reg[4]_i_1_n_0 ;
  wire \bitTmr_reg[4]_i_1_n_1 ;
  wire \bitTmr_reg[4]_i_1_n_2 ;
  wire \bitTmr_reg[4]_i_1_n_3 ;
  wire \bitTmr_reg[4]_i_1_n_4 ;
  wire \bitTmr_reg[4]_i_1_n_5 ;
  wire \bitTmr_reg[4]_i_1_n_6 ;
  wire \bitTmr_reg[4]_i_1_n_7 ;
  wire \bitTmr_reg[8]_i_1_n_0 ;
  wire \bitTmr_reg[8]_i_1_n_1 ;
  wire \bitTmr_reg[8]_i_1_n_2 ;
  wire \bitTmr_reg[8]_i_1_n_3 ;
  wire \bitTmr_reg[8]_i_1_n_4 ;
  wire \bitTmr_reg[8]_i_1_n_5 ;
  wire \bitTmr_reg[8]_i_1_n_6 ;
  wire \bitTmr_reg[8]_i_1_n_7 ;
  wire [0:0]btnDeBnc;
  wire eqOp__12;
  wire eqOp__25;
  wire txBit_i_2_n_0;
  wire txBit_i_3_n_0;
  wire txBit_i_4_n_0;
  wire txBit_i_5_n_0;
  wire [7:1]txData;
  wire [1:0]txState;
  wire [2:0]uartState;
  wire [3:2]\NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCBC8CBC8CBC8C3C0)) 
    \FSM_sequential_txState[0]_i_1 
       (.I0(eqOp__12),
        .I1(txState[1]),
        .I2(txState[0]),
        .I3(E),
        .I4(\FSM_sequential_txState[0]_i_2_n_0 ),
        .I5(\FSM_sequential_txState[0]_i_3_n_0 ),
        .O(\FSM_sequential_txState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \FSM_sequential_txState[0]_i_2 
       (.I0(\FSM_sequential_txState[0]_i_4_n_0 ),
        .I1(bitIndex_reg[3]),
        .I2(bitIndex_reg[29]),
        .I3(bitIndex_reg[1]),
        .I4(\FSM_sequential_txState[0]_i_5_n_0 ),
        .I5(\FSM_sequential_txState[0]_i_6_n_0 ),
        .O(\FSM_sequential_txState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_txState[0]_i_3 
       (.I0(\FSM_sequential_txState[0]_i_7_n_0 ),
        .I1(bitIndex_reg[14]),
        .I2(bitIndex_reg[15]),
        .I3(bitIndex_reg[12]),
        .I4(bitIndex_reg[13]),
        .I5(\FSM_sequential_txState[0]_i_8_n_0 ),
        .O(\FSM_sequential_txState[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_4 
       (.I0(bitIndex_reg[26]),
        .I1(bitIndex_reg[27]),
        .I2(bitIndex_reg[24]),
        .I3(bitIndex_reg[25]),
        .O(\FSM_sequential_txState[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_5 
       (.I0(bitIndex_reg[18]),
        .I1(bitIndex_reg[19]),
        .I2(bitIndex_reg[16]),
        .I3(bitIndex_reg[17]),
        .O(\FSM_sequential_txState[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_6 
       (.I0(bitIndex_reg[22]),
        .I1(bitIndex_reg[23]),
        .I2(bitIndex_reg[20]),
        .I3(bitIndex_reg[21]),
        .O(\FSM_sequential_txState[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_7 
       (.I0(bitIndex_reg[10]),
        .I1(bitIndex_reg[11]),
        .I2(bitIndex_reg[8]),
        .I3(bitIndex_reg[9]),
        .O(\FSM_sequential_txState[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_txState[0]_i_8 
       (.I0(bitIndex_reg[5]),
        .I1(bitIndex_reg[4]),
        .I2(bitIndex_reg[7]),
        .I3(bitIndex_reg[6]),
        .I4(\FSM_sequential_txState[0]_i_9_n_0 ),
        .O(\FSM_sequential_txState[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_9 
       (.I0(bitIndex_reg[2]),
        .I1(bitIndex_reg[28]),
        .I2(bitIndex_reg[0]),
        .I3(bitIndex_reg[30]),
        .O(\FSM_sequential_txState[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_txState[1]_i_1 
       (.I0(eqOp__12),
        .I1(txState[1]),
        .I2(txState[0]),
        .O(\FSM_sequential_txState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_txState[1]_i_2 
       (.I0(\FSM_sequential_txState[1]_i_3_n_0 ),
        .I1(bitTmr_reg[10]),
        .I2(bitTmr_reg[9]),
        .I3(bitTmr_reg[12]),
        .I4(\FSM_sequential_txState[1]_i_4_n_0 ),
        .I5(\FSM_sequential_txState[1]_i_5_n_0 ),
        .O(eqOp__12));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[1]_i_3 
       (.I0(bitTmr_reg[3]),
        .I1(bitTmr_reg[2]),
        .I2(bitTmr_reg[8]),
        .I3(bitTmr_reg[6]),
        .O(\FSM_sequential_txState[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_txState[1]_i_4 
       (.I0(bitTmr_reg[0]),
        .I1(bitTmr_reg[13]),
        .I2(bitTmr_reg[1]),
        .O(\FSM_sequential_txState[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_txState[1]_i_5 
       (.I0(bitTmr_reg[5]),
        .I1(bitTmr_reg[4]),
        .I2(bitTmr_reg[11]),
        .I3(bitTmr_reg[7]),
        .O(\FSM_sequential_txState[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "send_bit:10,load_bit:01,rdy:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_txState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_txState[0]_i_1_n_0 ),
        .Q(txState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "send_bit:10,load_bit:01,rdy:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_txState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_txState[1]_i_1_n_0 ),
        .Q(txState[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000026662626)) 
    \FSM_sequential_uartState[0]_i_1 
       (.I0(uartState[0]),
        .I1(\FSM_sequential_uartState[2]_i_2_n_0 ),
        .I2(uartState[2]),
        .I3(uartState[1]),
        .I4(CO),
        .I5(btnDeBnc),
        .O(\FSM_sequential_uartState_reg[0] ));
  LUT6 #(
    .INIT(64'h000000006666AAEA)) 
    \FSM_sequential_uartState[1]_i_1 
       (.I0(uartState[1]),
        .I1(\FSM_sequential_uartState[2]_i_2_n_0 ),
        .I2(uartState[2]),
        .I3(CO),
        .I4(uartState[0]),
        .I5(btnDeBnc),
        .O(\FSM_sequential_uartState_reg[1] ));
  LUT6 #(
    .INIT(64'h000000006A2A6A22)) 
    \FSM_sequential_uartState[2]_i_1 
       (.I0(uartState[2]),
        .I1(\FSM_sequential_uartState[2]_i_2_n_0 ),
        .I2(uartState[1]),
        .I3(uartState[0]),
        .I4(CO),
        .I5(btnDeBnc),
        .O(\FSM_sequential_uartState_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFE23333FFE2)) 
    \FSM_sequential_uartState[2]_i_2 
       (.I0(eqOp__25),
        .I1(uartState[2]),
        .I2(READY),
        .I3(uartState[1]),
        .I4(uartState[0]),
        .I5(\FSM_sequential_uartState_reg[0]_0 ),
        .O(\FSM_sequential_uartState[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bitIndex[0]_i_2 
       (.I0(bitIndex_reg[0]),
        .O(\bitIndex[0]_i_2_n_0 ));
  FDRE \bitIndex_reg[0] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[0]_i_1_n_7 ),
        .Q(bitIndex_reg[0]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\bitIndex_reg[0]_i_1_n_0 ,\bitIndex_reg[0]_i_1_n_1 ,\bitIndex_reg[0]_i_1_n_2 ,\bitIndex_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\bitIndex_reg[0]_i_1_n_4 ,\bitIndex_reg[0]_i_1_n_5 ,\bitIndex_reg[0]_i_1_n_6 ,\bitIndex_reg[0]_i_1_n_7 }),
        .S({bitIndex_reg[3:1],\bitIndex[0]_i_2_n_0 }));
  FDRE \bitIndex_reg[10] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[8]_i_1_n_5 ),
        .Q(bitIndex_reg[10]),
        .R(READY));
  FDRE \bitIndex_reg[11] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[8]_i_1_n_4 ),
        .Q(bitIndex_reg[11]),
        .R(READY));
  FDRE \bitIndex_reg[12] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[12]_i_1_n_7 ),
        .Q(bitIndex_reg[12]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[12]_i_1 
       (.CI(\bitIndex_reg[8]_i_1_n_0 ),
        .CO({\bitIndex_reg[12]_i_1_n_0 ,\bitIndex_reg[12]_i_1_n_1 ,\bitIndex_reg[12]_i_1_n_2 ,\bitIndex_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[12]_i_1_n_4 ,\bitIndex_reg[12]_i_1_n_5 ,\bitIndex_reg[12]_i_1_n_6 ,\bitIndex_reg[12]_i_1_n_7 }),
        .S(bitIndex_reg[15:12]));
  FDRE \bitIndex_reg[13] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[12]_i_1_n_6 ),
        .Q(bitIndex_reg[13]),
        .R(READY));
  FDRE \bitIndex_reg[14] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[12]_i_1_n_5 ),
        .Q(bitIndex_reg[14]),
        .R(READY));
  FDRE \bitIndex_reg[15] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[12]_i_1_n_4 ),
        .Q(bitIndex_reg[15]),
        .R(READY));
  FDRE \bitIndex_reg[16] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[16]_i_1_n_7 ),
        .Q(bitIndex_reg[16]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[16]_i_1 
       (.CI(\bitIndex_reg[12]_i_1_n_0 ),
        .CO({\bitIndex_reg[16]_i_1_n_0 ,\bitIndex_reg[16]_i_1_n_1 ,\bitIndex_reg[16]_i_1_n_2 ,\bitIndex_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[16]_i_1_n_4 ,\bitIndex_reg[16]_i_1_n_5 ,\bitIndex_reg[16]_i_1_n_6 ,\bitIndex_reg[16]_i_1_n_7 }),
        .S(bitIndex_reg[19:16]));
  FDRE \bitIndex_reg[17] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[16]_i_1_n_6 ),
        .Q(bitIndex_reg[17]),
        .R(READY));
  FDRE \bitIndex_reg[18] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[16]_i_1_n_5 ),
        .Q(bitIndex_reg[18]),
        .R(READY));
  FDRE \bitIndex_reg[19] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[16]_i_1_n_4 ),
        .Q(bitIndex_reg[19]),
        .R(READY));
  FDRE \bitIndex_reg[1] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[0]_i_1_n_6 ),
        .Q(bitIndex_reg[1]),
        .R(READY));
  FDRE \bitIndex_reg[20] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[20]_i_1_n_7 ),
        .Q(bitIndex_reg[20]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[20]_i_1 
       (.CI(\bitIndex_reg[16]_i_1_n_0 ),
        .CO({\bitIndex_reg[20]_i_1_n_0 ,\bitIndex_reg[20]_i_1_n_1 ,\bitIndex_reg[20]_i_1_n_2 ,\bitIndex_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[20]_i_1_n_4 ,\bitIndex_reg[20]_i_1_n_5 ,\bitIndex_reg[20]_i_1_n_6 ,\bitIndex_reg[20]_i_1_n_7 }),
        .S(bitIndex_reg[23:20]));
  FDRE \bitIndex_reg[21] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[20]_i_1_n_6 ),
        .Q(bitIndex_reg[21]),
        .R(READY));
  FDRE \bitIndex_reg[22] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[20]_i_1_n_5 ),
        .Q(bitIndex_reg[22]),
        .R(READY));
  FDRE \bitIndex_reg[23] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[20]_i_1_n_4 ),
        .Q(bitIndex_reg[23]),
        .R(READY));
  FDRE \bitIndex_reg[24] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[24]_i_1_n_7 ),
        .Q(bitIndex_reg[24]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[24]_i_1 
       (.CI(\bitIndex_reg[20]_i_1_n_0 ),
        .CO({\bitIndex_reg[24]_i_1_n_0 ,\bitIndex_reg[24]_i_1_n_1 ,\bitIndex_reg[24]_i_1_n_2 ,\bitIndex_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[24]_i_1_n_4 ,\bitIndex_reg[24]_i_1_n_5 ,\bitIndex_reg[24]_i_1_n_6 ,\bitIndex_reg[24]_i_1_n_7 }),
        .S(bitIndex_reg[27:24]));
  FDRE \bitIndex_reg[25] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[24]_i_1_n_6 ),
        .Q(bitIndex_reg[25]),
        .R(READY));
  FDRE \bitIndex_reg[26] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[24]_i_1_n_5 ),
        .Q(bitIndex_reg[26]),
        .R(READY));
  FDRE \bitIndex_reg[27] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[24]_i_1_n_4 ),
        .Q(bitIndex_reg[27]),
        .R(READY));
  FDRE \bitIndex_reg[28] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[28]_i_1_n_7 ),
        .Q(bitIndex_reg[28]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[28]_i_1 
       (.CI(\bitIndex_reg[24]_i_1_n_0 ),
        .CO({\NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED [3:2],\bitIndex_reg[28]_i_1_n_2 ,\bitIndex_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED [3],\bitIndex_reg[28]_i_1_n_5 ,\bitIndex_reg[28]_i_1_n_6 ,\bitIndex_reg[28]_i_1_n_7 }),
        .S({1'b0,bitIndex_reg[30:28]}));
  FDRE \bitIndex_reg[29] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[28]_i_1_n_6 ),
        .Q(bitIndex_reg[29]),
        .R(READY));
  FDRE \bitIndex_reg[2] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[0]_i_1_n_5 ),
        .Q(bitIndex_reg[2]),
        .R(READY));
  FDRE \bitIndex_reg[30] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[28]_i_1_n_5 ),
        .Q(bitIndex_reg[30]),
        .R(READY));
  FDRE \bitIndex_reg[3] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[0]_i_1_n_4 ),
        .Q(bitIndex_reg[3]),
        .R(READY));
  FDRE \bitIndex_reg[4] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[4]_i_1_n_7 ),
        .Q(bitIndex_reg[4]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[4]_i_1 
       (.CI(\bitIndex_reg[0]_i_1_n_0 ),
        .CO({\bitIndex_reg[4]_i_1_n_0 ,\bitIndex_reg[4]_i_1_n_1 ,\bitIndex_reg[4]_i_1_n_2 ,\bitIndex_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[4]_i_1_n_4 ,\bitIndex_reg[4]_i_1_n_5 ,\bitIndex_reg[4]_i_1_n_6 ,\bitIndex_reg[4]_i_1_n_7 }),
        .S(bitIndex_reg[7:4]));
  FDRE \bitIndex_reg[5] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[4]_i_1_n_6 ),
        .Q(bitIndex_reg[5]),
        .R(READY));
  FDRE \bitIndex_reg[6] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[4]_i_1_n_5 ),
        .Q(bitIndex_reg[6]),
        .R(READY));
  FDRE \bitIndex_reg[7] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[4]_i_1_n_4 ),
        .Q(bitIndex_reg[7]),
        .R(READY));
  FDRE \bitIndex_reg[8] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[8]_i_1_n_7 ),
        .Q(bitIndex_reg[8]),
        .R(READY));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitIndex_reg[8]_i_1 
       (.CI(\bitIndex_reg[4]_i_1_n_0 ),
        .CO({\bitIndex_reg[8]_i_1_n_0 ,\bitIndex_reg[8]_i_1_n_1 ,\bitIndex_reg[8]_i_1_n_2 ,\bitIndex_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitIndex_reg[8]_i_1_n_4 ,\bitIndex_reg[8]_i_1_n_5 ,\bitIndex_reg[8]_i_1_n_6 ,\bitIndex_reg[8]_i_1_n_7 }),
        .S(bitIndex_reg[11:8]));
  FDRE \bitIndex_reg[9] 
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(\bitIndex_reg[8]_i_1_n_6 ),
        .Q(bitIndex_reg[9]),
        .R(READY));
  LUT3 #(
    .INIT(8'hAB)) 
    \bitTmr[0]_i_1 
       (.I0(eqOp__12),
        .I1(txState[1]),
        .I2(txState[0]),
        .O(bitTmr));
  LUT1 #(
    .INIT(2'h1)) 
    \bitTmr[0]_i_3 
       (.I0(bitTmr_reg[0]),
        .O(\bitTmr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[0]_i_2_n_7 ),
        .Q(bitTmr_reg[0]),
        .R(bitTmr));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitTmr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\bitTmr_reg[0]_i_2_n_0 ,\bitTmr_reg[0]_i_2_n_1 ,\bitTmr_reg[0]_i_2_n_2 ,\bitTmr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\bitTmr_reg[0]_i_2_n_4 ,\bitTmr_reg[0]_i_2_n_5 ,\bitTmr_reg[0]_i_2_n_6 ,\bitTmr_reg[0]_i_2_n_7 }),
        .S({bitTmr_reg[3:1],\bitTmr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[8]_i_1_n_5 ),
        .Q(bitTmr_reg[10]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[8]_i_1_n_4 ),
        .Q(bitTmr_reg[11]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[12]_i_1_n_7 ),
        .Q(bitTmr_reg[12]),
        .R(bitTmr));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitTmr_reg[12]_i_1 
       (.CI(\bitTmr_reg[8]_i_1_n_0 ),
        .CO({\NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED [3:1],\bitTmr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED [3:2],\bitTmr_reg[12]_i_1_n_6 ,\bitTmr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,bitTmr_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[12]_i_1_n_6 ),
        .Q(bitTmr_reg[13]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[0]_i_2_n_6 ),
        .Q(bitTmr_reg[1]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[0]_i_2_n_5 ),
        .Q(bitTmr_reg[2]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[0]_i_2_n_4 ),
        .Q(bitTmr_reg[3]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[4]_i_1_n_7 ),
        .Q(bitTmr_reg[4]),
        .R(bitTmr));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitTmr_reg[4]_i_1 
       (.CI(\bitTmr_reg[0]_i_2_n_0 ),
        .CO({\bitTmr_reg[4]_i_1_n_0 ,\bitTmr_reg[4]_i_1_n_1 ,\bitTmr_reg[4]_i_1_n_2 ,\bitTmr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitTmr_reg[4]_i_1_n_4 ,\bitTmr_reg[4]_i_1_n_5 ,\bitTmr_reg[4]_i_1_n_6 ,\bitTmr_reg[4]_i_1_n_7 }),
        .S(bitTmr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[4]_i_1_n_6 ),
        .Q(bitTmr_reg[5]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[4]_i_1_n_5 ),
        .Q(bitTmr_reg[6]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[4]_i_1_n_4 ),
        .Q(bitTmr_reg[7]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[8]_i_1_n_7 ),
        .Q(bitTmr_reg[8]),
        .R(bitTmr));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \bitTmr_reg[8]_i_1 
       (.CI(\bitTmr_reg[4]_i_1_n_0 ),
        .CO({\bitTmr_reg[8]_i_1_n_0 ,\bitTmr_reg[8]_i_1_n_1 ,\bitTmr_reg[8]_i_1_n_2 ,\bitTmr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bitTmr_reg[8]_i_1_n_4 ,\bitTmr_reg[8]_i_1_n_5 ,\bitTmr_reg[8]_i_1_n_6 ,\bitTmr_reg[8]_i_1_n_7 }),
        .S(bitTmr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitTmr_reg[8]_i_1_n_6 ),
        .Q(bitTmr_reg[9]),
        .R(bitTmr));
  LUT2 #(
    .INIT(4'h1)) 
    txBit_i_1
       (.I0(txState[0]),
        .I1(txState[1]),
        .O(READY));
  LUT2 #(
    .INIT(4'h2)) 
    txBit_i_2
       (.I0(txState[0]),
        .I1(txState[1]),
        .O(txBit_i_2_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    txBit_i_3
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[3]),
        .I2(txBit_i_4_n_0),
        .I3(bitIndex_reg[2]),
        .I4(txBit_i_5_n_0),
        .O(txBit_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    txBit_i_4
       (.I0(txData[7]),
        .I1(txData[6]),
        .I2(bitIndex_reg[1]),
        .I3(txData[5]),
        .I4(bitIndex_reg[0]),
        .I5(txData[4]),
        .O(txBit_i_4_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    txBit_i_5
       (.I0(txData[3]),
        .I1(txData[2]),
        .I2(bitIndex_reg[1]),
        .I3(bitIndex_reg[0]),
        .I4(txData[1]),
        .O(txBit_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    txBit_reg
       (.C(CLK),
        .CE(txBit_i_2_n_0),
        .D(txBit_i_3_n_0),
        .Q(UART_TXD),
        .S(READY));
  FDRE \txData_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(txData[1]),
        .R(1'b0));
  FDRE \txData_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(txData[2]),
        .R(1'b0));
  FDRE \txData_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(txData[3]),
        .R(1'b0));
  FDRE \txData_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(txData[4]),
        .R(1'b0));
  FDRE \txData_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(txData[5]),
        .R(1'b0));
  FDRE \txData_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(txData[6]),
        .R(1'b0));
  FDRE \txData_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(txData[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module design_1_GPIO_demo_0_0_debouncer
   (btnDeBnc,
    \btnReg_reg[0] ,
    SSEG_AN,
    CLK,
    BTN,
    Q,
    uartState);
  output [4:0]btnDeBnc;
  output \btnReg_reg[0] ;
  output [3:0]SSEG_AN;
  input CLK;
  input [4:0]BTN;
  input [3:0]Q;
  input [0:0]uartState;

  wire [4:0]BTN;
  wire CLK;
  wire \FSM_sequential_uartState[2]_i_4_n_0 ;
  wire [3:0]Q;
  wire [3:0]SSEG_AN;
  wire [4:0]btnDeBnc;
  wire \btnReg_reg[0] ;
  wire eqOp;
  wire \sig_cntrs_ary[0][0]_i_1_n_0 ;
  wire \sig_cntrs_ary[0][0]_i_3_n_0 ;
  wire \sig_cntrs_ary[1][0]_i_1_n_0 ;
  wire \sig_cntrs_ary[1][0]_i_3_n_0 ;
  wire \sig_cntrs_ary[2][0]_i_1_n_0 ;
  wire \sig_cntrs_ary[2][0]_i_3_n_0 ;
  wire \sig_cntrs_ary[3][0]_i_1_n_0 ;
  wire \sig_cntrs_ary[3][0]_i_3_n_0 ;
  wire \sig_cntrs_ary[4][0]_i_1_n_0 ;
  wire \sig_cntrs_ary[4][0]_i_3_n_0 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_0 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_1 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_2 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_3 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_4 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_5 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_6 ;
  wire \sig_cntrs_ary_reg[0][0]_i_2_n_7 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[0][12]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[0][4]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[0][8]_i_1_n_7 ;
  wire [15:0]\sig_cntrs_ary_reg[0]_0 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_0 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_1 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_2 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_3 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_4 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_5 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_6 ;
  wire \sig_cntrs_ary_reg[1][0]_i_2_n_7 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[1][12]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[1][4]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[1][8]_i_1_n_7 ;
  wire [15:0]\sig_cntrs_ary_reg[1]_1 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_0 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_1 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_2 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_3 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_4 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_5 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_6 ;
  wire \sig_cntrs_ary_reg[2][0]_i_2_n_7 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[2][12]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[2][4]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[2][8]_i_1_n_7 ;
  wire [15:0]\sig_cntrs_ary_reg[2]_2 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_0 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_1 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_2 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_3 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_4 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_5 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_6 ;
  wire \sig_cntrs_ary_reg[3][0]_i_2_n_7 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[3][12]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[3][4]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[3][8]_i_1_n_7 ;
  wire [15:0]\sig_cntrs_ary_reg[3]_3 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_0 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_1 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_2 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_3 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_4 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_5 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_6 ;
  wire \sig_cntrs_ary_reg[4][0]_i_2_n_7 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[4][12]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[4][4]_i_1_n_7 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_0 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_1 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_2 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_3 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_4 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_5 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_6 ;
  wire \sig_cntrs_ary_reg[4][8]_i_1_n_7 ;
  wire [15:0]\sig_cntrs_ary_reg[4]_4 ;
  wire \sig_out_reg[0]_i_1_n_0 ;
  wire \sig_out_reg[0]_i_2_n_0 ;
  wire \sig_out_reg[0]_i_3_n_0 ;
  wire \sig_out_reg[0]_i_4_n_0 ;
  wire \sig_out_reg[0]_i_5_n_0 ;
  wire \sig_out_reg[1]_i_1_n_0 ;
  wire \sig_out_reg[1]_i_2_n_0 ;
  wire \sig_out_reg[1]_i_3_n_0 ;
  wire \sig_out_reg[1]_i_4_n_0 ;
  wire \sig_out_reg[1]_i_5_n_0 ;
  wire \sig_out_reg[2]_i_1_n_0 ;
  wire \sig_out_reg[2]_i_2_n_0 ;
  wire \sig_out_reg[2]_i_3_n_0 ;
  wire \sig_out_reg[2]_i_4_n_0 ;
  wire \sig_out_reg[2]_i_5_n_0 ;
  wire \sig_out_reg[3]_i_1_n_0 ;
  wire \sig_out_reg[3]_i_2_n_0 ;
  wire \sig_out_reg[3]_i_3_n_0 ;
  wire \sig_out_reg[3]_i_4_n_0 ;
  wire \sig_out_reg[3]_i_5_n_0 ;
  wire \sig_out_reg[4]_i_1_n_0 ;
  wire \sig_out_reg[4]_i_3_n_0 ;
  wire \sig_out_reg[4]_i_4_n_0 ;
  wire \sig_out_reg[4]_i_5_n_0 ;
  wire [0:0]uartState;
  wire [3:3]\NLW_sig_cntrs_ary_reg[0][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_cntrs_ary_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_cntrs_ary_reg[2][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_cntrs_ary_reg[3][12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_cntrs_ary_reg[4][12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000BAFFBABA)) 
    \FSM_sequential_uartState[2]_i_3 
       (.I0(\FSM_sequential_uartState[2]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(btnDeBnc[0]),
        .I3(Q[3]),
        .I4(btnDeBnc[3]),
        .I5(uartState),
        .O(\btnReg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_sequential_uartState[2]_i_4 
       (.I0(Q[2]),
        .I1(btnDeBnc[2]),
        .I2(Q[1]),
        .I3(btnDeBnc[1]),
        .O(\FSM_sequential_uartState[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SSEG_AN[0]_INST_0 
       (.I0(BTN[4]),
        .I1(btnDeBnc[0]),
        .O(SSEG_AN[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SSEG_AN[1]_INST_0 
       (.I0(BTN[4]),
        .I1(btnDeBnc[1]),
        .O(SSEG_AN[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SSEG_AN[2]_INST_0 
       (.I0(BTN[4]),
        .I1(btnDeBnc[2]),
        .O(SSEG_AN[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SSEG_AN[3]_INST_0 
       (.I0(BTN[4]),
        .I1(btnDeBnc[3]),
        .O(SSEG_AN[3]));
  LUT3 #(
    .INIT(8'hEB)) 
    \sig_cntrs_ary[0][0]_i_1 
       (.I0(\sig_out_reg[0]_i_2_n_0 ),
        .I1(btnDeBnc[0]),
        .I2(BTN[0]),
        .O(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_cntrs_ary[0][0]_i_3 
       (.I0(\sig_cntrs_ary_reg[0]_0 [0]),
        .O(\sig_cntrs_ary[0][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \sig_cntrs_ary[1][0]_i_1 
       (.I0(\sig_out_reg[1]_i_2_n_0 ),
        .I1(btnDeBnc[1]),
        .I2(BTN[1]),
        .O(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_cntrs_ary[1][0]_i_3 
       (.I0(\sig_cntrs_ary_reg[1]_1 [0]),
        .O(\sig_cntrs_ary[1][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \sig_cntrs_ary[2][0]_i_1 
       (.I0(\sig_out_reg[2]_i_2_n_0 ),
        .I1(btnDeBnc[2]),
        .I2(BTN[2]),
        .O(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_cntrs_ary[2][0]_i_3 
       (.I0(\sig_cntrs_ary_reg[2]_2 [0]),
        .O(\sig_cntrs_ary[2][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \sig_cntrs_ary[3][0]_i_1 
       (.I0(\sig_out_reg[3]_i_2_n_0 ),
        .I1(btnDeBnc[3]),
        .I2(BTN[3]),
        .O(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_cntrs_ary[3][0]_i_3 
       (.I0(\sig_cntrs_ary_reg[3]_3 [0]),
        .O(\sig_cntrs_ary[3][0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \sig_cntrs_ary[4][0]_i_1 
       (.I0(eqOp),
        .I1(btnDeBnc[4]),
        .I2(BTN[4]),
        .O(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_cntrs_ary[4][0]_i_3 
       (.I0(\sig_cntrs_ary_reg[4]_4 [0]),
        .O(\sig_cntrs_ary[4][0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][0]_i_2_n_7 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [0]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[0][0]_i_2 
       (.CI(1'b0),
        .CO({\sig_cntrs_ary_reg[0][0]_i_2_n_0 ,\sig_cntrs_ary_reg[0][0]_i_2_n_1 ,\sig_cntrs_ary_reg[0][0]_i_2_n_2 ,\sig_cntrs_ary_reg[0][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sig_cntrs_ary_reg[0][0]_i_2_n_4 ,\sig_cntrs_ary_reg[0][0]_i_2_n_5 ,\sig_cntrs_ary_reg[0][0]_i_2_n_6 ,\sig_cntrs_ary_reg[0][0]_i_2_n_7 }),
        .S({\sig_cntrs_ary_reg[0]_0 [3:1],\sig_cntrs_ary[0][0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][8]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [10]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][8]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [11]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][12]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [12]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[0][12]_i_1 
       (.CI(\sig_cntrs_ary_reg[0][8]_i_1_n_0 ),
        .CO({\NLW_sig_cntrs_ary_reg[0][12]_i_1_CO_UNCONNECTED [3],\sig_cntrs_ary_reg[0][12]_i_1_n_1 ,\sig_cntrs_ary_reg[0][12]_i_1_n_2 ,\sig_cntrs_ary_reg[0][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[0][12]_i_1_n_4 ,\sig_cntrs_ary_reg[0][12]_i_1_n_5 ,\sig_cntrs_ary_reg[0][12]_i_1_n_6 ,\sig_cntrs_ary_reg[0][12]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[0]_0 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][12]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [13]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][12]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [14]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][12]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [15]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][0]_i_2_n_6 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [1]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][0]_i_2_n_5 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [2]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][0]_i_2_n_4 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [3]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][4]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [4]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[0][4]_i_1 
       (.CI(\sig_cntrs_ary_reg[0][0]_i_2_n_0 ),
        .CO({\sig_cntrs_ary_reg[0][4]_i_1_n_0 ,\sig_cntrs_ary_reg[0][4]_i_1_n_1 ,\sig_cntrs_ary_reg[0][4]_i_1_n_2 ,\sig_cntrs_ary_reg[0][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[0][4]_i_1_n_4 ,\sig_cntrs_ary_reg[0][4]_i_1_n_5 ,\sig_cntrs_ary_reg[0][4]_i_1_n_6 ,\sig_cntrs_ary_reg[0][4]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[0]_0 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][4]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [5]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][4]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [6]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][4]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [7]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][8]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [8]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[0][8]_i_1 
       (.CI(\sig_cntrs_ary_reg[0][4]_i_1_n_0 ),
        .CO({\sig_cntrs_ary_reg[0][8]_i_1_n_0 ,\sig_cntrs_ary_reg[0][8]_i_1_n_1 ,\sig_cntrs_ary_reg[0][8]_i_1_n_2 ,\sig_cntrs_ary_reg[0][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[0][8]_i_1_n_4 ,\sig_cntrs_ary_reg[0][8]_i_1_n_5 ,\sig_cntrs_ary_reg[0][8]_i_1_n_6 ,\sig_cntrs_ary_reg[0][8]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[0]_0 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[0][9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[0][8]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[0]_0 [9]),
        .R(\sig_cntrs_ary[0][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][0]_i_2_n_7 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [0]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[1][0]_i_2 
       (.CI(1'b0),
        .CO({\sig_cntrs_ary_reg[1][0]_i_2_n_0 ,\sig_cntrs_ary_reg[1][0]_i_2_n_1 ,\sig_cntrs_ary_reg[1][0]_i_2_n_2 ,\sig_cntrs_ary_reg[1][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sig_cntrs_ary_reg[1][0]_i_2_n_4 ,\sig_cntrs_ary_reg[1][0]_i_2_n_5 ,\sig_cntrs_ary_reg[1][0]_i_2_n_6 ,\sig_cntrs_ary_reg[1][0]_i_2_n_7 }),
        .S({\sig_cntrs_ary_reg[1]_1 [3:1],\sig_cntrs_ary[1][0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][8]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [10]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][8]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [11]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][12]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [12]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[1][12]_i_1 
       (.CI(\sig_cntrs_ary_reg[1][8]_i_1_n_0 ),
        .CO({\NLW_sig_cntrs_ary_reg[1][12]_i_1_CO_UNCONNECTED [3],\sig_cntrs_ary_reg[1][12]_i_1_n_1 ,\sig_cntrs_ary_reg[1][12]_i_1_n_2 ,\sig_cntrs_ary_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[1][12]_i_1_n_4 ,\sig_cntrs_ary_reg[1][12]_i_1_n_5 ,\sig_cntrs_ary_reg[1][12]_i_1_n_6 ,\sig_cntrs_ary_reg[1][12]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[1]_1 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][12]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [13]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][12]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [14]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][12]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [15]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][0]_i_2_n_6 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [1]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][0]_i_2_n_5 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [2]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][0]_i_2_n_4 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [3]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][4]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [4]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[1][4]_i_1 
       (.CI(\sig_cntrs_ary_reg[1][0]_i_2_n_0 ),
        .CO({\sig_cntrs_ary_reg[1][4]_i_1_n_0 ,\sig_cntrs_ary_reg[1][4]_i_1_n_1 ,\sig_cntrs_ary_reg[1][4]_i_1_n_2 ,\sig_cntrs_ary_reg[1][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[1][4]_i_1_n_4 ,\sig_cntrs_ary_reg[1][4]_i_1_n_5 ,\sig_cntrs_ary_reg[1][4]_i_1_n_6 ,\sig_cntrs_ary_reg[1][4]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[1]_1 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][4]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [5]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][4]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [6]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][4]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [7]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][8]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [8]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[1][8]_i_1 
       (.CI(\sig_cntrs_ary_reg[1][4]_i_1_n_0 ),
        .CO({\sig_cntrs_ary_reg[1][8]_i_1_n_0 ,\sig_cntrs_ary_reg[1][8]_i_1_n_1 ,\sig_cntrs_ary_reg[1][8]_i_1_n_2 ,\sig_cntrs_ary_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[1][8]_i_1_n_4 ,\sig_cntrs_ary_reg[1][8]_i_1_n_5 ,\sig_cntrs_ary_reg[1][8]_i_1_n_6 ,\sig_cntrs_ary_reg[1][8]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[1]_1 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[1][9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[1][8]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[1]_1 [9]),
        .R(\sig_cntrs_ary[1][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][0]_i_2_n_7 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [0]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[2][0]_i_2 
       (.CI(1'b0),
        .CO({\sig_cntrs_ary_reg[2][0]_i_2_n_0 ,\sig_cntrs_ary_reg[2][0]_i_2_n_1 ,\sig_cntrs_ary_reg[2][0]_i_2_n_2 ,\sig_cntrs_ary_reg[2][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sig_cntrs_ary_reg[2][0]_i_2_n_4 ,\sig_cntrs_ary_reg[2][0]_i_2_n_5 ,\sig_cntrs_ary_reg[2][0]_i_2_n_6 ,\sig_cntrs_ary_reg[2][0]_i_2_n_7 }),
        .S({\sig_cntrs_ary_reg[2]_2 [3:1],\sig_cntrs_ary[2][0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][8]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [10]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][8]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [11]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][12]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [12]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[2][12]_i_1 
       (.CI(\sig_cntrs_ary_reg[2][8]_i_1_n_0 ),
        .CO({\NLW_sig_cntrs_ary_reg[2][12]_i_1_CO_UNCONNECTED [3],\sig_cntrs_ary_reg[2][12]_i_1_n_1 ,\sig_cntrs_ary_reg[2][12]_i_1_n_2 ,\sig_cntrs_ary_reg[2][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[2][12]_i_1_n_4 ,\sig_cntrs_ary_reg[2][12]_i_1_n_5 ,\sig_cntrs_ary_reg[2][12]_i_1_n_6 ,\sig_cntrs_ary_reg[2][12]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[2]_2 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][12]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [13]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][12]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [14]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][12]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [15]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][0]_i_2_n_6 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [1]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][0]_i_2_n_5 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [2]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][0]_i_2_n_4 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [3]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][4]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [4]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[2][4]_i_1 
       (.CI(\sig_cntrs_ary_reg[2][0]_i_2_n_0 ),
        .CO({\sig_cntrs_ary_reg[2][4]_i_1_n_0 ,\sig_cntrs_ary_reg[2][4]_i_1_n_1 ,\sig_cntrs_ary_reg[2][4]_i_1_n_2 ,\sig_cntrs_ary_reg[2][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[2][4]_i_1_n_4 ,\sig_cntrs_ary_reg[2][4]_i_1_n_5 ,\sig_cntrs_ary_reg[2][4]_i_1_n_6 ,\sig_cntrs_ary_reg[2][4]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[2]_2 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][4]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [5]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][4]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [6]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][4]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [7]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][8]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [8]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[2][8]_i_1 
       (.CI(\sig_cntrs_ary_reg[2][4]_i_1_n_0 ),
        .CO({\sig_cntrs_ary_reg[2][8]_i_1_n_0 ,\sig_cntrs_ary_reg[2][8]_i_1_n_1 ,\sig_cntrs_ary_reg[2][8]_i_1_n_2 ,\sig_cntrs_ary_reg[2][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[2][8]_i_1_n_4 ,\sig_cntrs_ary_reg[2][8]_i_1_n_5 ,\sig_cntrs_ary_reg[2][8]_i_1_n_6 ,\sig_cntrs_ary_reg[2][8]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[2]_2 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[2][9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[2][8]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[2]_2 [9]),
        .R(\sig_cntrs_ary[2][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][0]_i_2_n_7 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [0]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[3][0]_i_2 
       (.CI(1'b0),
        .CO({\sig_cntrs_ary_reg[3][0]_i_2_n_0 ,\sig_cntrs_ary_reg[3][0]_i_2_n_1 ,\sig_cntrs_ary_reg[3][0]_i_2_n_2 ,\sig_cntrs_ary_reg[3][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sig_cntrs_ary_reg[3][0]_i_2_n_4 ,\sig_cntrs_ary_reg[3][0]_i_2_n_5 ,\sig_cntrs_ary_reg[3][0]_i_2_n_6 ,\sig_cntrs_ary_reg[3][0]_i_2_n_7 }),
        .S({\sig_cntrs_ary_reg[3]_3 [3:1],\sig_cntrs_ary[3][0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][8]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [10]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][8]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [11]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][12]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [12]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[3][12]_i_1 
       (.CI(\sig_cntrs_ary_reg[3][8]_i_1_n_0 ),
        .CO({\NLW_sig_cntrs_ary_reg[3][12]_i_1_CO_UNCONNECTED [3],\sig_cntrs_ary_reg[3][12]_i_1_n_1 ,\sig_cntrs_ary_reg[3][12]_i_1_n_2 ,\sig_cntrs_ary_reg[3][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[3][12]_i_1_n_4 ,\sig_cntrs_ary_reg[3][12]_i_1_n_5 ,\sig_cntrs_ary_reg[3][12]_i_1_n_6 ,\sig_cntrs_ary_reg[3][12]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[3]_3 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][12]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [13]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][12]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [14]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][12]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [15]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][0]_i_2_n_6 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [1]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][0]_i_2_n_5 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [2]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][0]_i_2_n_4 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [3]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][4]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [4]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[3][4]_i_1 
       (.CI(\sig_cntrs_ary_reg[3][0]_i_2_n_0 ),
        .CO({\sig_cntrs_ary_reg[3][4]_i_1_n_0 ,\sig_cntrs_ary_reg[3][4]_i_1_n_1 ,\sig_cntrs_ary_reg[3][4]_i_1_n_2 ,\sig_cntrs_ary_reg[3][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[3][4]_i_1_n_4 ,\sig_cntrs_ary_reg[3][4]_i_1_n_5 ,\sig_cntrs_ary_reg[3][4]_i_1_n_6 ,\sig_cntrs_ary_reg[3][4]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[3]_3 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][4]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [5]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][4]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [6]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][4]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [7]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][8]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [8]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[3][8]_i_1 
       (.CI(\sig_cntrs_ary_reg[3][4]_i_1_n_0 ),
        .CO({\sig_cntrs_ary_reg[3][8]_i_1_n_0 ,\sig_cntrs_ary_reg[3][8]_i_1_n_1 ,\sig_cntrs_ary_reg[3][8]_i_1_n_2 ,\sig_cntrs_ary_reg[3][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[3][8]_i_1_n_4 ,\sig_cntrs_ary_reg[3][8]_i_1_n_5 ,\sig_cntrs_ary_reg[3][8]_i_1_n_6 ,\sig_cntrs_ary_reg[3][8]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[3]_3 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[3][9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[3][8]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[3]_3 [9]),
        .R(\sig_cntrs_ary[3][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][0]_i_2_n_7 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [0]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[4][0]_i_2 
       (.CI(1'b0),
        .CO({\sig_cntrs_ary_reg[4][0]_i_2_n_0 ,\sig_cntrs_ary_reg[4][0]_i_2_n_1 ,\sig_cntrs_ary_reg[4][0]_i_2_n_2 ,\sig_cntrs_ary_reg[4][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sig_cntrs_ary_reg[4][0]_i_2_n_4 ,\sig_cntrs_ary_reg[4][0]_i_2_n_5 ,\sig_cntrs_ary_reg[4][0]_i_2_n_6 ,\sig_cntrs_ary_reg[4][0]_i_2_n_7 }),
        .S({\sig_cntrs_ary_reg[4]_4 [3:1],\sig_cntrs_ary[4][0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][8]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [10]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][8]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [11]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][12]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [12]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[4][12]_i_1 
       (.CI(\sig_cntrs_ary_reg[4][8]_i_1_n_0 ),
        .CO({\NLW_sig_cntrs_ary_reg[4][12]_i_1_CO_UNCONNECTED [3],\sig_cntrs_ary_reg[4][12]_i_1_n_1 ,\sig_cntrs_ary_reg[4][12]_i_1_n_2 ,\sig_cntrs_ary_reg[4][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[4][12]_i_1_n_4 ,\sig_cntrs_ary_reg[4][12]_i_1_n_5 ,\sig_cntrs_ary_reg[4][12]_i_1_n_6 ,\sig_cntrs_ary_reg[4][12]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[4]_4 [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][12]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [13]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][12]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [14]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][12]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [15]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][0]_i_2_n_6 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [1]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][0]_i_2_n_5 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [2]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][0]_i_2_n_4 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [3]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][4]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [4]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[4][4]_i_1 
       (.CI(\sig_cntrs_ary_reg[4][0]_i_2_n_0 ),
        .CO({\sig_cntrs_ary_reg[4][4]_i_1_n_0 ,\sig_cntrs_ary_reg[4][4]_i_1_n_1 ,\sig_cntrs_ary_reg[4][4]_i_1_n_2 ,\sig_cntrs_ary_reg[4][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[4][4]_i_1_n_4 ,\sig_cntrs_ary_reg[4][4]_i_1_n_5 ,\sig_cntrs_ary_reg[4][4]_i_1_n_6 ,\sig_cntrs_ary_reg[4][4]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[4]_4 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][4]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [5]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][4]_i_1_n_5 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [6]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][4]_i_1_n_4 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [7]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][8]_i_1_n_7 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [8]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sig_cntrs_ary_reg[4][8]_i_1 
       (.CI(\sig_cntrs_ary_reg[4][4]_i_1_n_0 ),
        .CO({\sig_cntrs_ary_reg[4][8]_i_1_n_0 ,\sig_cntrs_ary_reg[4][8]_i_1_n_1 ,\sig_cntrs_ary_reg[4][8]_i_1_n_2 ,\sig_cntrs_ary_reg[4][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_cntrs_ary_reg[4][8]_i_1_n_4 ,\sig_cntrs_ary_reg[4][8]_i_1_n_5 ,\sig_cntrs_ary_reg[4][8]_i_1_n_6 ,\sig_cntrs_ary_reg[4][8]_i_1_n_7 }),
        .S(\sig_cntrs_ary_reg[4]_4 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_cntrs_ary_reg[4][9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_cntrs_ary_reg[4][8]_i_1_n_6 ),
        .Q(\sig_cntrs_ary_reg[4]_4 [9]),
        .R(\sig_cntrs_ary[4][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_out_reg[0]_i_1 
       (.I0(\sig_out_reg[0]_i_2_n_0 ),
        .I1(btnDeBnc[0]),
        .O(\sig_out_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sig_out_reg[0]_i_2 
       (.I0(\sig_out_reg[0]_i_3_n_0 ),
        .I1(\sig_cntrs_ary_reg[0]_0 [13]),
        .I2(\sig_cntrs_ary_reg[0]_0 [12]),
        .I3(\sig_cntrs_ary_reg[0]_0 [14]),
        .I4(\sig_cntrs_ary_reg[0]_0 [15]),
        .I5(\sig_out_reg[0]_i_4_n_0 ),
        .O(\sig_out_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_out_reg[0]_i_3 
       (.I0(\sig_cntrs_ary_reg[0]_0 [9]),
        .I1(\sig_cntrs_ary_reg[0]_0 [8]),
        .I2(\sig_cntrs_ary_reg[0]_0 [11]),
        .I3(\sig_cntrs_ary_reg[0]_0 [10]),
        .O(\sig_out_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_out_reg[0]_i_4 
       (.I0(\sig_cntrs_ary_reg[0]_0 [2]),
        .I1(\sig_cntrs_ary_reg[0]_0 [3]),
        .I2(\sig_cntrs_ary_reg[0]_0 [0]),
        .I3(\sig_cntrs_ary_reg[0]_0 [1]),
        .I4(\sig_out_reg[0]_i_5_n_0 ),
        .O(\sig_out_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_out_reg[0]_i_5 
       (.I0(\sig_cntrs_ary_reg[0]_0 [5]),
        .I1(\sig_cntrs_ary_reg[0]_0 [4]),
        .I2(\sig_cntrs_ary_reg[0]_0 [7]),
        .I3(\sig_cntrs_ary_reg[0]_0 [6]),
        .O(\sig_out_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_out_reg[1]_i_1 
       (.I0(\sig_out_reg[1]_i_2_n_0 ),
        .I1(btnDeBnc[1]),
        .O(\sig_out_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sig_out_reg[1]_i_2 
       (.I0(\sig_out_reg[1]_i_3_n_0 ),
        .I1(\sig_cntrs_ary_reg[1]_1 [13]),
        .I2(\sig_cntrs_ary_reg[1]_1 [12]),
        .I3(\sig_cntrs_ary_reg[1]_1 [14]),
        .I4(\sig_cntrs_ary_reg[1]_1 [15]),
        .I5(\sig_out_reg[1]_i_4_n_0 ),
        .O(\sig_out_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_out_reg[1]_i_3 
       (.I0(\sig_cntrs_ary_reg[1]_1 [9]),
        .I1(\sig_cntrs_ary_reg[1]_1 [8]),
        .I2(\sig_cntrs_ary_reg[1]_1 [11]),
        .I3(\sig_cntrs_ary_reg[1]_1 [10]),
        .O(\sig_out_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_out_reg[1]_i_4 
       (.I0(\sig_cntrs_ary_reg[1]_1 [2]),
        .I1(\sig_cntrs_ary_reg[1]_1 [3]),
        .I2(\sig_cntrs_ary_reg[1]_1 [0]),
        .I3(\sig_cntrs_ary_reg[1]_1 [1]),
        .I4(\sig_out_reg[1]_i_5_n_0 ),
        .O(\sig_out_reg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_out_reg[1]_i_5 
       (.I0(\sig_cntrs_ary_reg[1]_1 [5]),
        .I1(\sig_cntrs_ary_reg[1]_1 [4]),
        .I2(\sig_cntrs_ary_reg[1]_1 [7]),
        .I3(\sig_cntrs_ary_reg[1]_1 [6]),
        .O(\sig_out_reg[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_out_reg[2]_i_1 
       (.I0(\sig_out_reg[2]_i_2_n_0 ),
        .I1(btnDeBnc[2]),
        .O(\sig_out_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sig_out_reg[2]_i_2 
       (.I0(\sig_out_reg[2]_i_3_n_0 ),
        .I1(\sig_cntrs_ary_reg[2]_2 [13]),
        .I2(\sig_cntrs_ary_reg[2]_2 [12]),
        .I3(\sig_cntrs_ary_reg[2]_2 [14]),
        .I4(\sig_cntrs_ary_reg[2]_2 [15]),
        .I5(\sig_out_reg[2]_i_4_n_0 ),
        .O(\sig_out_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_out_reg[2]_i_3 
       (.I0(\sig_cntrs_ary_reg[2]_2 [9]),
        .I1(\sig_cntrs_ary_reg[2]_2 [8]),
        .I2(\sig_cntrs_ary_reg[2]_2 [11]),
        .I3(\sig_cntrs_ary_reg[2]_2 [10]),
        .O(\sig_out_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_out_reg[2]_i_4 
       (.I0(\sig_cntrs_ary_reg[2]_2 [2]),
        .I1(\sig_cntrs_ary_reg[2]_2 [3]),
        .I2(\sig_cntrs_ary_reg[2]_2 [0]),
        .I3(\sig_cntrs_ary_reg[2]_2 [1]),
        .I4(\sig_out_reg[2]_i_5_n_0 ),
        .O(\sig_out_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_out_reg[2]_i_5 
       (.I0(\sig_cntrs_ary_reg[2]_2 [5]),
        .I1(\sig_cntrs_ary_reg[2]_2 [4]),
        .I2(\sig_cntrs_ary_reg[2]_2 [7]),
        .I3(\sig_cntrs_ary_reg[2]_2 [6]),
        .O(\sig_out_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sig_out_reg[3]_i_1 
       (.I0(\sig_out_reg[3]_i_2_n_0 ),
        .I1(btnDeBnc[3]),
        .O(\sig_out_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sig_out_reg[3]_i_2 
       (.I0(\sig_out_reg[3]_i_3_n_0 ),
        .I1(\sig_cntrs_ary_reg[3]_3 [13]),
        .I2(\sig_cntrs_ary_reg[3]_3 [12]),
        .I3(\sig_cntrs_ary_reg[3]_3 [14]),
        .I4(\sig_cntrs_ary_reg[3]_3 [15]),
        .I5(\sig_out_reg[3]_i_4_n_0 ),
        .O(\sig_out_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_out_reg[3]_i_3 
       (.I0(\sig_cntrs_ary_reg[3]_3 [9]),
        .I1(\sig_cntrs_ary_reg[3]_3 [8]),
        .I2(\sig_cntrs_ary_reg[3]_3 [11]),
        .I3(\sig_cntrs_ary_reg[3]_3 [10]),
        .O(\sig_out_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_out_reg[3]_i_4 
       (.I0(\sig_cntrs_ary_reg[3]_3 [2]),
        .I1(\sig_cntrs_ary_reg[3]_3 [3]),
        .I2(\sig_cntrs_ary_reg[3]_3 [0]),
        .I3(\sig_cntrs_ary_reg[3]_3 [1]),
        .I4(\sig_out_reg[3]_i_5_n_0 ),
        .O(\sig_out_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_out_reg[3]_i_5 
       (.I0(\sig_cntrs_ary_reg[3]_3 [5]),
        .I1(\sig_cntrs_ary_reg[3]_3 [4]),
        .I2(\sig_cntrs_ary_reg[3]_3 [7]),
        .I3(\sig_cntrs_ary_reg[3]_3 [6]),
        .O(\sig_out_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_out_reg[4]_i_1 
       (.I0(eqOp),
        .I1(btnDeBnc[4]),
        .O(\sig_out_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sig_out_reg[4]_i_2 
       (.I0(\sig_out_reg[4]_i_3_n_0 ),
        .I1(\sig_cntrs_ary_reg[4]_4 [13]),
        .I2(\sig_cntrs_ary_reg[4]_4 [12]),
        .I3(\sig_cntrs_ary_reg[4]_4 [14]),
        .I4(\sig_cntrs_ary_reg[4]_4 [15]),
        .I5(\sig_out_reg[4]_i_4_n_0 ),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sig_out_reg[4]_i_3 
       (.I0(\sig_cntrs_ary_reg[4]_4 [9]),
        .I1(\sig_cntrs_ary_reg[4]_4 [8]),
        .I2(\sig_cntrs_ary_reg[4]_4 [11]),
        .I3(\sig_cntrs_ary_reg[4]_4 [10]),
        .O(\sig_out_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sig_out_reg[4]_i_4 
       (.I0(\sig_cntrs_ary_reg[4]_4 [2]),
        .I1(\sig_cntrs_ary_reg[4]_4 [3]),
        .I2(\sig_cntrs_ary_reg[4]_4 [0]),
        .I3(\sig_cntrs_ary_reg[4]_4 [1]),
        .I4(\sig_out_reg[4]_i_5_n_0 ),
        .O(\sig_out_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sig_out_reg[4]_i_5 
       (.I0(\sig_cntrs_ary_reg[4]_4 [5]),
        .I1(\sig_cntrs_ary_reg[4]_4 [4]),
        .I2(\sig_cntrs_ary_reg[4]_4 [7]),
        .I3(\sig_cntrs_ary_reg[4]_4 [6]),
        .O(\sig_out_reg[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_out_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_out_reg[0]_i_1_n_0 ),
        .Q(btnDeBnc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_out_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_out_reg[1]_i_1_n_0 ),
        .Q(btnDeBnc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_out_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_out_reg[2]_i_1_n_0 ),
        .Q(btnDeBnc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_out_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_out_reg[3]_i_1_n_0 ),
        .Q(btnDeBnc[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_out_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sig_out_reg[4]_i_1_n_0 ),
        .Q(btnDeBnc[4]),
        .R(1'b0));
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
