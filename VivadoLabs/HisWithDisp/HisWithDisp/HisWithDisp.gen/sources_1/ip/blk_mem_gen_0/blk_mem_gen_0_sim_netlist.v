// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri May  6 12:20:11 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA_LEARNING/VivadoLabs/HisWithDisp/HisWithDisp/HisWithDisp.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17744)
`pragma protect data_block
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
7otFe7t9RJvH1UA4LN2lYHA=
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
