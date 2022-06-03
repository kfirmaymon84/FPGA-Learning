// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  2 22:16:08 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/DSP_Calc/DSP_Calc/DSP_Calc.gen/sources_1/ip/dsp_div/dsp_div_sim_netlist.v
// Design      : dsp_div
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_div,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module dsp_div
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "65" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "11000000000000000000000000000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_div_dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NZu6uqe90zc/K63jI8K51Bs3FNR8vQBYiMpuQ5zgzbe4/BqW/NvoNEh0a/RKKTW5VEM5AdrGWLjN
mWZo5nI1lpTIMpO9RSRfCAo/p1a5X356v1i+fqvo+bDc1ohU87NDtfP1g4+eOre/PJEQXQr6Hp7P
yQL/T/etm9/pF/RVXus=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XhyRne55UFZibc+/h1FojYHZr3ejXoamwP6MPtldZiniu4kyZvUnfLShOFIlIreg/LKgeMcADgjt
eT8XnQ7v//tmdiOUuMFg5oSLhj4ufQTRngqnUuGxe9rNHK/TPuULJeskNAtQhHQxcIvduOHTx/Ns
vB70TcvalWam0mUPKLA047zDFtxcZTVqDe9Wl4F3gukK8/1dQw25hDTpPXCr5elmpDZg3ESXUPVB
xCtBOPoxzWUAVeWBG0bZFQmr6d6qLJltSdrEq4zHTJ2xjdYYw9ZlTpVUvgYS1ZqB8M/kvq0SHJxx
Nlr5ZdkyUrES1iyEIqQ2I9elg8+wtYxMld96wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eGOvbKI+3lsesS2s+H5fyBmyijGB9tk7T2Gryc8fKWyJWMAAy4doPaIY5rYAOIUHXJvGZIAlnhSy
sGFYUCCo9cCaOnC0vF/NXYEVQnSMvIXs/Xe6N95jxyisJrF929t9BpkSQaVjVeJl71yIZJ99pFSB
OKqveIYASLxfkHBa4Wc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EH03AvdDjSA6K5/hEaW3VcBLHn/TC2Hb9eoOa7LiwzZGY1ODk9LTHNAypKpf90uqMwhivA1Pbzwf
cMRU2+1HrZbbOp72l/D9GzYWi8rtPN8K8YcPc5yXqzubxEUiPeajed9rDeV2epSObQab/sqO9DZy
cy+pJ6J5DNGvnwTYGfmLtVabi9dcysl1esg085foJHoSftqD8R4QWRjV1s3JyArRBQvYnBspvBah
w3TvzYKvTiymJ5FNXcurAd9CvB4qq+kfDcj+kysJJhfWifAIsiUZ5/tY5EFsZD0PDJVLi5gzAtTy
GDqCyEZOhXxsezwR1nuNU7wCdRdzwZtj3waq2w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aLpzU2wOibTqaCxwA8KhwsXe2Q+WyWE13bPVESCJLa44lxbM0wR9y3zwzm95jx/6ysN4HVFwZi8T
+sebk9kpPzyD4UKC8KbZVIkDfIjf8voPyIGFh/zD426Jh9HWtJJDPwqBplb5IAgVxEydbmriVJAB
JoEgGnxYPGtn8SHqKKD8x3GXdV9EyLKocsjPcN3nLx0xY2bTyLyhw9uSgLeyuJ7M1OfOoCwsoywc
6Fk4EP2GAKiOADxo5OAwCybxXCPyuogKF/lKalgMqERTEEQ72ocHkh3fQkhOUvyq2nAi13tWvtc8
LsoJ1jF45M5KKEEHKBbRb9lH/f5E8aVBMfmnmA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QHWbe4/5+ApEbjxR0An6gLfnZXt0wxMLjNQBdr84I0k9z2uDpKAwYN1fa79EPBV9vs50oUV2sXVf
/NDnUpW8GyiqXW3OSiS6FnQ6Iyslk42eJHn0mhp7+jmISw+zSjMmqRUeVpuGptJnPqYmKdKB00zg
uJ8ZR+2eMNeQoPXdHHuKJ3dGFREJXQwZCVN9ZR3HeR0TtxzXjD75Bs20eJHLX9UaY2BVidHScVsL
6Z1nE6+ATjRP+PxxPUC2m817vk3Rq02PmyvghM+NshtSbkodZcvm2vjKB8AcU2fiD/06cCGa9Ptc
hmUaeJsiYTxKwQ9Nzc5t4izLUpdazq0OdSGdtA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/Zb+t1UabYdFgchFMEfPEDRNNla8rFTTf4ux/QZw+/R7lvVqDwUT0VTX6GRk7Qd4FjJt2ghArFi
YfpKFb0GqvOakJ5Sjhx6A73VUMT0saaMLr9yk5avQRAVrWnxVbu8//qxgFiaKW/EcXsjBZMmEFjE
JFVf9Og6TtufDi8ZoFxeyJQZrb3Plhroz2xtqKyOoBqxjcGaxyudeD3g36PH7bGsyNEC6HiHk7k+
TWoQXOHz83FM/A4Tau8tD/eX8ExKdaWR9bLL44jmOulEvXi0PecOJtIujcnrumPMFMvGlyFjp53g
CzCa2th+kbltBNOWlUwBoRkMtrAfoq19JakQSw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
WA/OTy+/5s2Tdx4H68HffMjl17DgLUF0bUt+S29RwL8XzJ7T9Txihq3xaJQ8iL4SzssxYpBDyo4z
qkA8zgcYnd/QxUTT/k8Ykt5U60cxEDzpYcgAmVnJkMrmA4OHULBnPQBP7hTpggAWXJlLwnYuIxov
cea2pqQdXTXmYg2V3659nZpzyJv8yuGfVTC0lCZbUTcCFHCTFKF9bW/GhwVfb6cCoFg2XXPq2aeI
NFlintKWWhHETqaWxs6AEAh3pKjugUXA+mzIT2p5QMm+0CNYvSULhyZxBfKWu6klVmxKfQ76nxaj
iHxs0dboSzKpOGQe1zFF1hgpA8QHYuI+B+SzQRxwPdg7+fvgft880cqKJQX6yAV3Znf0rW2c1To7
EIX4/MfO1tbc4qHjsZJPSMHGDH8lDWhGfbVWGeSZYXO8eckbBMqtxOwmp1AOyzJem/bmhzhWLY7M
j9utKdlxiRug4UxRrYZCBSe/eFP4jaA87sAUA518j3HWrO0nDY4/Jigu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DD0ebceG5c83GMd8zkz6zXv6MiV23PrrSGlULH1En3P5Oka39uvbOZY5iJeNIqmjZ2+oHmcfRhkx
33WqoE2c70R2RjcDvHceLG7h7qbQ5u+xuDZgI67coSi6RIiv1Ee3VqhQu+rDQRv5Vk8553dDB7kl
8knW5QvzXvDX3bQ2BHy3/qIkePJbMn2E1rgyyryqz/r3UZSKYgeZnX/3Skdx/lNUVJ9qhcuBsHzK
+D44iRIlz2WLaPneJqBtaTrIZpbv7s/niCWKJ3RGRFRiqFDX17yCmCFv7nj2fkeqCHFguoHgCO3i
f6LXULFiK1h2sCwHdivEudNKrXPJCXhSZdtAdw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OhHLIBRIO0LLFsoaMRqZPDLxswW+3dJQcwmMaFPlE8sOt5f2ZU/K4EjRzpE3besnp4LgEfzZl2mo
7v/AVicni1IIeB5hojrUlno0k/oLQpy+1v5xUrNV+9lqfaJ1eQi0cJPapD9lOqFhU2AuvJFjBdKp
NiY3uGaDekKPR0hhFopGkJNKwqWJ84oMZoWtHnN/qxcq8IKY+Fzmdo/LVxsTcjYNZoh/Lla6A4An
6TzJG5QBtDRhnhKpF2jZRNQlvTTMpaCBeEtYr7CyO2kIbMWpoAkXnztSpW51AzQwXsFOKDoRoZwa
vTjYLfNlaVzF0rdU89PAoIZi2Wa2zhE6oKSVUg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cUPtGQef/9HXNIY/DiP64xiH5uFzRwXVN5fsrfXSkITXOYQRJI81ek0FvRxbQzdgHN/P2IZGvRh4
tdz4t8sBb4OZvAJ0Rh9ZNsNhxnL0x5WJAjDTB5o7MTLMwN2mo0w+EN5dfhg2I3tQ9eBwQCvlQaZd
VxP6/6VmikOHj5M3TG5zer72UbWl+pmWrsIhX5OvAhFUHRJB/tmr1Ar2e51Ox7LJpitNU115D7kq
z48oEQp/yoE+9D0ltuAhMnO8J4wZWHWg/qsU0PFNLyTJBD0ppmuq/oHvmqaAfysIjjjG7v1CCW+t
Ca5ToQGlftBVVb+jLap1RKI1+gvXgMckXtW61g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41728)
`pragma protect data_block
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
mbqZpg==
`pragma protect end_protected
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
