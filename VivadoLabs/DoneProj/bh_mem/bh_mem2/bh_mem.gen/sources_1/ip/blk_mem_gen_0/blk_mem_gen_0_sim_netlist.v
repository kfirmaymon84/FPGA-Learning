// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Apr  4 20:56:49 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/VivadoLabs/bh_mem/bh_mem/bh_mem.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
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
