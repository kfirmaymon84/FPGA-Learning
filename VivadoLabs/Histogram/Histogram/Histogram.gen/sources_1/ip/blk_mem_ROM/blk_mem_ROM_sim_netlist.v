// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Apr 17 08:38:05 2022
// Host        : KfirDesk running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/myGitHubRepos/FPGA_LEARNING/VivadoLabs/Histogram/Histogram/Histogram.gen/sources_1/ip/blk_mem_ROM/blk_mem_ROM_sim_netlist.v
// Design      : blk_mem_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_ROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_ROM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17712)
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
