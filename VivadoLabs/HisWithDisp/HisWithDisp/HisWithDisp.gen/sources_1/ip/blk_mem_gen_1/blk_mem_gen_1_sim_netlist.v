// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri May  6 19:05:20 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA_LEARNING/VivadoLabs/HisWithDisp/HisWithDisp/HisWithDisp.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [9:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [9:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [9:0]dina;
  wire [9:0]doutb;
  wire ena;
  wire enb;
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
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_5 U0
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
        .ena(ena),
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21776)
`pragma protect data_block
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
GmA=
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
