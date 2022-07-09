// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Jul  9 20:06:09 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/AsciiFilter/AsciiFilter/AsciiFilter.gen/sources_1/ip/dsp_macro_0/dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module dsp_macro_0
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
  dsp_macro_0_dsp_macro_v1_0_2 U0
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
LLrcBO3uJBXwP/1w8CrFQdD3fY0ZvD5DRrMn4vFm0RI6kR9DpTHSWR+m8mn77T+/IdRDDzPanth7
rbRZHjzBPufq4dgwVIbA6wr4Dt5WXwqpCTaW4Bk/kHF4iM44hF6kWR/+SFLwFxfVUOww8xA5RKw5
h9a3zVzmho5EqgKhCIh4++R4E7SPv3jg7SFw+0HasM2r2IQ2itbgeZbrGupfOjM7UIA6ElLODczt
qSY6wgvnBMHQHzDbDp0k5CeNZU+iIhs4GTMZq1x18hsMqfIgFSLJX5MhmAxByAKH2RXqtJ2Y+KnJ
uCvYAg1AuNMJDyv0Q9U53eNVjEvMF8hIRJfHoA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qLe/qaFC9DWWachaGz0s2+rp9TOUKdQVJjKy32Jzqtj8ld/HFWQy1+JII1fw/bXwLmI89Tr3Ho4m
nsbhE8bcPXZ2djXQcDGrqeu3LVTxxMu6jZ7r7G+/NAormbjLnG6AgvNFt2y7A7gRVfmfCv+Kzavu
USR8G4bp/fTtK7Dj4oA9L/36jM+lPA+iAQ9aBVA5mPX0tqUQZBPSVtSO1MAOZt1GDzrgPTVxRIhp
5nnPRKDS2QuYP1o/SREYCdiZTV7gQb1xi2xNQH5lhWAHdSgFK9BEvydMde47W4hCaPnC/hZlTAwB
UWABz1V1lMz/y44N6gFu16CQnz9goSiL+Gpo2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40960)
`pragma protect data_block
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
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
