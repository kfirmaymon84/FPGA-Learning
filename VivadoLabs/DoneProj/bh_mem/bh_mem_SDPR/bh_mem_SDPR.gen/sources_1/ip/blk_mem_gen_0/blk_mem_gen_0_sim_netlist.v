// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr  8 16:13:38 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA_LEARNING/VivadoLabs/bh_mem/bh_mem_SDPR/bh_mem_SDPR.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [9:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [9:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [9:0]dina;
  wire [9:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.76775 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "255" *) 
  (* C_READ_DEPTH_B = "255" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "10" *) 
  (* C_READ_WIDTH_B = "10" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "255" *) 
  (* C_WRITE_DEPTH_B = "255" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[9:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[9:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21232)
`pragma protect data_block
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
2SsUVjoVObvmNEu16/GSoqwr7ZVjLCgO7b0yyQ==
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
