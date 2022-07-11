// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Jul 11 18:47:33 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/simplifyFinalProject/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_dsp_macro_0_0/design_1_dsp_macro_0_0_sim_netlist.v
// Design      : design_1_dsp_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dsp_macro_0_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_dsp_macro_0_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 36} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 36}" *) output [35:0]P;

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
  (* C_LATENCY = "104" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_dsp_macro_0_0_dsp_macro_v1_0_2 U0
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
kcTrZEy+kmCsliO/8tAycn0RDg+k0LWiJHXJ8lwqBaEe8FRW9+4x66QjQ6tPVwztWlvqflunmOiF
NlqXT8EetkpbyDf9NoCaS/HHt7PB6WfkrMZ8ymr5urKq/HFXuh8iynmTeXPOCjoGG9CQHDfjTzf2
/1LWCOkgGGe4yaOpCDbG2+1RTeeGJI0eMvFKj8PZOXGPOPwymvUjFk1aBGEAFlZaObthxPyWzJVI
M2uJJcDv6d+YpBb6lqPHAcLo3vqHMB9eCqOyCXc5SPHJaK+pVmQhJ9n9AjN6QrhmxJnYQLqSkzlv
pBL0wee6MW+YXICuW/DnZ9ogTck1JLKpS2aSEg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gw9R1cirBOBz9MVFSzyz8HkdoXQMFf/TCzaZqskhWMvDoCDCNLDFOCWyaEaytF3/cABl3v4x1ihD
8VniyszBz5eu2bUNyi11ifftKVqH8V7yrPGP1g13nvodd/IVTL/Flpw+uN01rOPHlua7YtDEcPYW
GinDKsA5lSdGpVCedffxtbbpz+U5wTP6FjXgX9ORWk5OZYoqxZjjkY9Adq2ScJ3sO1DsXbnveZW1
q6ffjtLap3ExQzpAaQylRaiQUnjaDAHl8q0jGBt7+iMja1uI/0v8UvNHIpQhwiUvKW6HWZtACP4m
gCy5VEJb/pBewprNsMFbcIHn5pvGVX18t0sOzw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41104)
`pragma protect data_block
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
nEIvJTqnFg==
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
