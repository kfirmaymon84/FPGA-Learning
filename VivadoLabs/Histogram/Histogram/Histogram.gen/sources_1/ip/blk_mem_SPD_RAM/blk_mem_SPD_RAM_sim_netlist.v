// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Apr 12 21:30:46 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA_LEARNING/VivadoLabs/Histogram/Histogram/Histogram.gen/sources_1/ip/blk_mem_SPD_RAM/blk_mem_SPD_RAM_sim_netlist.v
// Design      : blk_mem_SPD_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_SPD_RAM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_SPD_RAM
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
  (* C_INIT_FILE = "blk_mem_SPD_RAM.mem" *) 
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
  blk_mem_SPD_RAM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21808)
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
