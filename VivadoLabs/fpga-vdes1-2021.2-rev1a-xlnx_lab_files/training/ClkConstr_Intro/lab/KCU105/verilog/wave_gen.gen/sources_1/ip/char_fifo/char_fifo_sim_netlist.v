// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Dec  4 18:38:30 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/ClkConstr_Intro/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module char_fifo
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  char_fifo_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51280)
`pragma protect data_block
650GFh8bNVs90U6fvwe5ngOdXMk2kODbnJrupIa69NBYknMmALDoEbhsYdpnR1TQPx40geuGR2qy
gD9Sz3jX73XMlZ6fPmqnn0Z9PqdYY6LshyGNvc4DbNLh3zOE8fZlS6Zrbq3B2JayJiaPOGiUeX7i
+9Rbrl6QaI5GbstWcc1bLIRXaD5A1lQSg6HJ/HKVe331m31thgCEUZbXtqhuCvktuNNTiIetMyEX
3RNzKzcKPmXnEJ56zv6cBae38q4EA8vaXmI6c3hfMLIg8h4AXxKOAsLXscqIfv5R7RfSYzQFZhmy
YE3I3IKb54cw4DTMevR0xZhDwjDTD+hd8FyQBkbdeJmQ76tJl7NwxQNrpM6ok1DxED6WUh1rCi1m
iBMR9W2s1Qa9pD+UObwOgVDOnYAB0fb+yDjezikgP4iV8ZoeD2eUWH5HmVlaV7X7P1PqUhp3/w3/
nKGDe//e7V8hVP/od2PQQQsxGHPo5O4OVfDyw15gQZPdYgHTnL9ugrRAKoBhhzTd2qo6pfmUEVzP
3tRwFWMQ9AVo+pR7RCZHQhPmnLBx9bpWCahS6wpk2ea2moBZjwCPOy3bQF462KUzlxhA8RW0F1nN
4frvku6NAhiAUg8E33g5uygW7YEZ4i7DAkloKYjl5epKulADhc3cg5f7NDnkXaHZsd95etCF28kr
gRAiWJCS62ZSXoxDW/BZMyxHIXeTqSQjeyGj4zPvvIB8sy1ZvAljpPkidKN6kUcX+z9Dr7LcRX6s
/imxPg2eBKPlrgQmg2My1Zlw0Yg24fxKc/kU5hjRSY9pEVfEMntTGzW/pDzslSRu2HgQEqG3cEf/
9zPfZWukNLbjvSjkkaEfriTT7dgUn6slYC9Msh1l0oAZSdmHJmD+fvROEoB8aTROqM9WKCBGq6Gj
XJtIsEr3DMDC25HObgU9xNlh5ma7Oj1V1Ou3pm+4bjc+FDIP7iSTbNPyq3pfHC47B/I25EIVhs8E
M23DquDK/H4kJUKg6DKfcHk/dYhMNEa8ky6mZXNvR+Uq5uhHaVoHw7k80gSfW3Y1PZCLpSigsVh0
O8HB1BWwRCRQYn+zoBDEIYQWbgFqzEmp+pwiBTxLaS2ALBRNgkIcsmncH5rxWesP5walqnDjS+jE
Zg0XNsVS6I6E8fAIXrrxNAZRxCbsNcy1/dS87t4PdRD2LE13RxKHiACda5uAHR62kipRvtVXwoBH
PQob+uqIOw/E+lWsET2qxJfX0UCbOjwbpNjzm4SVQOPTTP5fUPZPklt/Lh78fK4x/VAIpAVq8nUf
KYTAAisisN5JCYBSIJEZOh+W/kQ8cZaifcYMFYif5Yl4qJTVBzmXGFOB59/6LxA8RaWidUKIV2eH
DTZEtGdrEOe5jNY3rXB40ifsDMDjg/Ow1VrBsjhH9a7YLWM3zVR+Czy+PVKGuqzgm1UpkAzGYk/D
L0aIqrl7lTNsl8tz88I6ZOq75sDxklGwtaUKy984qHWTI3uiAPhG7hD0rDcbyEwvsjETHUu0e52E
HrA/J08joKvmY1YdEACNUXhhB1zcMKYt+8yj6X5lQycV8eZXnlWyr2rD59s/EG6DhZHunWm9KWRN
zaXdlxJfMCtCvVxqoWvoNFCpoBGI63SVIwFltv8170XNwWl9Nl9BmL37zGqgPe66+ihSQ4z84Ra4
V/HFDB8aHn82oDbBVD4KIYRTk+oXCfscV28wKfyo+QcNThf3m4h6lCkbg+JEShRfMZO2T5fu50Zx
Va1HLdU6yrOlHSaqINAMmHKxZz4nv+TfV3j4WQu6pckjsEKQR0YI+Gx7h6DjXF/i/R0I2sC1ZGEg
LBPN20lz1skzAuK8yjI5sbHUEvaIzW8P5zAG6rRPLM5Zg7oHNRYRHAXRWyL7UOMc/Lbd0mrKDp8h
4tRsbhZpYTllL5QCBOY2roTv8sImwnpl2vGki5Nz2Yi45ALVLiuOcwwbzq7jAqxVBW5P+x/Ay6To
kmFZo0ZPPDeKH0l9wfMdRok6Jn1K0P4F5OVzx1i/vws2t2gxnEjzC5+L6MMWMS51FBPFH8HSVlFz
q482kTx7X1kuY6X9hLXrd20N4+qXn5uV06y7DY69bsTybOw+h+wC3tI/y394UsupnMsxp0nP/YF7
Nb/fR43i3KLmKPKsINYKfUuOYMko/VGveGogpee8UDGsEeb9koHVzvcs6YTrAIhlqYjZXlHItMCq
vYEXvjIXsw20RT7RbXtZKgRDghR520GR0rLEvF0O0Y+PY2qgOfJonLSRQTvo80dL+Q4beExMjIGL
FzDjR0d8FWvF9QleurHTcYZZfbKdpninZ20jHyGibpuOOfqVfA/vcNZ4jzNqteldyYuDI2NTEy0H
a2QkNgc19Vhm1Tiq1LugprX7I3us3WBmDh1pW7Y4L5Oho24KF27+KlSrsBdb+WR7r3jSp5IHfRcg
IBxV2ntWc8LFJxIPlLE9cHMyiy01SXlM0GUw9SqcV/XO9Z2jbhmN3ff9sMxiyDu+xC3TWA2K3bdY
gM04yRAn7aO85/uUcSBdmV+cOZmPV0x4g/yQlDJgaEsHre0g6Q6KAi3JtaXMvX6Bx5Fx/1UkpjTM
pzsvUUbG4j4M3iU1QrUR/LaFzHJdgQ0qamqBrf3aASwO0/2HBWQdnIVnnMzSvRIqSE6CWs/qVlml
6JzTmvg8Lb2il1wMpSzYLUU+XhX+YR62gpXkM+hqjJS+OVCRpwa2GeKSy4+qdac/QQ8ghBDDfUf/
wyv9IUKKHML0hPwDLhXxP+g2uGPEWaq8XlGVlgXNh9KYpHlslCMdM6rgy4SryKwujcft5YPypwrB
yA4JOfM6lbVJYPZO/IJiYuhjMiCxk1CTHmWRotBNfL4lBxYDWZWHIrDNTv9iimCvmdtfGfbBAfKs
U5nlBJlybrr3/RzMeClUrN4uwRFwZ4nBvVrfC8MGyyuevuuVdC+mnGUxWOkgN+SkRfELYvRqkWST
gOkGaz0p/eBn7kRje49wOEYBhzXTqWuwCBtPGWXL0wmbAA98TD5L1j8KgsjE3ajVAkI55RHDuEOt
v4ho8ByEmk/I3wH2XWsQcU/3VmOaMTx5Ld/l+hfJs28UoN4ZXR8VLxzjGRibwTtDfcOYiGqriyFq
BOfK/RdDrkL40pXZwR7knKs+3RxNUMGpjCcncx/yhmAfbrYq56WGyW6YiWxIqJzN50E2kruY4obh
MUz07HQdL0jWLE3v6WG4aPQ7M3Y0A1PvOQjuTJxtdmAwRl/vMHfwUWZQ5AgYzbOME1sah6ZuGMe6
V8nO+xHZ5KknErOJ8DGkEtJAg2hPqKBV7bUfyN8N3JurUUjIj7tMef6aStKMO48EXTU6o5lFHq94
gCOCDWocnt1WhUFq3Ae/iRpFJxO8y/ocF1vHq0QCqHZMCUKbR8uK3BW4Yd1di63Mg2CEcPkRmUJS
m6bGa+NDKALIjbmmxdrCSt2rzrIMamPyE4csfqG0pU9xWDKOh5eUUswEWAYPeSbJEOia3PtW6lZC
ZM7K00EJI2ITs5hVwGgZ10ioNU60VcKaqRIRNIZZqA0LwdEBkbE1bR8iXHHxWL350G7j0sEqoRAC
3NZdsuxrrZSR81fKq5UZxr20JanyokxO4Vj+6okYLmIYTFXLe7BwxHE1L9VHei1tFttqlW4uDpaV
ap+jvGKgDLZuVLFB2bRA/qAf0Z440wSVoatUqaALCzwQ3+3mrIe48tLVA+1ZpzAOwiux1hiWhSZY
bcqg6DYbf2uKiV1Tf0OhCeCXRc25cEJFrSpS5RmmP2jN+SnQYvFgOAi23yo3jRqMJBP//o7HmT66
baJdJ0bEbnj4bWqsM62et5XWzj2XKI3AJK81dXWl89odjvH49huPlxmsQ3Mn2TNYG6S5thPwBfri
sELWYEx3l4kmzPVDbFtEcIcEWqsM5dxtow4Zuxgyvef2K7c17VSXAkNKQ7h5sKVcX1uOoUDtaMIC
q8UlD3xv3UxIC/soonJ4csirWHZP04lmndms8M/0le8swPjImBVE9QRJn3IhnjH5C19o+JL2MV2W
OoycE9Rr+vxVn4ZvL/s+FUGA3ohcAvLs4w9/Zutw149bOU8VcLT917SU6o01//QD139fObEaaMxx
qDvL8pOxWt1iOGsZDOeVCezHI05L5o0tynYHvat9uX9N4oxoMd5/kLh2ncMEjJDfQUb2RItuQhLQ
Vv18uue0CWfAYlOqUvFWeu4PU/tnNM4x7I3m625Yat9Jotcztu7USD5gPrT+M3t+6NcE56jq/0TS
VC5s4Gote5AchHKXmqNJ7QihKSCanpCr83fSnPpfwECAJEkttugB5XDc/V1C04wE4uaX/2Bk4xhZ
kywXbXzRBBctv0bFTKCOYrdDoOjEe9hPcq2MKPTlD0PGRS0c2bnebXx2B9us8tYWkMl0UoILisnp
rGsQWhJ72vKUq1MlxwnXwlP4Pf+so8gQlm567/PauO+AkV7kBu6lSkOPCwWZzToZleZS0adFPmxt
p6X5u9mrb5hgZUxpwC/dRS2ot9b5hq+Q4LFjP9IBiiuHbQnvCoxWu89w6H13wiKkpTn+20FO3mEI
/M5S6R5Ewd8wb0zxUrVgZRA4MclIIsFKem6LZTdkqvRSmnyu+dF2Va4+A5VN2Hsq7y5MigE+AzVn
As22BPtGr9jLNgxhew8ucRZTFhGtVAP7m77m8EwkhBQ0LbbHMwS1fsMzLHlugrPPbnYzcc4hueBb
oYOFmxE2RJgtwY5McBGmiEfV+Csf799QscVLvHk4JLjW4owkp31qWTgkHrOiNmvekleSTU1UtZuC
btb10I+7iPpxWGQ709cjA1ODJsYoOosiT71hukSd230Odi09ufv//f7JitK9xX+KfRBgBME4NvQa
qFzN63ddh43Oaegv3iah8objz2o6VJhDsdNUaIbNHweTjjNlCGP5hD0zRxzYqwNDaqBFsBLLByrd
Ueoo0KmigKyjtOXXHBR24lgg3MVS1ph+GHnfl/f03IUVpkgG7ShSyZZigaCyOw23oBvMdYlmyGJk
AyVnZn60zrVPnu8d+NjrbE/HDeWCeFIxGlCFiFceRNc3jLGjrakuAQfNTshBEhfHXL6G/uRQb8WW
LvrmUYGxL4EkUt2Sd6LvRIgXSmLWa6ZRV/Ux7bHu/FuepDfRnKlC26iA9Lc7MMl/R3BPpZtdFlOk
dvMwtDeE6lgvnN+SQyNXudRatE9kppsL0/i1G/n9LxYUhLd8kEoS8wJfD66Wmd9dgT8/D5+Sil6a
KbmRMPGUmcmEDGtKFvhCyRkv8IGmS/YTcCTKqQwBmatqIvzA/Kx/eg5OOViYjpqBN+bRPXOj0/lZ
Hb2Tlej54f1YQ2m9pFrxDQwIEfEW6We2QGzrpcZZvORCAfvb9krbDS35jZs4eGR9i0FREzA36p/o
22EwIrRZMSZGLr/2hzYrTuJ9L0OCpgYOLDIgpDBCa2WXzfL7UJacLSazzz4aDZefdB7j5naEK3cU
u/W3WSx/R40zNEYghhf+06Q0kJWfobbPoYZJRUf05orqCn8SUVLBCO7n2P+XZwZfsLDyU1sXi2bp
e1GH0hZeOjEOhlg35Z3f8zOTGl0Sm+5TC58QW6zaTISd05onHg9nbWz046PAUYrviod/c55tnShy
YP9ZbKicD6xApKnqi5Jafp9o1Mt5Ja3kW3+MCFIrg0ftGQgTnqr2mpHrtJeZUK3d1wT+trpUAZXp
w0Xw5BEduI3khHNhrF804Bj+Aa4PevRqkSgp5C0l/sZiyd4XkZkydPfCzETfitSy9OoRis9uL5ZS
Kqzxacv668ST71+Ijo19Cexc2WHeFr0aXr/ayjdQnyUH+y+tAvPQph7Vb4I9g0JMJd90vDTvj1bO
MeLkHlbB7l/cm8iTM4V6slw/kz5FscktdC7GeXkC/LxxBX4DzEohRPIhtcxyBAnch7svJ1bKO4Kx
4OF1kuvYp/YbcLNdHUe98OJ7AkXG6Vw4ACkxrThjKBuHRB4J0NSVy9aodvQaLBC/lcYYUdGPhTYC
OCJeXChf9Vm9fA44k+uV5tMt8lJVcH/ymhT5SoSwCqhxHreXLWWmrzjXe0In8z28GNXBmZ7hPIiU
77GigETMv9qGNDZEzExTGdeVtLsope6SFyf5FfTQTPJPpZQUfEXnn5Mdi8apdC/VtdbOZJQL6bS4
b0BpGGFPw6/sxXRb2GY6Dq64/Zt1cbZgDTgloYOoGCG4C3pvV5ECBsR8fnAIy9MXZePjM6nau/UX
OfuiFuKxZsiz/fow6kJDiRzPBcSpdJZIDQ5J4U1qOpyhQTNHpDNFkvnoqKeuWWOFoF9Wk7yuQVIf
J2fxaz5/hDTbwnTzB9S8wW35xHgTdLqjhOGE1aMbiSdwAfLiafK70AcSaXuRWZFSkvzOHxRr19Ft
CR76MXBr37a+kwjO2I9SbrJ/Td1mkxKN4oMsXmGg924XJjym1UTBPWnHuZnOHKTKuZWI6lMnZdiU
b6F6jg84zNNVYgk+Cl/PzS4v8MFMjDIxIScSNfHL/HQYVYAOivgLx1nY4UJpNRwnNBb8X+fCmsYO
6wYHXt57qNYyzx9llu+dJToYtGrX2CXk3kbroBiACHwVEsrQRUflNaaFpirBlGY1r2zjEXhiRsTq
KCUo7WGNzNCj1SSszWFuEmg1gztNNDjYP06F4Y9zJVuLZxl8L58JPkoCn7xE75ReqfjaSG8gCNKp
AtkxvKAIoYFImzxfICTjDCATO7rjJ72qwJps802ozWUflTaG2HHXWuqpiIOa7zR0UfPwdM/wFWPc
2Tygr1wtVZ1kAifGDmcySvBB3oCQM5ooqKOpOk50IM08v7JI9hSr9ir/ypC+CzlUsE2cMfNe6H40
JphdGJFY8Dg+6YBeVEHB1E7o32a6yr9jExke2GeHoSyB72HeizShYq3RUJ7YVOfMfXaDdkgNtQ6X
ydIB/0/aBZbBFO/X1xvp/WaM/Z6zj4eYhPfnhv8w7cWWFDMGZmc5tiGd9eJFKgKjanZH9TMewjwz
jUZldW4xQ5Sfs/Ul/bayRAD38Cg+wDKlAxQq8vQo9jFOvHEwMUlh/dcNlXGgBf33kSJd+xh6xilz
Iqni+1qjADAwF30V2HlRcw/2kiWOEaxSlvNdyY+NWkjmgbUer5RsoJNhBDZtbjechAtaQ/66YCtp
x5EZgwuYjtyb3/+LUO+YY6iUjW1KjDq20spVPMSfm67RdN2mo6k9idEGMphLy8W+/SA+ueMi5KQ2
pIzHd9Aa2HM0yZiZRSSkVImmvX/nYbLL45gdPQdbbtkNxa9VRtfVDmU1TlhWapQ08AdYZWs1fbE7
Rug9Nl3CA93N9Er5hbV+ajYJuPb5EhO2MBDxQnssTppdSNTsytC0oPZN3LIrr99MhZiip28CN6Ck
fZ7M/RH8ayx2ZmbBvUvHVCHPDeEgTnjT2FaKmgi4t7sfO+BhQqxogQsK8aZtt/SHssEnFsMZ7yiN
N1zqDyN54j1eqD6BRRpw43t0MOdDSPmrKdgpjL7yXq0PzC3Gh/O0TfQAFv78vHA927p/1pTH/iL9
dPv7zkFmooNcxyFWcR5kpxostBJGxb3B9LVfWnkldb6UvPGORLYkJW7Q5WYLt32GUnXWr/64EYni
dLRrtwiEWPNF+dXvXErvvwUW4Na7RyHxO3McN2Fm/KqG+WkI2SXty24bWAH+gBH9/jZ6kPNSv0X3
0hcXlIxbU1HnDj4B2+H1zbMavLB/JA5hxHgNh/7G0LqVkuW2yNDO6nNvS4LHj4BOg+pdJxjGqnPD
SLzfG/jAdL/Kxx0pYzP9DzpbgjWPrq/vce2pBw9pt0qyGAUyGBGqS819OY0kCkvi+AJ8Avn5/ulr
YiHhbS3ckmYt1jl2QMG3dpUaFmVway5fFXdUEnCIcNeTywMN/rOnw1UQAR+MJqimi1AFOY15iq87
ME1tmEmu+CkeMng1fRWxPkAutLmaJtLhgKpju11mlvjp2lnyLCP+mkX7akkA/3mRpAJ7OtalBVQ8
F4Q7uOIMCUWHdwg4dasiVy2n5siNbCZFSi//9L6+AuQ6gFjsDAgvNnpsClG1zQLu3oVNlQK8+Bny
kfv9QJejRnmG2M7K2D/aNA++CyQmkZFBeiNzxM8Wv7Ww0hmMPiNaX4dobfwM7ieSlVhD+q7YtvKm
rN8JMejTAoOd/VTdRQgX1T7ORUPJ5iGzjNNZ87dBa589MpLHwbm4c39+PKsU5mLG2jPyHwzEJOAT
H2FNqHGZs8XnC96aNblgnNw+/yXP2oTr/xrcnl/K/aA5dv0v8cAflWtPV7FR7nX1o61hNy4qz4Kq
1dam//rueG9HkPvo1I9GQ3IEKlk3XxrKRbvrYMpbKmI/XvN1x1E7O95+iV8Y8DtInTg/93Lx8D1n
7svZaPYBzPancSJGDSbpOP8JqjHbclPn4aa9VMVtUoVLNDXEJMu966yJcBoMwhNgz0jxl5nQAZ4R
qMg0ccOSb06/6nLniKCi3tODIwCX/Nv5MjlfCpqcuqAXZx32//pVwbaMACYU1LStN13dZ77LJCWb
hNMeDETtHRtISE3BgVje1e0EStTTEVNu4sQl1MgBxoAq2N20XBKWIuTpQC5C+VGZCEW8NY1k2yL6
tfQfqLJQE62hx4d2xiYKnmzMVTapuM3Db44AV3E0VaoebJFJAlkQ2UvcqL3pDvJK6ock5R1Z/UNi
3ghi75yKtdkGL0lwYiHWIe9BehKBR04uN8hrQPrZ+cr56kugh1CtnMIbtU3lfOexfxYLx4SB0BgW
cTdpNEW/KHPAjqkCIav5e0htBVtuMZKqC735F5+OgOz67BYI2orM6SdsSLIGn2btqLv81VbFz7Cr
eteSL0z7pC1aelF3uH8pAefs8gxCmweLgZlhSrVbf9rALssKKn5zA/9UpH8tjMkzdEoF6o1Em8+S
AQHmvCvC0UdHkMjDp62vmzuuHMggkc3b9ZIyCzqNZcvcyZa2l6YEKkOUkA0JFW/oepAvygMGr2k9
kPFJdULigc+40qSaWNXEmMRiHJT4GW1ZR9hX/wqVIUs9QI1XLFIXastlIzdfc5suanBtSj2RNYYX
vXlKwFBKQiD1Po3AUvakHj2Yc21v/OVicSXtvs1sUFlo2EMW/x8zalwIZ7BaHwAWkOlAL1SeFQHj
tgIr7aM44hL5FEkXUixR1e1+9VMuGQSDB5zaIcCxfbV2i0eGconvuyc08sHlDGHvXHAStz9CPoE7
k15mNeVT5whJI1GXClz/AJnpAvn7b0+Kmrb0Pz5My8nP29lcjq4w4emiP2tdcKZ91Y7HRyYEKw2A
9JSVC0njOx/QbpQts20wSZ1bygZr+DzavxsAZoU94pU6S50hp4wDQg6hgIxpI5qqQasrk8rgxjAa
3AClV80+nJWMzoiccer0v1V6FCl7YMmN2YvDImMFEJ1nhQd1XKuIy7jrB73x9nTWJLvhdc18krQU
nuhDrnZFhyAglMnvTbwtyMEw6f9TbMzz450/VyeCeDG1IsrVFK4+DSaU7Cf62vKvLH/01P874V9z
pKMELRX19L3XGZ9RC9GUFKMekZL0qQTE7suJKcafPQz7euUMwZVLywOQWpaOKlU3/vdDuWFxaXz3
REtf/G2CPhoQWZWzB7pWq40hdJgV9Zp1ojb1kz0p8TCEpeyExEk2w8EhHNdQQvvsOc0RdEguw6K+
QaLl4ZbLES7ZhqwIDg/GWAdGyRFzQV6gHpHIMH55qgG+q2Cv/u/cCj4h3y65qJe2W9FF1WozHStb
ZJ5zPqAWa8H6FK9CfpmSNAOwy07xmBxQFWWpl3O7Fq/d9MSSi3H9pUsWfrElMFyc6s//28rz+Dks
uTlUsh6jP1cRdAvjIIKUx5qVi85s11BSLOEshuvfM/1zuVXh9c2PtIZpAMuDsykd78SN/pcV6JNz
Cu9Bxvo0JAnm5pT0ysQr3nkthxT70CtGVPYvzLmEUrgDqC20Oqq4j1md4uga+R4VqYmemrLax4D9
JMBM6x1wPKOilxo2G0Zwb6nLBS0FN5QqOqQEGUD3XJW9fcTSy1DViNua2GnHPjdQI01kYK91U0iE
FvZ8usNaaJaCVjQOR7XxhZRWcXOvkuxYM3cSQKf5i9cLpVqz2FMRPxixvDLN4JLWbBN52NtnPi6B
eMqQ0KAl6uVKF0cD1h7rfBpXg5HfRZF5HwGOMj79+pEzTrdZyGxh1MxWIvU8bIIgWVtj9TJoEfJl
fRYwgnEY9rNmSs19XpaXxmPPvckv8xWk/Ol9jJtLESClGRsqntj7S9GBX130DnwWv3o1EqcweW44
LJbl7Cjm96Q7gUIqXbVsxxSpb30UOC75z/URckfbziR0uMl63A6LhMGrpZ1u/PzDe2dyNTVhW4WH
8oUtewZ6ShjjJ0aYXFnB/VHH/QbtBpjL8WMpRRTSTitvbrVcK0c6+ssZg9XyLNNQZzKLufPOl/me
Mu8ZyZyZxg1OsjS7WvrgXzXv/mUBIzhozh8Q1xoToJICB/KYusuEUfiiz+I9j+QpliGQz88Piikh
1b0wbjjiYsc5fPWAkux0zp7x3wM/rOOj0rY4PwanAmRAulrv36PcPjAcVbEQKfGDMJr8ID/sr1N9
bDLaYcGM6I5cpKuPhLCNsNd+C6wBFocPR7Y6pFFfbfYGmBe5qrujdBvbNc8U5ZMLto460uT8xwPD
lvBksDnF+zbjw4XUGLpqKcssazj8VpS7213WabeKDV+esERrvT2ToIWRI1paL1yMrouB17GxR2/C
Kz0WpHhyv+wsJCoEbu3MHB4GoKvjSl3YMaI9y/BORN8Uj+fm84laUafh1ZMKMaFTbpV4YIHWlUDp
1ZJSGOwGLAS1wWBffMmwWikTYHyT45ve4rKBTypum1uVP/7afI3SzyrjwmSokUMi8KFbQ6zyHPix
ireRw2JFDw/WRg51ghbCVJ/fuGLW0U/ln4abu8jYp2UwDvqaiPiZKybzEUgkpyZTTe4u7slF4MTX
nmTGMYThiPAiCHt3/A/3OGDxMlAGu2RNBKvsZPLzPHTcRgq/PsWyYJb4sesO3pCpKF93oIYDK3ly
cucU1FzaconyzK3bqGiqS0xmfQEWLafQGEtkez/D2RxqUxNZs1nc5ePvZjFAgmQao+xB973ULJFJ
jub2DgLXMvWQaLFhTTu1FuzcbVHCdkIQiKdAV9y7D+KOXAg0LVXFN6/2p78GMhjzwFgflwieLd+G
FH11aeJHc2IrXcbvynWaTNbnmcbJGAMs5zQbtSv8/LhJYR0Y3kNVUc3XFF5wG8bYr2IegAGAB6ls
3aZWI/ccyIaEfGBqokm9/PUH/+Lh6XZXlsbW5e/hoEgOv5lAAK+gNv6tithHiUjnAd1YDlQ97+9s
m+9Rb/saZrVk/vIIO59h5SNeNNn9+OH/x1xNKq3J4VQxc0I+2HvucBBy+x1gLWSFsMtCNURbQMki
04xNWhSi5v8R048//EcL7DzwKPJBGw82scqQFRCV1cvVej9vbzB0mov9ez3G8kXLgvgcECYwS1Kv
g+snUQHRE0+G4f69/dP1B/+VSknAhir+/SUFpLTSqG037yEcDD0kvrV7yiGErd2dwOjXJxVk+hY0
aptY79+lh9OpRfF4SwNegtq6brgZ+STbp9goILyL9SGOokFjpDRbBaOALk8onkOY9XN+jXhE8FU1
mCfvgO6ixZ8h+/UJzWcgu6qUb4uTIR6RoljjURFBDDRAkHp1SxnVJQ3T47qtItWDodMrv5Z+NhDp
86EtkmiP/VW5TpRoUFyfkM52H/JWz8flkQEXHVVr2A4oWOVQEBYkIQoqnbf+b5lswAloDtVjpOkq
rK1QfTnzuFvxz/d4qqqgxE2qfJK+C9Y2O+Y7JQnGblVGcDT16XLoUxzsFzOQjoWYhHZuZb1D+XgL
dJV+Nrt2uSVD1QsAGAvkWZfylSGlD0g2dMTbN1S3yjpPOdeLrWw3Zfxb9xBMrNCEB2/2qxW1F2ys
Ln+1Hod6IsLwlL3ahic69RQ+0GODh8YLpqgJ0HHKSNVjFczCoaDxdLDj12uFUNvAFyScTdz0laGh
ruV93ptld0zL+n+tJ58h0ygepzd9gkwuNrmWIXVEGbbK1tUqmTjJW8jPkFClZyuPgQGicZeDyReg
pOYR2o46NVm/LzAVsMw1RBB/mkmafiqvny5S3eEKEYd/i1UU2d1r+h6CbApgnPQKBy57grQg6HmR
brX3+M/vGdEkDlD0pbPz/L2ZB1YH+vWO6wp2JJXuaRS4NnlWwrnVgiGIClA+6rCzKvld8BjcSSKQ
pQ8t5dAKH5sLt6cTrTGcNS8kC/agatxG3JO9eEisw+xOD4/uFxXwQRiy4su08RFsoGstq9C+fDL7
hLXjBpUOTa+QK4CxPFN+VEgqwFl/qwQ+DUfAapWSsSrt7H/XMVGdRR3bxp41fBqDTKpKv80WPcaj
WU12EeR0W+J2ZbaiEh6cRSlVQJa8SKhCZAdDRtyYswyBBBqlqXcVomzrOlG64hP2gxSB4Bb8r2FX
yOEq6DNym9HILyet1NB87iT1WGWzfJzJOsNJkp9keixDF5oc25k5UNhJ4ySbioe8eZc73KHJ/GAN
LWlNP7jujSMaoy9/HGN8iAVz9BDKLjfFYj6oRyYr+ybPDr/pR9QMZPAtkmD7Ww6C4ZmkLJ9zIBoY
JfnAF+qnzDiuuHYq9cyVmtn2SP+PftrH+oe2I6E/Um93luDZxYyd8HAvRizUY5k5g4iQp6f2oWtR
HZFyVV7znESUV+oRriew5c6u8ZnCu1I39jsUPXQzWBBRNBhuO2Npk2hm6eNtlfBZhDhM4+2d61bD
6MB7btKrG+vbT5Do/oPfQsCOabz1amllpqXAJMiA2s8N6iRzZC1wC0MGKZHz9AfzyhWNYWMcBkh4
UbNyI8wVYdKW78DsuGTwQKBy3zygks/oh4/KTSj4uo+JqRiUgG/Pams+dEmq5KlhKuhbWIkwuYBY
wue+CZwXvfH0IiuQMdGFqAVJkQMqn80dx/T/kRla6joXTVMuruAmG/7E5GW3PhKlNfnb/noehTJS
ktKv1Ksz+vVFvxxUyU3O9By5KJd2/0yzIh1xFCpxysDI1Rbs0hrmFr2snKpjXE0Q90dLYNbf83an
dJQaqeYpTtPk2GVSSZLLiDoH0GVTFqa4QWv2zYh99ZdaP1+KojDjUTwHaUSe9Zm/FuNy2I+Qx8Ov
VVEm1qlV6AqOrjeA6FhqHFWGlPDSZmenGKRy5TtWFZKbhmNd0KUvxY20rcrBFvwkfBfN+Le5WqUl
a3fy67opuDlaVv1yLFXA1ljMtTYik6fhc0mvSHaUCP1t2KKS5OL6ga3HZARvrqHFKmQ1zCIs7nWi
2gNj4HbU0XvmwXcrIAn/cahHHrGFSCSRH6S2pv/vFEe2U7KkLEwaWE/ZtruTq8ILGnZh8ZR8Ds17
qA4cZkbBBIs+ZFAVTi4gZeYNVvUrCtgJxr7VKOwVi/xOXtr+cBSBPWHYse0ZTR4Hpj/y3JscDpcL
TRmwm4tKlDl4PcyUfCaz+lwHY70zwmAsO25gZ3svoWHGdeR3by4gk77tGEU1xdBGVsv0/7JOVC1x
cQ0AWlrtwv0b9KcIBe6yM+kHC8ppzT9ACbf/iGa7AqJsgedPoXALckStOe4y/VKPpgqghR/R1VuL
axlwkTnRO/2LTsojpsQ5ic/TFAyv5FhkbDXDMiInmdYJs5ZOt3wVm0OVkcFSJ/f9fPPoYwtS6DzM
bmP73HD2WHi5WpmmYVWAWxpc5Ob47HF6MSlb6MYTPL66xEnkjiP0wVgBCDZP6oAm6HPSsgdCZ7Zd
TwhEzHuQiRm7JtEgNsD/xiwouVTtrAZeCE+yLDGLozkrdmWzManFVQBtZIMA4bUh09qflhiNHizi
c1yknUDDuL9Orhy9xzs9v2rlXNb3pOerhupcRH9oDHJq13QhXLtO7z/d1dsHabdopLr+obPQUqxF
CA12Cj+77B3k/VbkyPR6OWZAg4xkiSJ+1qqNS+IWF4bdCEj6Nijz3KcYl5YhJ1Dt0RG10jh03LYL
6jGlTLzSgoH2p3XLu5ZZJSj6FUmddQvAAO3jiIPuLaEVPE6r6oK/1qtoH7m6qTUlG4CQyFOgbAvZ
HBIr4rANi6zgitLWsYwm2k0i1bs4UdcSB9eVgrEh6hCDhBWOkDwz1+cs5KGxaQbDHIWgy3UoJEqY
mhy8DbNWUXlmEQmh4AKXwb5EQ5dzXwTAe5onaqidbTgx3ccNq90ftDzmL+R3p5PtbDvXYoBobKMP
FV2MZbAR60m3/jsagFvCqaB5t2njkYZTzGGhpC0Yp7m7J/UY0CAvgzh/72QyuhtWsC92hmrEwtTC
3sHhubWZnBM7NcVbyUigj9/uA4Liu4liR10O04t/9PgoKW6k/5lnJUx4B4E17ajvQDRFfp+ZfK+6
oMvDvt7RBfXHW4R2+gyieXAWyOe0ov84vX1MSyHwEjxUwPYSELzLrGorYoeEMG32i7BfUhma2Q6X
MInPqnpal+1lv6HvT8vyyRmt3oxi7BOGocHTQOxWp9f6zUAMsWyncYH2WL9pfvPYbnC0QV2GU1Wl
qhEveUIsOAsjPgDFWjHU4S/C89Wdzm32UQvOUQie+Q1RZxuho9YZlsfglyzTwdGO2/4KAg1euoxR
ZJcyUWZWitx45jXE+ZsTZ0QmwYFWi62zVcoOTRopTI1bHoAvuxpArrVsBGs5yDUgP4tA//1T4n4K
6M4kGTBv6FKVfyp+J37QbX/+HT6y8bEqbXu0ierAcsz6OvgTptA22tvawHkoa44giRKPAJKKUf92
dNGWZ3/mmuGkzkA6lj3o8xCWVauXBfGddAWlpZgY0kpNMTfIRqxVPQPAfQGVss/T82+WC2Ss0it+
WxZYMIRvmtUJQ2NjDiWZrUaonypoBYrQQv9KWgI8b7UWP4eBMsT9u607yxiyzFzJo1WJCckqwcwu
CVYWeGJd3EiitFy73kxYgeKr+1yLvC8bZaOzJg6CNbLI6ZoDqZVRVZZTKDeaSeeM0igVLsYV3J/K
Tbz9vVsCwAmK8eWkh87CyL8l1wnsdeUhz9+O+xKTSnIXlrSTb96insEnpldtavsAI8yWvcBWFUxz
IfbbymFglycPH8mHd1m5wQj9sFGRG+BPHVIvUaSUJlc9zuhMi7fk26qCR8gfImtKeQO3MUHcFP4C
RDZG30YUjAVWEWDwaK01k+vT3lMQxFfJyUrgoAawS7MAnL3pLrIAh0sffz/n2c9EpAmxpS4lSHly
T59k4c73hHemnTJLpJrtYVF7OL92wQVxBy6DAEaRbv1RU/zXZFsm52JdPxgMEgQOkLdIYixIREEQ
BDus3zmCC8Iq34Q0zX8VVDJzYckRRIZ8cD5PfjETlxD4+uAhZ98zneFS7Y2XUEFlEQimwjp+LK3L
RNEmyhsLmtRr3dOtEpsxO11KzdiBTBFl3FAw8x0oTYklGS2QG2R5nconOY+vUUdOx+qZ0qN2/FS/
Hof2l+w0TQJxMqwPZQauWVkeGSS+QnxGxJThcFjcWJ2AOHemSpcMGV508VafMjyzLMAFyqQRuvUM
Y8C9HY9RoMYLis7yXRCuovBkmJSzCxpv6gaI6FvauezE3XM+ngDjyW5gki/z4BYqVtoV4xjIS3OU
cQRryDHK+JuHQ7mAXyOaBK+n2a4idt5BS+mOs1MJaM2lvEf+DbJYrIQFRMK01TeMLSXXqz0eAJhh
L361vwUkBMXD2bXNL+i6DnOQTHxdZK7rlB1xMEs7BkXNoQjOzElE4MdcJwNQbsWqZsA6DYy+fU5c
FYQXEiteyu1AHB/e8ch7fPzBD9sBRcxUG9H/oCroF/vZ5kycoWPuY90ObVb+LLmvh3WTejiqaLbE
cE+2VciiFUef3Qh6EhIIxHNOM9aJ+XsamCIlDMDZLwXo1wCxTUkEw01V3U5fjRl/NTqyR2bLGBWH
06jT0RrJZogwUu16Xn4/8slCoxQvMLAnYMB+uL011yZd3yHg6vB7M5LYJhdHTOlUwfTTpd5XQMh8
qKmvEkaa8E7PbI0We9WCv3Xi+WlElBvTikjrx28vCUtGFDRS0Hfd7Djs4foFMesNy43J6RE3mj2g
/oyvOcfPj1onZaTppJChwc22q2CyXSAK4vHvf0R91ue/CqoCdUciIxX1xyususzbRBWvGvDnSmQz
3ruBeAgYZoWSwyKtedRzLyJU/xAgtfuEgGFZUqZ5k+AKeMum7XyX1qH7N0VlEwXW/PNUaCViLblm
FmlWqgof6BnNWWSL5WUjap/KrrAcvynfHISIuw0aZlEDsQOMYXC0fofhp7+6ApbaCdQW/EAJLc5Z
sescUcf90fn+o5Z2nFeRgufepJK4SwM4ZI6Irm20H8PBOjwgwlxtmklXOPyDR1f6lSSKmHBwaQJx
veYD1/8GN13M7zz/eHFr1qz7GpAMzKrhmhSpCiwBe/7EX+o2WkAd9UkLuzNcyV3Wzp5VGgIHnfnN
xfFB9vxHQ1DAmfbl90LK7NLZyJIrR2ScMfOqOZpqEFyMsxxnz37/l1R72HXtCyVNtOwysB4fnp3x
k4r3gZznrFfA6OIRmiJ3lZyGkiCWp8SswyAO7IuvauybZMyCoqabzMwAPos03WZ4jFI7DqEJ29Vq
oIiqAIj7V0MOQBDT1MkUUria/qk3WRpabUoP8cezt27BTxKYZVgdWOYtfj+8/xC/uJfkpyzHy7z2
vAu7pT0hKpvyGuHfNWSNl3yT8g1SbxYp0Ervhmp32bCyiSfxy8xfpwa+19ZpOVvd5j5A7bSn2yJL
IRFMNb2bqNFgGGPWJVeWlTJdFhG1D0ZhgA0huEC69fJdqjnAWBrNRtHahWCEXRCxH7PDG6unsXA0
Wa4jTs4YPaRN5To0QBEsAX8kTTWe3/MCfsPetb/I/s0LkGya5k/aL6xNG8zepmpifxZwSxkRUjNK
11F4XAB0C+1VIkc6KyMeSL+L265OzucEtAbqH4113pijKUE6oFo5zdJVJDievTd1ZB3LaXiRl9eB
e9lGeroCDfhm+xGNP5NibJjF5rHxQ4uV3fma4xtJ8n4YQpsJELtOaxdkHQzPZKTG+e++YrzBSnfC
jf48VPMiePB7JCX93j5wrTXlteDGmryI7Wyp+tspn/CRpm13YX/QA2C/d3dnvvDR4LV8Mlo4o6Px
dQR7hdQBr+eLXDHgV77VhI/q1s+yVzL0/kvaijvHaLnhYpnV3ttJYTGq4AtiaHK4VKH02Em9eczb
X32OQrB1rrxHqY5eGrOrsSjAsg26/3C9kakmBQHsLv3ysVhXOSpMOxLFwIN/yeJvBlTTIP1TjWxY
tEBBZ3xK3v0lyDDmzu5EJNjj8N3hQqm47tZt8oe19cvQ3/+F8MdhP5onDx8sfp2B/pSaKjskgRBI
IfQ/p3St99clhbPX+US6Ht6hLX290QSB+5FS+HYMVclGHKFl2dyZv3BooMSZ/1YBOzAL0e53ag9q
o8lvufdRhlXfWe2KOjG2/DDablxV952mP52ijE8XBUFm+BPKAzR/6ZJ7bXrA/J8YiR4ginsRFS+I
oXPNMrr6DKwQYgZJ4Ml1cpPDDiZpdNC3AkMdqwfkzI6SZi/x8k1l64+1/WFEu2An6Nj08Sgd5f6U
+iWQp0fOXCkPXidboH/4E6xG9UOtxsqEg8RpvSPB2vJ4dORucHD69y2iUX3IG7UEoR23IIeO6O4g
e0+sFagLQeA/kjN0r+FUElvso1vhIec+a1MchTaSx3mrxlHUB2zCJuC3+JNzUskO+WMyxvyDmlvC
giX1QoGBDzBs2O9vTgheBa3tUhig/Vu89gepor7joFZ86wnom2DsF0rNGc20M+QpDqeToz1Id5+V
XAJ6s/r/bJbv7TEm6CzIHD6QsC1Y4jh+LXaLo2A9Tok2riQF1Ylwq7cQBp+Dg9wV6+eEhP+KK58Q
oxyeIkGe7pI34Lo+GHcNXzkwTHy5+DegzaAd2lGKRgLL34kny9lozsdZc9/eJ/uWNgXNEdV6Ykp0
EN7wZYbEp3Jm4pi/+X9CaSG7AuFnl4RocBC1Pw0ucxNWzCJr5PLUxNSY+hsBbJ7aMyQGCB+m+nAT
rcYY7BWSzcUx+Da8T9i8BFL/jVRtXwADjQXKivieQukYJB45J2NNt377W+4MZ4pSCjnP5mhoajEX
mGWWaRN4t0LdWRkOS4i9BkZtWMtDiEK/IXj8OsTuymLJS+HnJAJw1KdAxwji/veklX6sES03bXJg
UXJUHQu2J3AuqrhyWVlN1fh+09mi4A8tst3ydcQ+ngNiTQqxiG3SpEwOlw4l1Tjy2cxa98AnAfvA
2UHXoAv9YVHxIuPvu2ia20vXNCGvozA8wTXS3cmkHJ0YV2Vs4jywDff4Yd3p4RXyE2oxSLLKQ7a/
890tMErtMTvHNNN9GdLRYlDi8zo11VVgUE8PD4PqVLccbgN03xPzxNXJvdxTMWCo06cMG3x0/ss7
+dv8EJOSMm+vuyKEC79bwxDqTMEcwAlW2HPN5To/G/Z9Np9cEzIyUKkjitPwjUX4S6JJFuM9Hthk
LUQjusfeRxElz1t9d8/Gtt4eWFXKjYrUUuys1z869c0/7ul+RtEkooccIrFGua59xW628P3a14KA
GmR5Wub332VhM8f420W/gP+u4R2exryPS7m6CIRuh0J9YdAp/cgCVYihgdAhnU2zt1t+cj8D6np8
NObCA/nXr9eeMNWdDmCZ/5dS4I1EbRfklkx+tJv3SQ58SVkLhikr4zPf9zv1gSF7R64NacIq+wZc
1LvPjzNdMFzEJ9gHL0/pVCA1I4MQo8zwjMb+Ia+xR25EwRjJn0FuqMxrrINiVTau/488qjdjsykf
Idbf0ja4KKVUYFX7lq5FBmq6+UX+8bby6TRdUOB1awcOBQH60DDVbTwe9aGolxyTsnfd9ojWZlFe
BLYLRj7t2IjsdbglN+mRUOw5hBeie4bJL/5tkfK3aN9ODLm+9GpnyTPmJrCnpdMPOHtqVx5UJUb3
Si3FN5D7+fdkgVfe5n5hljl7EMWgMGJJnRhEjjdeqr0P3WAndAxtRqSU10ADylbZBuC8sZfmluSi
1QbHm7o17pEjkaHWxl3AlZ/nOzSPouaWg5zbBDNLoQ0rFOye5uhzx0bzCwrLZaK+3UrweYkqzMoz
BEXc0yrJQY/EFz5VpInj268bx/cZFHxaUWb+uaGFQhJdodjkSlLxoOApRs1KWX1LygLC/un7+L4Y
CAgADWwH+ZwhSVoRMV6QsLnvDy0TLRX0LAn0/P6qQk2zyKO9edY6PJufFJkqdyn9PXg3Q3k9xb0c
JwYB/Xze8G2uKXFqKotw+bDb3+WvY0+byOgzFt9TgHj8ioJTY+MqP77pl8FBfwuQzGCQwG0tdEYh
Pt5V9WUDooPKvvYneG2cLlurT+HSJfwVO9ZgqiOEHeqNH58DwHmF0gWXR170waXIsV/eBF6ctCuk
iyQ+DDp46RFQvZdI2F6SKXbM9LoXqO9rTsjLvgHDeLNhtz41Oist1iyTfoXBBJVbaQSwVndKyh9g
0NPjjISVqWoNeCbmHBFFnLZzH8psshMDy/huJ87ifBC5b9tXJN91MCQEnuCq0+4/1OUm06249db2
h2S3CxM4SfosmpzVovtf1cVP7WsBSU2pP2AohJZylwIP3mpGBjDxEWpL2xmmmy3m9C5KQBCvLT5X
qtz6iUOTBZrEDLtd/uAJ+SJDo8JcPvVt2sJJrPVvhjYg3JoQZbe/zG+V44xqv6TLSqApWfc0oAvS
o0K8e5vL9aRmYrfotb8Bbfos9c5V6mFkOiaU5w40jx7KCoD1IHY5HRhIrkpfBlla24tnD2HpxYo9
U8XdwoF/yTCBocm3Yv3bPHkYIArNT4GlxpmB5kbVn8fJSKr0axKKdyjdd/7SIhXoPWqRET1pOCek
GTqrVMfAe9eZy4oAPjC8XRUzQfIKeMDEWvef3081dNgzoaBJQlRoouZ9C1hO45d+MYA6eHmTnWjE
RfP40zYIAf70Z823B1npSPCtNUm4S+4kxMQ29NpHsSWijEtTU7Fjj6d+dVVw0/A+qYuh+kQ5/8TL
ecOJlVsWbx2sSiTdjQnEo3eVExAz5bzg3lE/7DRVhEl7AsFbGnTg/0bUQNbduk+4eaRqylTxnqpM
dlIkByTQVKxGOOKXjW9IjfK/BkLDNJ/45owUGI4bx+x0AsuDKyZYEzj2sCex71rcVhb1NAPXBcx/
r3YAIZbLu0DnM7OCvPMHgLwTRXPtMUPHl7rqUyYrQ0v0pFDvkS87onf9LYil7uwyjReEB17rnZbR
LNn5SbgguMUPxwQhnXuoMPkRFt8Ji24/Z5DqovJgDOV3EE1zYkgikiAs9sDMWdKQehDArYcdow+U
c8dsVSiTbIRnPhWaLQn/aMM7BRovECaSO9qg0yPfeNHnqDAsFUyNzK+KqneE2dbde8mdcUuw2eN4
aBScqnsObNt7BpHGk2MfxbAsBpv7isoKAxH6CWgS2b2Z/AbGJJjpiQTc0mfW2Awhtl/ybuW9I7Dw
N7D5JwHAlCSpMromMS6xObjvhkYRabI5agY0CEdIhoj4V98eKzdw4c1tK8INDLqTGZL7mXawgmz8
tRKaOw/3tKF6sny+VqihdY6+6I/7REZ/2DBWLF9u6ifKS2Mdy5Ta03eWmM2LoOwVWgBfur9v55Dp
T+W0jvsrhaL/f9bH1SaNEggYJd+2a9Bd3qGKrUnP6ANc+uN4HBrluSgHhHr188vgTk4xVFoGoxh2
TLDG1M3UZdc8oBtek+RphVzIT5MX66A+jyEc9ifnB4AcF6oRSiHrWKej60LUzyz+/9sP3uu2ue0Z
LdEs4lVvTS/PVxqP8/7eYL59vQ2NzZK4PxpCQ07dSQ3KKsyWW8yJ+oaZhX86Wb8/klSsg0NLfr6w
4zxC+yliJETT3SFUztJF2cl79Y0JWFnoNCt4DUqlSu6n9tuEG+BUfTBefQrsYQVlISdFYFDsZf9W
Bh1s644M6mkFcnPj5f8vdKxM/xpqijsr/PGcICONs76QK1Fx2Pppa9YDlsCo6O0OuYKvRoRlJMHE
AxQ3kfKuzO/QysNbUyTr52So1DySyXIdc9tGyDRVSBSWmqj5AYfMtA0xvzIZKuvM6clAC+18EKoq
p5XQg3lJfNHEPY60DXf2DWouJ0RQ5pvKZfZQWzvl4phxptyPC8JlftE7Kne4UiO+TLvmyGaWozUv
qzVMsQq9CcBl8TtEVlNk86rQIWSCWyMq9j6/rbVHvGi/gDadK/OFkIf5FkM6YiMS4S05BcryzmTm
rt0yd0TGyfECsvHN9dWXmrIB3Yzc3B3YU/Lt27G1KKxcCCTzOyK/xgivyZrhVhP5rX3f0AANyH5T
sECSa4JJXKX4m61JOz4Xp5lb7IXXhAIVaCDouqEXMm6JLy9iud8vHgP3ZtPoIxyTRX3GD1AH8A0g
v13BY1N6s2ypcS3Ml6zNg+yUrKO45UKFkDkb8yb+eW6gK2CneIEP2+1lSqWXcJ47RYt0Swysslu1
iXmxUtcYSU26J75etg5wbgcOZSvOATKKtnfnXPsMVfZ6Baq2b6th1/WgQaqOi23CjqSjNu1I0lDw
Your+2/9bkY0UBLE2SWWWBFXEH8eG2hCS3fh9H9Raiu+3hw65VnhQFXT9HBhqMY5qvWu0r/DD9ip
Ywl8+GI7TXJ01uuLYls/tMIA8Y8+ypB2nzWdFe7w/3kZVw6EmijQO44VfioWk8Mbg583hzMdc3NO
IJtK8LG5JkSpA/b4xqlhNNHuf5gA7gFfrrm1DHQa3JzCXwbaCwqz7f/j7QsW6dhPbNC9FfenGCiI
6f52zj1WRq/igzyTCjMQDDaX6dERxbKnUWzsk5ByeU5aX//dEWfINTcaeh/eDKGZF4kgndcHMh7V
oAkMBsVQafvMhWhf2f/cWAtDncYZrt3+gUKprEuT+3+Zh8wAO2wA5FwS2iLOpn2nMDu1kcBJgBiO
DwYIzv4hOowgyDuqNxiBOlWftmUHGQ75Oabkrp+kO/4jg3NfgeNb0SHtnFAQKypj46KJPnNOJCwk
RH4QIxk5Km8+MsUE09EviK5JjgAqEEQsPEdtA+JM6i6uroNK8vuULlcWu326Yc5PnGNOP4LoYe14
TcQ5dmkb4Btb1w7slFnPFTa7rf4yPYFwTXfvWstyUofh5IwjXKE95w7iS/Zj/AIaqS3S19mMtB9g
82gS1l5eHPxstO8yWESLP1Co+x0poFuOn2GDbQWYbvaEHF3bmVaVqQjPowNnG5zdAUzSgSUssolN
QOlc4GfJeAvzcN0iqE9g2LbcR25zjryiNn7t4AGb5gNiQp63st5w7bTfaNl/1CRHtg3/boDpvSJ5
RD+NAZlzJD3Y2c1NISdtwnxxIToiewGqBsT/cKF2mPiLANZOEYzzaXaaT7xtA9qu8vdNtoQZEYub
ksQpBa0mAqwvqWLK7wakt9ZYjJTqjy5r8a/jILxp6kiENv52K3PmuXA3+cPJAM3YeeunK3G+c5eH
csAHwy1f9DXMsAbdYfvIiaOpnE7/3a8sQNcrJkKv54rxkvH+jb4YyYpeBkPFbfVTiNUFeYj4hHaP
fZpuO5cJF6bVyYVayS+yE/8tySmGZ5qjFiubwGzu+hCxVO0ef5KAMUe/cvU6ZXjG5RpCZufiG8p9
udcTULZa688EqrDyqOXxnp88PWAPYW4EaOKekdf02WN2ii8mp+NPW34SOiPcHSXyV72TO852Sxin
5X046lsg5o8P92fXW3Pm/mAy7Bo6Ibu1au/ybKR2e5Zao3zpu/csui9c9tO5CokJ8wvBlwG3ytfG
n2m4EaEihDgErisDZyDtvzJ7V78ucMLHAcQFYO3z82qCkBnlDG5ZZsmYd1c0BIlN6HzkZ8L3EjNh
K8A4L1RT1ywIhiTOgKfG43wvW0JN9I/yRiFEuXUZxhu0mERhqj4h3/RX9n0CHmt2bzm0CuouG3zT
u0aQ0jv9wyq48NZp55iYzruXejtCzpUTZYGCOxuL1EGw/6Ndbjh9OVhIgvdMvH86P9AihigV3lho
0V53Q5vRHkAJpOLNhvnE8yZ17w3DOWIu+yR+oujTjd5ssLNLIc57BEuZyALwgyGk4dB0OVqitc86
pTDUTtjP1sWk49xUyi7PYnrQtahEKtPNvLXOPvo4R3WyChemqs3Yz6kqVwvNwlxN32IzS37H1T9h
NNrYLh4TidG4QqgPnT4nsd1juLEG8OfheNBvavgv87pxaOTx8eXiz3A3OYlQJYjqpHBiGUVKIyDA
5JRxXa3q6qc7XtgtP68tR49JCE74+eD90VImTFbTeLBfNsIWD9jPMppttA3iSXmTN7XX3vlOhZ4M
A5kWKp0gJHGYuMY09dauvk1vQFAJyTT4AYfpJVJL3KUZdO4XsAf9JU99GaaNAiSF6UADwF8z+Yij
iTirQ27SdFtNKU5LcR+gqZLeB+oIeHZALmqIhJxR7lyFjjvp7pWCC2rCApIw6vUcVXpKdtZn06GD
afLhVDL8I1VCiVYFwsARx9m8YRs9O00BykaSDzlgeSq/8rRukQe2wnSiqe8/Nf+D2zqTNDOeewck
/SLXVFmBk+H2PkxpYlw+ZCmBZmH18NGHa99BOWhOKk4zlLrTx7NdTL5xO2wQqvQMgTlZCi/UmnX2
abcigfCodAADM2BfWor6ltaqwXWlszW6PYWipCts1+w/V+393e1jdtLse0hTfN/kY9Zg6OON5ywA
dKQv+wK37O5sYP0x7E+1uktiOXjZtuxvOXBOM5fqz+YFMQiQYDIf3p6BTRteu4VqHc86Cv/1sK4b
qttR/4gRFfBdQHcxaZuTzbMoj0XLRD08PIfSzTCa7xi7qyJYjc8OxFpTEGKsyEKcWrOUQSU9THsT
OcQk9x6q0mXNeCoN/BYrAtappilvduhDo6UW1A5AprW42DIN0StI8QUBuEI9GipJK1Gd6z3vBBtb
Gk2f20cliRa28o5zbRbROBoUF0sKWm9e9s/laAsf5TbJ98ToKRQWfH3SGACjcF41NZ6uYAnltDxA
B7hfdtiU+Xwwy5FSpJHB2Z0FeAwmWxqwYgNG388YFq5fzndeSPreBrPHCkHHamemWBwP3pnArYE1
rJPyycZXTNH8DXD25y4InleHRCZnaoZVFyvdeG6GuZ9fxQMXPaDq2UksQast5SMl+bfPypWlLi8O
jHk5LNFMrHFNKLxgScnq3Zc7zMQsT0cSBgxaQE+Pfuf+QAh4pRgQ6oljau5MRXhFApUL5uZFQgNR
abkxQxmJshAgovaT8Sd0lpbEe+pOmYZdSCRlE/yDY1I4Kpg16r94AjF/gRyqb0mrEOWGXu/Hocmy
AfbnvgTlgNwMnjWtYiTYG+WYVur/NIFd7tQtB8WQ8wYnog2MT61LrvuGWicEOfertY1qIi8ObIxr
R2Jfix+AUp82cdgFL/HgQcK7wcI6fSG4NcFvqfKWZY5N6wyd/gQ1mbNuLMC+LcAz5/MKh+IIv4I8
aL59dCbWoXmn5YyHlz/Il4rBBEdeR3g3Cv2eqiHGANsqrMrhMTNope4GxdJBFq/5yuBZSJ6V8egm
b/Dq/CVqp9IzZMmBWFgyGpgY3WkqeyZxG9YIXv/vpYL8qzQjDdMAw2dhf3egtIYCXAMI844JhZqj
O54lcZYWfRdJn93XUK+UNHiD5zhwOFqKp/rYK/1T0i76AzPnqXr8rzJMNtKzW1IUgeD6h+2423bq
X0EzBQTo5b0EYYTJ+V/jQt4DYYkCq8YroieAnfsYom9Y1cLAX23h2bbzTljKGxbz3qnxci0ZSmr2
eUH9AyzQORsoLFmS5Wu8U1vrdzE101bQdYpIvY1kezOUv1Qrm/gUK9Ecf+DLPaf8jUHb3Aqrg+7u
+wRyuWLA2KArIVv5MCmVNZ4x348BzQoZ9NspnNHwrFm7r+ghY6lE9vKCKRS9g9jl2JBBhsTIQKAS
M1SGFC7SqtgXjvMdUsZBvz8nqY3yEVsNxA1ASbo107kjQNDNh1CH2vuwr3pFlyFAwA5vV/7mWnSx
fRA2neQ8Wc18KQ/hb/vUCMhXCf8fOTDAZLPri7jrC/t6vKO4BEp24TjC+G62i1VQTdFJPM/c/hU7
6ZnOy5qBwDvJx095w72WQa5rioOdRYo9zrBqy8L+O9peeJ3EGNWgf49OKpnWN2ZnwKOiLEMyMXZw
H7iYuORWduhq8xfWznCv8b84BuLByVvssXdBlNplQfvQvpEIRquHHYGLi++YMk2UL+EYDIJXls4W
gBXFq3PRo2X63d2zvmUXhB0CJD82xEtyC0Alcmt8FH8TqQ9LmHkpym/+aD3jdjoJDTFxTR1bve4u
W8ys/ozXYRFkpsEw4UWm9+JU0CFNLBLTc5E4tLPHAeh0dwZP1swA4W9/CPFxBOMP7znJi8l3juWe
UYsS84f3aGcaj9uyD/U23TrsuT6sklaR/n1J2UIZAJrai9yVJMXY5dqs34J5J1G21KzQoWIDjeHl
TLaHlb5mueKLxgBignhNegevh9hFrHldlxco6FsZx5V+8ZlpNm3CCzgTqY/UZo2wpK1Y0nEiZhDj
kzyHLcVEiAMELCmqiBsqMaa4VEYIaWfw+eqGzerf4EZRHw72XggwuTPgiMmsbmdd5YqMufa2+r5v
iLUOYMT2/wtZG+sQ87lA7d18uqGCmWeP+CBOftI2XKcXlNK7bduZ50NJK21NXHo38znx3HAN0/XY
6VkP1H7RvY1vkHzs0204ndgeFXztYeuEot21UZWQyJVt9hhx63rr2tlOHIlLodyNa4Imjj5zErYG
Qyhn6wMBKsYWbyWTDGz05/VukYx5ewk5uDsoa0wvLaDstOr9qsOdZd1ZKIZAQd33awYJhRwkT9c8
B7Y8jhYhYLIx+/VbL9fAKPsMCc0cS+Tr0b7bzZmFaibJdNsyzkqYgdgf6YKXLxOWbegkOtgd4Iye
YEkRG5qJRbJn3JVhDBZJU3tG0cVf5cmO9bwtjHb+HbAuVyUBQWyezVI57sSR1pCdhBk9tlb53bq1
yKuxnGYy+GbU4Gb8vER18jHyei4aHXRNRIXA+5J4DcNnGWBZoxWtUiqHFq+rFnlgA3YxCRzDMlCM
eqVDLyvhjFEiG0TfML9+aFzw+4ZMRvWSqVdkOtFF3aBb0wWlZiuEJBf0orYOuqTSv9f+AtWj9I9D
7XVu9bA2sqUaXpihpLKbTYJmpnye9Z1J1ufIdNzYerKJD9ySCCEvpEPtNVNiPyyFvF0wz5PBAs2K
ySmamaEiFTBOhxTbLBgt5SAJIgw9mGvMZurzemDg0gefT4ymaFNodjHK+zLBWIpKF9282cd/Hfxo
vwkusa8R4gsg/qKvF/VgeJJ4+54wyJb/sNYQK8KrH8hs482vtM4x7e8Y7kCzcKGmYDFYL+//bjB6
qTFmYIvsnkoPX7FQdJX5DXb9T2VE4sOAqGHf4dLoP/or2o1aE45gxQ0tv141jdu0lHH35DGnOFwH
Ekt/dfUNIJyb9yk6yaJ9jQCdQbAm8B/INTDvCuVux4mfBNx8214Y4cRVNnYleqkZLKDvjniNsYqp
eaSxKFP+nd7hBNxzppivKe7HCBzd/1Ccwz6IkCGVKcLaofNakYXoIXnuTBv68ETVLmaH2an0/Gj4
SvJSDIb+M78csq6RFxTgcIilwouXvt9s5ex62vSPUJfswarch9CGwGEJ10/kTdf9pNAtVDwwWiPj
WDc0gDLdhRY0bMA7buO4INGJopJBWWJBvnjM0ukZFJ4737ZqOt2Ns0TYGxK3qMOLX5AURD0nk8LN
rO2JYRUKNtiRjCzNz7IGwxpOYlLZbaBIdyCq2om0bbx00zG2fxj2Nu4bbruIzeQKEafHwjHY/MCC
2hHIngNvXoROqFGSaC7/bvEhTRprboeWJ/G4202N+xREhIv9bXGs6mulQg8bu5TCgjoNXwMqL+MX
BUVtp3qY91fmgEsd9m7plwPH3A8A794oa7+2XEO+nPomY0mx3r3J85rImOsKinCKqg9UCCETuc2K
uSJouo8fk0H12I4NR6twbEAD6Jp9VMtJjxpEkoh1sXS1c9ackyDX78lqZQ0y96z3lUGxJlohGoDV
k1GI31oU6wTtNc5CDTcvmZMX+7aDHUp6Hk8YjfuxJa0trR+VOUXAKKOvzAc450trKW7eNK1yLc/u
BNmw1A/wTDkHlnSC89DH8OpRMUzm25ozGQhQ1QHhPifuaRYkitztrvKo4wdDZd6EgDbpvFQxQMml
QG4K9BoZ4LoigBCEbTaXOkAvOUvVqo+9TMskaibeghZsbYdc3zWY2MohIeXXItvkex+/ff1EdNPA
SVAAe7XbhbIqJt0oYJDXx9ujIUPrloTn8OlTcE0Jjich1OwipnTp6dPs2dInd0eUMLe1jLeP5l9G
ybxaF1xU05eGS8sW7hdvaydGY8oO/OtZxnBaW+WiW8s6hKYdSIP9M0qQrQWhAIYT5XdqHqgmuFbg
/BKim97lEXdBjLZOZ2T2YiZCSoDraG1YW5IfGVvh/z4gUYNsRM5/ZHoox/oVuzGjolleBUGJpcvH
WEc/B/GCzOAgArNWyB17/CBioO2M4hODsK2ZlbKM69mrTBY/GO+WLtKqd+6lq6aFmBYS3kvHgbFq
najQYFFqu6Akf4p0fN6REtSsJwhhTj4kZDZPsEF9pwWeI8b8eeypEkWQzvAbSYEaCjaU7/1KJcqK
Omxuo1I2AXhtje0NZBQo65vONhJSEScAldjsv3zy6vnpEG7PYleDdt/WdeojWRNrARL0Zm65Y3S6
/2jSNlgv8HbAaFBEmlz2WBRttrkq6AzSLybct39ppBtpTN0Fk2MxA/i0k4IHcSggIdnlElAG40JY
YHizYZgjLe9vfuhg3NO3njHeArlBnEalets9ObV4KRsWv+jPC5aqq8MElIDsCzk4HZrYhUMEM3Y9
XHeUiWNuldI/sIK+jKeHroxPxHwhwnGjqYX9KMZ+c48VgiqYbcFhu4LOQDPDgljJXONWWs4l+Yks
Y/Wrf74qkxXJm+k7Eln5t/ZXSXqYk3V0KF3hnFSeoVlU/aRt+sESA8Zv825MImh6VuXRZbkxkVP2
2FaHuqeFQZ2yRDW6GaoAw59Ri1yrMUOXllAt2i8OORoRgsXONVai7mNt2YYPmT5RxOzTj4Pch40M
XP4zq7ljWMUCWXaqGUcnk6v1nTZw53lL+aP9/YVCoe4v1XWhkEITNpL1bu4uQpTobjxw0HioP3AD
Da5Yv5heEWVqcqYwRTsXSuv/GlcCzZKYLWg0jWv/ek6aASaKOR0xhRA/bPJ1atlkCyqKEthB41g4
AGqEnL7ZB36NkR6AioSgQwPlhsn/Sv1omUWlkmpIeKHbpwMFrA0I2dJ5e5IrZuQrANw3J3qRE7xe
nMZyZgoJqBHGMxspcS6oYvSKdkTZunzgTEFwPhX63Rz08A0zmzawNB41juaw3DpBLfwV3gupNC7j
4ud513i11pFIi6UEsi/0uYpfvBSmpGmKLxV6gL78SiE8hFD70NjLmmFHsJ4r5UcQY27QQJxoNmCk
bowvl1sut09VKFI/PMoKT+JZ0MXObyu+z4o7m6wqGmGVzazHV+tC7qkfkautwg89w/GT+XPDe4jH
h6xOXCbwpHxN0+YPQARJ5UWcfBxx49g3W3nE1CNFxkQxZZ5FZxYft9yFn7xXwgNmuqZgGxNqLnKk
HYOMSU/h5kj0D5MrOizoL8qMUoy01sYK8+jJb54OhuX9KXEw+ChvabBSEqO4l82/Mmcti/zI6qx4
ZNh6NnT4dENMmZd6dSQ5o0YAR46dkjIs7XROj/CoIvx7g5qvoqEXQotmvpmRAn50crbX5ShUREyc
3i5Qlbwuc1ahStLafNyOm/t6I9g6AbGqgPytMp1KmzvLRvuDeHGFiLB4pyfl45Y6K5U+WViSIrJU
eA+hYANAdVieHk+i5Q1bQiEFKy3oI6rOZbRH8OLvouSDVV0zmW51sB+liwGF5leQ+zmMUy0TCYpm
CwHhe+LMFIibvg19v9a2Xu/RSYNRSX9FNKLE2AeBuGGm8e90SSZA39+NeKHz3BgxQvuTAndfE1VC
ut1Eo0hPwY+2JlG/h7Q0q1Pgb2Kj7zo4iHlb1Yw1lT8FQkBKI7gR9/yOr0I9M9DHislqFYY8oNEy
AcEJYDE1X5n4mjt4+tNkwETj8m/L8ALyLG3oXgKfAHqPhaYGwrGbtQma3bdOvmEEQgvpmOl0nUw8
QRAi6tJ3TWec3WIwGwvFip7SFpyyY2Ji0Pvt2LHq+3/KMSLkwKjk7vAYpmq1sRsBB+Jxq8vBCREt
zFV9QKb4OJtk3uoHtNTT/rmnpPexQbXNDwyNYjI/pjvySjyNruvJLtX+MqFt95RcwKWRZ3nsQWzN
18RDNnwqtVkzH16XPgePhvcJo3hvt1+DlvSivkOtt+0M72LMSAAKTr9mD7tO0pZHhbx4heKa93Ba
/+eU73QENzqXY/lzQSLW5qPONuU7KRKo7rpA7G9ZYHh+/S4lZQyQeWFjw+sBU9IdyVypas0js41V
CM+uKqSmJPOmmBTYuWRbzbVjDLTfesJz6JS29LVVh/rQSjZhEr0fork+gnv5aSGmOuedPxs3UTVt
ll/u7Z412YuTcA5ky3LFUlREaeA1g5ePBk9aq/w0qmvbrhuyhUfs8P9mUNVeY3xCAys1r2XmzEet
nGbbO+qxP6HzZIZ5cgYQy/Rmhb/D5SL/yBBFoGbgtSqFIB6/wI6/I4MUsbgcBunhpHlPUnVw5/8V
ZaWc1/hEKtimTmKTgE4xe+EdvJn3hgPyV9iTqCHrQvIFyZxBzHGQx+tERDHFgy9iIww3LPuCotz1
YjVNpQMx/YL9yVhCe4XrHDGhNRhFkRzIWGfS7VVKR1UYF9oH/HrNFQrcVc/CSRqtMy3d0SjZ8DVm
4O9lBHUBfds5uwSQUt8aK7hdRNwZbJvcSaksULbY66NPYGLIfbnpqlrs9Dl1gEjS7Lt1DkjzSTvq
+ZDGO3sJRXupSlOM8DaX8fflKVkeU5h4ZqYGP70mrzFjXavw23X/XkvUYff+FoPi4vcAbX7K+N2l
sOH5/rcBNrHaqjAJVe0nGUoCHnTizr/uHWbeooirZM/cHWvn/8bbDnJb3+ro7l0vGdU3JiwkH3zS
4w9tm014EX5lbqcXDxTpNDnfdlVBnoJbIUF743KVDzME/22B4YTJ8QPx96seYz6VbawJWYT1FX9F
hNoVjkYA5pghgqhCJebn9YGpW+hSxv1Ng32kGJx4hZUmYeTK3qQurHJzXUNSGDswkRYWpF5SXmLW
yQ52ydqzC1dnr+ginuWLHeR6oVB1kM24qJ5CDkD5O8wWRC2NIAcN/Tta4v1wxfuyq8Vrfb8sB1NJ
WlEAxgQhBVEx1Bjze208qVGuy6C1D7aw4/EnsDCjlhwlBB8/B4DlvUfTKYBwbfU2MDfN5Ym+Asr5
EfxF2TbdPI1HpN5c9rlsYSKp0Pxvn4R4u5kbAVL15mP0FqyffkiW1Uc5Tm4Lz58n2dTR1wa8FYst
zGRluHhymJN4hXIYvIYPX0LRKLBLV2q3HH2Qbl9g/8Y4mZTS60lPGvd7A95f3Swdic7irb8qlG2X
HP97/oaTmZ654qLpX6eREIiP4zCuQe/AMxWvbUHoo7zwm7LLAwXWy5B27fpTviN3MA3v1ayirynS
Osm7oOUeifoRnmpcAOMKRQYNZIRXCP09DIThzW04npF2UVNmNHt7ri3G+NX/kfOXyTzoIqf7Jlcl
SHFuE0DVjIoGJzHu4krCcR33qjIfzK0mqZh3XmOVi72aLEHAiKljV5JP14Un09Ooh3301+l0fymP
t2ucjFWyq0jVaBQt5plsNn9qvGQ7QK7Q7PshldQAhl+Y73jZ568bLRf8ter2tHKA0f7m0NI/Uwr5
F/aIVAbP+/vk54klQDSzS0oDet2K2vSwyVnkJmg42wVUSN9obwlJrjFlcl9KrSjNacR7oWLmoVIp
VAd8AyxG4DHuqSu4qzbdvYi8P1vzzX8BZQU54XyzYiyys152S5DweZQQSBVW6qJvQgmhOw8jjTq5
wSKv3jui14o+PojiJcOJMeQTDb/9Sg9gY7LnmIJWdVUy83XDsQbCFJ0WyJ9IXwlEnWmiQPijmIq6
HYFCb4uJ2k0goHUzPzLJfolHilaAReyqmmmI7GjfgSn6W/cRiHqrdOBvn84GOOR50PVOHVpco0tQ
E6vLEjnzzVHr86V4dsdIzWLBX5pjcPE2PxLYcb2UczcIT02R5ReGUL+v8zAM+8yeBbtnhJrPp396
lN5WlrDowC1J5GvOuFiCGrmd+Ukz8rAZevMjQ1aMNMwLU39vLPbjURlraUzVtW7ERnS6JFU5WA08
MpSdMjIiEJ1FlZKZe6CtcDfIGQC7k/krXngUikThGeIOkoF1PweLdQcdAgxKaHXn+YkluMjsuMfM
8OkPkgVJaTmTatWlZI5TnckJVbdDP6jYa6MhVBbsdnxsM2EpRxNsf2zro8D2oOQif9HzrEbR++/V
eWmfZb3lrldPS7q+3yzLzeQNZWbMeeV4CdTIH7BGwmlOQwQ/p41Upw4zRvyhA4ZarLyfSEI/zehc
XLoJocQbt9sOuaJoMDaE5qsw6pLR03Lq06fpKCePoMpzB5HDUKFCrSe/N7yEkbDZq6hnDbKUtCVW
2MybUA6OkvLkPYmJ/0MY2dkrIYYgI+96jDc3SsHOnNgmOGPQrwm/CL9cIXvKD8pQZQvdofhB7zZJ
Fi4bII0LipnsJURrUGz+u8N+mFaChj/JpNdjZ2fOO4Bta0dXRil6esOq/OTPHrCg8+uT0xZ2eE8M
25I9grb67hotjLfqNPkEtfJFJHHqXewnJr3E8DZB1aDTrKeqXfX0oRH/sQbtlZcGivelL7qBl9kx
t0lqDT6gqi3L0e1QCbePXeggXZ77+OCKvATmKKOZBgReUlcCPLS9+H+MrLyxYVvxIPMhA/V1s0JS
z/qgzwYkuBrtdJ9zBdUd1LHhYI+C5BNlkTcnlJFn9l6++lv8JUp1pnhqHySnmAOpCrbvXm9FQxk3
iLxFksLXDjh7iIow2D/EHLb7Qo6lkU6ldcAzSfZl4ZGKQNBBHAYr1OkK5Qw4RDZZmDGt7LXweLfV
0/HMIFLuVlxkUvFM2r65LCoZZYsFBZKi76kmFAg2izgTpYte0eR5jVjzHArXk+AeORkvVuscOoDR
OSnSf8yWON5X4Nz4GrHRpcQiwYmq5Dux+nccHeL9rjBgkRalPUFUy+Uk2kyOcAM15vGJMJcj9rPx
m+hrGLxp0kiIDybB0p++KaSW9prVK7yTe+oRr+uQJI+vZnFjBYm9Z/TnaHDuOakA1xli/yQGPxR3
OtQDsIBWLOgpNU0AyKvPFpWQlTY/QMkP+xeo5i9bAJLwfaKb3VUoaPB/SCsFAgHv2PLWjr2KLHbX
F5IBkw45zU/B5G0YmjdBSgbD0SJV5no+HTrYjRi8x+7ypQJ06dxl30tv4mbfhVkNCB+TDV5Zht1C
vdrvl9RP3bqOaQysKlH3WXqaq9K6/IgBR6qODt3mQHWotXX27r8l/KpN+qQ31DI30kuVz7eYZ3/o
jhaRhrQewW3khMBDsjapt1l4XNkI4IeoLAiRaOulk5gqwXcH9ohnNqtsOrsD084DXH/1KYat26bw
HjHwIB4B2+8PIM3cprFTdrW76gbWofqzPeAjVkOo7OfVNc6UDpHJ5Li40iQptzflQrCLCZlIoo/1
gIfB6xSQdmx/JVTO7QtQs2sVhWD1WC24j9rCxVy6If9O+BNb6oHrClJ5im5RWkJNDnHJ1xJBKHOp
mvFMrXLHAv0QoCWnjazyUJMK9ec3mX73Jh6EinsFjaXtfhc/RZDpzPC/pbLtPjgsgsJt100w59iI
uiVyiz5kO0yu9yVXnW7uwLflRXGeDVNwvkx6+A0AWewrrBTIRAqfVhf3FqnvzB3NNULVVlpNalcg
MTK1sGM19pkYwzpjXKKxHSJHyzvRW8orGh7b/2aYeetkh/vd3zXo1f6L6wEQYOvJHv2FZ6VPPqXg
Zaa1w770kG1TVunBBFkLR2H6cC2ykIy/C5/mhQ8BhI1stywLiSAIKlvXHyReoMOXU2Ia4iL0y/8a
/O7xjOWWuUgXxVZmumSMPTXoXLW07B172q4Js/wdBR6iYPZQheIlxxs22YdW5u90xQ2ces24w9OJ
eC+KNU9PO5km40zcnqChz01SU4ZrlxYFP7iAqKj7wMTD2GtscS3tMVseeNfjNLkoUORLzKM4YAXK
8S1BadtHGAK8Ik8imEusiQ/UrYiqASm9pDKHdHzzGHTFZZoL5/dbVU8nQqcMOy/XRJpLTnHHQEni
OmgwJZFUBQXiXc9PhrU2Uf8AHSMctsKKvHiuvEKzmUr11QkYaZyNa5pSlsHykJXC/I+BDbze2K5H
Rq7WXzlS11DBJ0gF8NhsISXMXX7CfL4L6l70vJ5kE8QxLnIPJ4R7mrvtZHQH3RwCEuoy9UT0XVmL
QCy+c4A60iua3ZbmYyyfHEiDKULZ4OzEneJ4tkbZ/DonjE/d7VJDnf6b4J3mQaMdMNhLEV4KDTq/
JrEfdp3AW79j+9kyOYiQ8+ywTDXGK14RSvGlC2D0a/QaBWnVEnLVPi4T7hwo9kXup15Ls+w8SvbB
lY2AwDzT5f//9ZruI4x0JWHiU87kodbJYky21Kz7xnR8gijhRsnpcYrX6E+9NxbhbbagR/WU4omA
9eLRXE97Kos3qwSx7S/1vPZIr9k5vI+LMlkxk3sV+CxB1S+bOxguum+es8X2+KlEodF/+nxXrF3S
hwpRHSTe4PWmdjg6n7vpqc8belGbSKhg/UQsyE4BEJSBJzaHEC9hmAEc0Gp+59HfzQuUpX0xZLxA
OS3ei7KX55YwLRQZaAZsjc7K6BkAoYvLpi8UbDB9F+oSOHxBeDJFrLiKKYrQXIH9kkIfFFVMLkSQ
+74BakO+Mn9SLlPPSg47+lNTnu9G/4rNjKxNJhjkTvVXqx3kFpIDjcb1i9N9Yv4zZou9RFpGajC5
IMezHXIdos2YS4gi+WpnyIVBt/f0YkEPTcT8Ge/hDsxuibHWSEMqr+qtbt7yHj4KVqx6gC0RUgGX
sRnpfvyqWpCLSce1OBGyZtzk1mgr28050YXc68+d7Qu5LsqQMLNPH/JoT08bzWd4bCTBlaM+IqnB
QyI2eunwGuo0rP4YH3k4LPXFmBsBrnzQuYccpB2E3juaCR1XAOIic+G4uwWgjwGrmtU2zR0uJnHL
UdTQUQIqHxAV+PkGaGuJR4g2ooo8da7mJrzPtmF4Do9QqKWtX8dis+LAFo/Ni6iM2lK7HkE/19Xe
zDw2VSKMIFzP5Tw/N0wsjrdcm8W1IH/rFU8fChuUgvYX5aBcPKSnGJJ5GeUC1fFy2O9FRPeec/nc
UcWMheMVvaojGCaIJ6vnmXgL/QQlGJoU6EcHzU12byh7ScB3e5KrGFY+8VwfLJd577xmhXu0QphZ
zS3wTuqN8U7VU/MlB1oHW2YulrMdeOsL5alOqsdmWDgTWCO6ivG2JdT/Mf3injPg1rvVxodyQaE3
/wFrP3SF2zC75artqu9Wbc42MQC6l1gvdJlDBN+ORYY0kQLLHR5f+jM6Wo9bfeMJ1FOwesXs+3WB
lyRWapIGMmEPlHqm1z7+bUTRe2aSYEbD3qo3JALd6fTfvN59xmnF8DOATj18/Us1jg4VPMHr4o4n
5C5mhQ/HHxRh5W0aWpv31jof10i7lgFLOyhuTKExEmbD/oynV/zC7/r/AV4s8zw74EHc7QEgrI1v
mFEmgiG9iqJe3hr1iD6JviGCz/4OohtR9Y7Uvrpp8baOsgw0RiAw5wFIBm5YaDw0YjqE/BLMbfXj
MBKqD8qzUF8p1rvBooMCFuRyve44Zh1gsQUgczjpgacpS0VVG5lgEZD5kmKpN1SHPcExWgcRAt57
nmI/yphJg521eX1VkOQDR5N/+jgEi//RDaZWIf1lCCZ5JB+WQD1NqeyEsnezy2o+jl1RZ6RIhCwK
XW/Ts6AeXy9tMTwOhTCn3YU3nbedXIeVL0E92clJsZ4gBotzRt9WGfPRXRErY9n7CgHpupVMc2rm
/OLhDzT5GDbgDaX9ZFxZwfVZ+xyFETY+UV5TWdocIxCGVeEAAGR9noMp7nD9lYuhR0rVlNBziPwV
gdqAbO5PYEfr1dVsg6JlEAtk9xw1WaO3n45lTItjc18aJCZEvD/WAdiRfGimv4OKcm43Jein/Fdg
p8bSKN5XNhfWsuhdPKG67DW/ZRFzyqBFs/imgHN9UKbRz0j1cBCZEprRzh5QAYusWnBHGEU3nkjA
1ZzUWjaKfDzXomUhwCdBwV4/fnWK/XIiM92jmbgNMScn0Iyieg8b+nS8RzqoqFmPcMQfuuoaGPjF
Da8zM+X8jRcP5DhGS3V1KPH9j4AZVM7llqMEDHt16tejjzQbr06zeUlktvjn5uUaBgnbvLwNs59p
Np++SIJ6a+5QUEbRRSVEiVRhCdmTt3Q/FuPyZjGrFDYCKKrGBcc2KbiBCJaHyKymuecUb93CSldB
U/gOB6UGeKOuQhaSncIqymDPJX/0vo+FkPe1v5OaOPPv5er93sytxtw6TUVMQMZjyVnO1yx79vwT
Fz/qXlguivpblMuM0SVOWeBbt5zWUN9knh6x4OhF8mHrnPx/6BD8RmivuyzcGcz8g+Cdd2HkDjo5
YfzZ0PB6R0x1jEKNX+qUZ6IcO1sK8uYxHH+LGG5hS4ZBmqC0Asgz+rvkIq9RJeF6gX9TSerASQ1W
13xzHde/xONWzjDzAjFjk3ci4Hi9Ev8negAxZ9tky66wxeT2hUH8lyEasJlOKt4aDxNwFjPKHftt
W1gHlgyUUL3pqVm18WMJiqhsmoliwO2vPCnwQjjx4kqrqaJYab57cxNrROdTolpZ/BhRnoOzDONc
mtUBlRdt7a25wIdYJ5E7G3f6ZuAyi/hTkPPBAzmRnvTNzyRwopAjtwVfr5dv1fy2/r22uR1dNk/F
/lTht2wQ5PvGqCbU055WcY2WsE3fVYrGEc+M4wxnXOOXLOvagS7Qd+Goxa9Xb+nbhut3L7yGMJ6P
O5xIJYSxmX9bVJC3d5N5scJAc/uCAKOYw3u7YjmbjGxft9bSdMVwvLxEG3OxvlRCV0QHjHYByLpn
Mdfi2dD22Dp5Rv5b+nwydzHZaR8SZO+vTv12hvVw7Q2vM4bNigRksZP6huukze4V7WX38afDfcA+
MtM4H+aBX2qMtsIW9kib5GfWKw16YvhM5eBcEiaLgEdSV+u/0nkUrpyKLwGP/RBQTybjuhNimzB1
VhzEnwcLeu1MBvs+5hk+ITdWWdlsrE1DBx7vrK1ADeHJ0ll8iQ5rtNAIPJmticpqYpepAEFkgrJG
CG65qcRMgcjLhGf5NeMlYB+iUfilISsxGo5yitlhRkBuTCdyUd+SBRxp7VBnS0/UX/0QUIuPoRFg
hRYbXNQCW82po2OWaGT3vUZDWaLNmy08RQq88coJ9CdosWgzeo4sZAitfTj7bq1u2KdqkaAxP39m
mCWW0v5nwUCfmbZpRh/W3xT7p3TZn3Nu3eZN6FTO423Gqh/ndM5eYDfgCf0y2BSnvjT6pdfcuIbD
TM6CPD+oxjU2MtLu6f+WQ/fr8Hee1p4DbBWy67yoo9M979+lB5UZZLYxlyC51KpOuHyYkr2Wfd+C
KZJw/X/42jttVPAbULCZH/bD19oIOqmq86KvYDA/p4962Z2x7SEMcCgLo0bJKVheqm9WBHxkrrwV
dlyCXymcIyRC4GpYxG9hvURX1fFnmaIzW7V2rlRB/izHQJ7At0J8W20T9sPbcDPXGGB8FE5THVbS
HjazWjmJtPlQB3UIOYBpA7PrSyvTUpYob1L6dUX1/asodqz3BkHHCsvT5QL4duhG4ogsdSnSLlnl
o70wmH1S57yyRvnoou2EJZ/HUXAlcNczaUXjdLkmX3Kz0RRtjKEHH8pibeZRZwyrmDq+EMTltQTu
y8us+bGF8It1sdZjDULqTPEiERTtGhxc9k38dvWIb/o6quD9zoEIvrbflauTLpX4PeMnZrzVbrzh
yRyNqXUSGUxUWwroDrc/OFlCnRN4uP3eFM9I7wRd7OYitYCuojepf3n9nms2nAWVEo5JZn+SGDlc
QY5z1LyRqO8IrLiwV2I/0Nr9dLHdjz07REbVq3MpkFUIhSwLgtLJa3JLp3zC5+4LsbqCPtGa//H/
ZSZnXySZ4PhOCPHfTVo0UGjsMt7UGGaJKxFE4jG3c76/zEXMyqNpsPiE+UOhspVpTnRcJsHBtF93
hIziaaVAUgL84RKXivYQrshSy3BKfUvx3lQm5rVkyX0F8DTLhmU2HE+5jWfo26aiKeL05gVkMQ9i
fq0W4TjfL9mXUuoFXX0zvn4uTDoE2nv58mS5swC3ZZT/h/d0LbewcwCBVQRFju3Nzbv8u88mVusB
3x2lC6y/vkJ9OMP/fF7kN3oHpx15wwhiLh91cpQzzrh+O6cOpdjyJunKM4MnJUiJ0KB4F61Qk5P/
R2E0ExNG07EpMqUvHdpuczdgmZ+03D6+8I0qGhbYvX/bVjQdTeAo4iVW0cqlYPs+20sTLhdSmX0y
ZF0aiw1rmnUNAIpryCR2XK3ur2CAzdOsf7bZ+lewmEXAJJ+sFMDNDCpQJGtsPJtxmJBrv9ctC9d+
jZNnimdGN3J7JcQ0hgnyoboSW9GnLMvxRs4ENPn3BS7MxsML39Jv40c3BAZurL6XZVH20xYgzBun
/x2Qp/iyFsyA5YCJvGpWHFUCnUnsYlfCXV2MQBp0od6iMExsr6FFE9d1sjNWDwUk5mm3cJFH9jcd
cboR1Kzmyzu3N/EiDFWdHos/gt1vz7ZL24qVMyz+WPlWXZFfUE4qXjfnaddIkGJazGKlwyBmjIdS
t+mbl5Yz8Is1o1ZMFOXcVmSTsbpEEhVnYPzgJQAZSUfuTbhBG99BgGHw9/If/8M4sVo5sMTXmGN3
+VNF/hwJGQ/rzdA9JVK8Btj4AWXNA4C/HfpB9+6/eLciBrorobGEIv+enzcinS1i1EVv6winonSa
a0g8iv1nJVkpkGndsHRaziNLQh430gUKlUxvOZPITEruQcsPJyFxKhyMAztmM+KILrFirq9inYQJ
aGnQ4hpdk21u50Bz9CF6YtO7y5R5eExOD0LwaMpL0Kw6uf4D7sRZPXVzZskfvf25aV+FZNb4JHXa
/9NMcHLhmT7qmANgouIODWmhWZZGKyJNs8BVvKIAi4x0wYasijRcmT5n03gE2UPlY2QivdOlcMGG
gf6vIny4VzswoC9bFEJ21qpQjVpX0PKPb1vfe6oYMyD2cyrjkMRr++7hIQwcgxqXE+xVJzmt1hUy
1/qPuDFrZ8ENpM62Jau7edvVhitm2VzkBekGmRK/FMUcytQPvgN3HUH+wztq00GGoJrQ29W/wVWK
23gJuekcvLrsZavrtJtCSl89n4avvR1HRpAANqHcVJX517pTYxYQbiNnQ1tdRAwGp2rITTVdMQpX
/kRPvW0Vp9NbxgDxBIjNpDbNfXXYxfpKc2Kf71tyQ/aduAz/nApOI0eefLxMR1hYqWjB59Tjoz72
cuir7wJjZLUZNbztARGnI1DyIwM/XdMk1AkM4T62qZXTsOMB5HdF2fQqXmBtesCwQTvUq5aNOz7l
3BcnGooM5/Xlk8nJKLSJuhwuTUpNAljvojQV/xdi/hljpZTiyW0GP45KrYJVlbG3ahXlA47e2NGB
r0AY9uUmMtD6QqOfJRWwPd8ozs7chHzfO1OYfp0Q2r1jmWW94VztzwD2Dbd4XKi7XIHLLM8zK5b/
uzbQ5ZJUONLQm9rfshdubwHLKmL9+QlAX0zFHc0cvI+r/Wn0+6J2O/rFdelokki//ohG1Cc6vK95
60dB1RrCDNIuKCLziruwOp+y7/u3NM8YYlQ+DNiF/J0oNqo1OH98gIZkFZlxDdkQofzcs/DL/y5z
veCXXZf0nZ3teZgI8tToxEnm+myo3Es8JiSo9I/Q7qfBhGgPBZfjl6gHj2jFRK2ATBsppiT6jmzT
LyJmsiWhelM6jq5e7vuh1k4hOzCQHtCP/dGKyTliqYGO/ZFwoX+issFDNXHY8hubjldDFHY/aKWo
E/yxFaVTYviTkS9Fs5oLIoDLFg52F4RIyGKB7idS3PLA3NzPps+fUnqPRMaV3/tzpqeRk9lvh3TK
xxug23oF7iBlL9oF2Ji4ZLaSsU+eXtDeqKujYREYNMYAzivOOz8MwA9SDL4mzwUYf6YVMtwfAdhZ
lqLwTc0EfC8pTZ/WM5nkJQ6lS7pp7tbWTx1yuKJL2t/uxrdZ2l6YciwC1XzPxZ6bt0CzXMJX4Kl3
rWtdKj++6dKEq0le5V1l8LJ9qmlWRTu5a9kFTPjzn4iGbBeXqvLDBHGJ2bGV7D81pswNaW+V4oFO
q3gmf5H4ax6G5b5LFDLfvTITV2PVdWvqrzi8n/x5paenXSpY59OEENQw3Vw855l/ue/msS0uLYSN
O8SFobHBCG9bqimeTpCAPLYy9LVSjxLc0fWDnJB+PFC3+6xiemco3x7iwz5B0UZRMjqiKnHj0TR1
OnIgqU+1tox8GWT/e1MdLZp+8/x5kGj7dcdOZQBpNNw6pJvHnboRpp2Md32JPz9IM+0maV6v4/Mr
ubGQ8PAJvS20nbjmlR/MW0DrLneFvTGxI/fSocN8Vii2dL0yGG5ny2Ad347uJ1sxRRcInzwzBKJX
sPW2+kxsxjEoVsiBGgPWiJalZ0EE3w+IvugYBSvbVYg45+0DjMw0Fb7k0dyXHLlq8GvcdaBSHtwG
YK1yoRx/8UcSrwbmXQ+sC7JBlnkpBj+qE+1QjGhhzDkWvy2ueh228Tk55b3N4CBmuXiNCYqQ/vUT
wP+deC2vel5JWOPXfZQToc1OBllTSvQEboZaIAg7YU1rbG82YN4XCiLM9Q7edFJKsfqyaIdb8lCl
MbnnElxwekWHoxa5KYEgEGWV9qzRgFek73ts1sOTVyxaXsumB/XsNmnaImKJbcLxw+DV8twJ76tw
YbrvZzjqDrln5Xv+PABgHVgPGuMTgR2Am2uxU7mMFi3GQpyr+Igt04Xmub3me8IUMnPYdQEIU8KU
RucrHuov9gR4j9YxPuy0AhIyKcLLWwh0BTqiNp8HL05NulrSsg3NBvYWannG1zXuMF2svOWXmJxg
CTFmuHMr7ZunMXTchggDWjcibqglw4F+oET33BmhGH1i8hbLW6zZuVcBSpfcsJa5285bUZ4cOEtQ
xfadLrZ3uScILqVZMJehKvVHptNqu5nF8ltMrpsnHDRJ+iGfgOzYagnCfpXWnY+l83imKn4hrYyV
g0QPLEglbAg2bHuLaA8MT8D/6gkDYB7aZG4RUq0UO89Mt8pwJdE8ogpBHIKadVuLbA3F/Yn60nWf
vHU1rElSGaqdrjT0tza8/E8YjupzYNnNrIh7HrdlhikEl3cgL2VERblYb0IdN5WzISIBQyclro+L
PE715fFl5GEcclp/SArBpwPdGOlL+mGJ/xuGKe4UkIEo5kTNVJfCtPqJ+qtw4Zug2QrL7rFJMD+w
7RrmAN2sgLtVAA9E4nZZbaiNhLSddXF43gc2c9QRaixHZpVzTWB9LsiZvdKSBnxq/klFIZX42ke+
Xmz563EnV+j6+Sm9CEVF6uW8FJ9rO15aJ/8ujArJ5hwMwM1fsIYEiLbSNoecE6yRB8v2FNABz56D
ZmRzJyeOhLYusGhJebqrGXwA/pPDBaz6Pe7hvjLJS/hpnrNPW0DBPdbDZWRup59wcb9qSPi6Nhml
eR0gi0d4XINgmDdh2Y7hZ8TJygrdoLb4P6rTG4Xnt9yf6y2uPGnA5StC12uLYb5Dt7bWApSy47Bm
ay4PLiZAiv8AF6mg8bwHf8b/Q1IuVeDZ+ZrIs66drwYqb4wNa/r+t1yO/wE5V+W0TmD05QEBkvXc
7Er1wF9G3Rdv80GpooC+wsGZ59PctkigVKRQ/sdldfQp6rAxv4A2sCkqDthrXE0nBP4dz6eJyfp8
rIbM0pWJsrVpmQEH5CSZjd/cQXz2RjTU0xXRtQ71SDDkKStiBxJ+jcoPhlLFOrJPgXJ1D+sf9ihb
q1MSG7Fypi6L+ZHaYmewxt6xpHE0MQIqmWlbWZol4XqGvdciKcGF+xgyS/0y7NzPwMWwK4zDYX+w
zrx7JIOXYA8dk1Y/FXFtVJgF1nZb5qPD6gK26jyZxfmoLG9EYALYuEyUAOxxol2KqqFbDLgDvP9c
Y3qkdO3DuTzBNg1EleWoCProazmnCEsD/6xzk0DWueyjK0mR4FfwurpdEn2ddoQ032zC3N+viHi3
UOChXIaV1nTkM/SsxLdbP4myjAoJ7ws/OFFC/4/LWJiw0R9AxlXm4STtV4Ji0qc8e6sHvadpPaP1
DRbpF/gSQPs36dD3OsIBP2XCWzrySKE31k3Ic9gj4laMKG1oRw8hyRP2o2Eb9JYBBDnKKNSGZIns
J/173yQQyyhCFuFpyxC9Dyd5xN/UuXodUdTy3nMAi+z+qB88+yYyUMRgYT/HDIr75E4lkKtisDBE
lp/hsmxEHakIGm0fgfSOXeT1PP8MeyLnEKuMkZMao17ANit5WfUTr32lpFVl2C6xgitcaFa0qevW
fMnnN4L0lfuEJRGRSys+cysPW2hlOfSVPs+nzlwfv/nFLbn8mwbeDOiJkkegSjXvvSuIqjUa73Ai
IQJA8Wgda4QsrXX1VwDypMHTOOX3pFpO2K2u5fRlM8mfbNWhZXyc+frP/iDOCXZWIxLZ20y4HWqL
BZQrivNIuwFcg2067Vp11rHUmL9pcqVpOoWJO5fwcs7cKyo0I3B+mMTAAmTdPoEE6ggrmiHL+v2k
OTog4AS15zbBv/Itsb160oAmHAzlpUlhvFXGbE+qH+v117NzvtJ0fFPAVocJK6irv/vICtApwoth
WDLDhkHpmOYoh9JmheJSx9dSd5SSI4scfiHeCddN5Rj+17cSOGBpvnwhkrBJt1j0aQKMkQXjHEzw
uxfCUfpttYuXWZptfYthCC9AlAzqIaFMSINF4uMlVLvlwAKVqJAGXsSPR2NAMgujjWmGxq0g4N1H
3vv6Jk9OlOhZMyOiANIsvr8eFDKl/fTH24kcrOZZK4/Y8BoEjQ3YhChY4S0B4wgXv+gTlGB/qgxe
z+7+fpvXD9RLBPkUzChpoM3qfYowmMHajmdGzjG0P6SWEABLfLjOzkNw6fjbh2wK62n3GTu4BDO7
qsERzOc7Ne9Q+DjM4DcXSJNV5Zp1DdEKwgSIrMhj0xyBRPvoZxtrYcpP29YQjh6YXUatclcaq2Vy
zuyF/OIQpkvQA3eiJ5pPqLHFYuDM9Iv1AXfrxZ6+6IVgncLHUer0BxU+KeiaNjnUlcFau6yfN3Ho
wUTU5PVF+w134NvOre0kVxc/9+xOand/0JpzVC6RBn5OMAq4M2329/hjOfLaNgk2voW8GUgYP9af
cKTZOa8pY/i+8Jn6HpxvMYTvWHfg3Ly4RUBRfTsY+9bacUmW9xt8LptE37c+Pvrm0v5JXmShlnri
RP/pGqn/p8Tb2LuM/+gZe1ePfiXz0oXPYPF7kNvZhLJtqC2HpXHOoej4nTWO0xiyFBiAor9Sd/z9
Dq5fzyr+h4ubtr4Ddf1nQjEEUrsLUv91ls1F8dMyt5glXrSj9Yi1odM1HcSp6w8iQKvs4W/z8XtG
2DQmihRTpSW+Gu7O/js45cLMNv8LaKBRAMbAYQC1BCcWzC5BmAm8I/FZRWi2Kf2YuU0o88XRCbyp
leXifB9dAa2zQ+nLjEYPLSsDXyT1O91M/XZscLk0XOpU8qdZnD2EqJ9PHOMQArB7dhJls3uAkDFf
4iI8SfbDV+Pfv44rMTYstgT36Kp5ZKsa62CpMggTEukJScNHklbbXGD86GJ7ddl8b7lM4VqPNdhC
m19LNLYy+CQQDsYT3FV9CVliDhq/N/kgk4mK3A5fAJReGjYhLk3uC2kyH/LkGQ5oKWpaDYR5mPFl
tZdEIxfNPKWZijIGCKmVjCQHTfxAOEfhwGAL5uf9C4QUX/knjv/SVQI7c2s11eosjxTDpT4MnPpA
GoJwz054SmUPfDtLKFU/tuw230LdYduX+q2idpLkjAbb2Xz+9eX0tJE5cSfQ3/jCZzD/0xdF0GmS
PhoPLHU5LCgJDH1Q9l7DXEHe97Lbt9YgDYupBR6cZYjXl+nYbdKEKGajn+ULcUGJ25B33EVS7vlf
6okG3yyVACOIHkxrv9uRbcLaL2/wxl0YyV6cwOT4iX2KxYtnWJ+FLLyJlqrKJiTMbuRAvt5iQZXD
bMxn8PHseNQ1VjN3yl5RfsdsegjwNMhrQipR0xDvWEJ2/PeBIMCJfcIj8Knm83q/sRlECx5sgh07
LADG6IA00MLkdNYA5XMXEU+dxGU0vhZQcy7C/v0DCyqVQBuX2F+aSfjniZNyf9US5/Rz/ybcDv+e
LcapRfTJxWDt0PjHsYeZyvbLPUGj+2ak0MIssW3nqptoJTp29ei7fuOLKDElnz7wQvkCFGiDPEWx
IqJ2IatUwo1HWBTCugrMkERUFQss62DIjxSXY2VKu/fvwdc3JhLHbVLx09XR8NIjPcGlOJaTRAC6
sJ+RLukyjLY0dOU0AP+2je3h4bqEBC3J1YPwfkw8R359Gwc/sN+oWFMDGUXbpLhc3rC294eIhKTj
TYdTZxdLTi/fgBFMTN1WR3YQ/PT4lpXWx2PNBHZkLPGI340ZDvFtsCQhdwY9gB2RBoLkWuvPS5aG
el2ucsMOzMvt4zQZVH3VHxDn3HT0C14cH0GDEdjjW7pCpJxbuPiVhXQDQ1fpIWbI6LMYGn2W0y/5
ktOyq897IWwd3FDs7NpL+Ay3S2AcCrt2GRDHV48hEwueQkYT+h84LYjDAz+UUY0kzhW+6iRJkR07
P2d5A+pHCczdlxNCv+dVPD+1ij76DaL04o8Nll6txa2OKO2bDaDPvyektzEb/4kU3rL6DJA6WjiH
1Y9/ARFq9igW2f9kkhbeU7qgHhdUx5EDhLvHd0vLVcAGNqhUjiN0y9mpw1n7izbu1KiegZf5h0hV
GObU3nH9Pdzv1rhMZvlY9qIkLIphLUIRRQ2CuqLL+S91gw2I0PV7fbmtWb5Fr9UGLpSy772wwRnv
lbMZn79u63iWTP33y6bGKfft1qk/1Vb1IxYC3EdniiNikIzF673Ug6GWtMgjXtxvWKBTOC7Otd0E
ia1oTGdetPDVhANboPptos72wS7Hxnf0ZmhE9yqrjiI/Qk9upgLrEfKDtc4t1gMDWgaQPsyOBM5B
uEwp4bm+zXmNAuPh6BC9pazEG9D6howRKyVxmq12OcKXOmppICNgOFD+2oJSUTTOXEXoHHeNk9Bz
vXLNVD8Saui8kodRo9YRgsjkYEPlk4vLW7rm6yKQYqzu2MyKHJQgyKd8uZ4aUwU4sqSBy9d4bCx2
bz79xfFJHdxvu7sF5bpcz//yTMnXPCLDFMprr1c5S4Xe8tnoDuoK3LfvTCRPwzpJ5uBE+sLr5NHK
jfOaGTwYOOT4DeSgUUR5YFUYajbYd8BUwOKIOSACkRBDMQgeIiLjrLhzMob0m46iMvIx5058UJlL
jP03EwnLxl7lI3r4A+5BS3PNE/+Vl/OcoJ1V8Fhj1TMwvlO+QCs02GQiz6CFx1zHfuFPFCHnbQFS
y0vM0lS+qQt67+DmUlpYU7ms60QYEydHb32YHBC/X3o3oAbDQnaxeoTmxHmjfSPE3pfhUzif31na
vRt2okCOwI0D5KzhN+8sNzDYTTODfTezdeaxlVvGuj7MKefah/izA1sIWRHvZwxYzhue906BYyId
Q2W7YWoIKEaQ9x+ovg1jsGHceZXsokngIQKl4yVBsjqLMeMrJcGiIrh1QmGil6ryKjfeEgYJ2r0I
bhZFDqpRe1ZD0m+SBkbNJBj7ig0ul8Aze8u8ualbOJoRUhzZe+vlFCU0HDWURhNl15/szZ0czrld
IeOvtr56m45wv+6HNHNAG3tYJd/A/LK26yMfetIln1ciIqUZnG2y6sGfwMhantydHaLCktrZPDfp
FFytU8Ljcm9056aX24LoIDrRcldrKGyRdA6MM7op4g9mYvnLbb8IMoSv+kqjncoItvuyBIu0GB78
e9lE3VArgtaOsPusatdHM3Mx5iK/Xu0cf46dayp4YPzMgAOoy9qaAsd6nnaHf+cvFYiYCIym1y8d
YJg4ed1j+G+HzEX39ZNVbqc7B4Fq0xd+BVZW3YOaY8fRfRm8IOkx4BPjMtFDcDNswGbxsUHmOtoC
skXs/3TJUrph0XY1/SnGc4gdCpmlzGZN1unxfY9Jv0L3Y9dhwcFZsJpPJumCIMv3W8xSjVkTjpUS
oh5LCeBRC8WWFuUM0wQr1ZHumshtE7b1bGUFdz2tmckdXXsjR0ueBcPqbR0wf4yJ8xOT2W2FqKH5
EOkoC85s5Qkp87I1MWLZkpswjGbfB2d6xMQ1EjnftMwKrxgeVAy/SgDOwM/ISbKgQXHHqHfy7FEo
XyjxGKV9H6eQgtaFPZ+SCr67w2kQdL7Nw6uinefwPIX1vQmPiyHcP39eBGomqwSnZnMLF/AqtoIv
IaE0gJOBBDbMVCq+K1mCjxBDWlg7lkj1YezpVyMgBsKuB52kjyJ1RbHnAiTSELdPnA/PYc6renTC
CzihZBfY8jk0y0NgSU0J2eUMHavIRNHHsVUliRIUSxg+pzpP6auyB8uBh7sYnc8n697Y3zcD0O5T
13YlVPExESZYZYDkEo7JecEOxpymyf6kfPJFNLSC3RY5RrKKQaZJPmM1DaFtfaFjwK+VKUDIjTiq
Hkbtdo3nmCyozA4+Q3grItbuSeIVeAc4IHk78bYjYGiTQWtO/QqH5Xjkpa+SM0z4/eTMILWySX2T
kTK78EGK8MBoKD/K/VpStYjzRXZQLdogCCfN610XgHPcD0iqJb/bIeCpUv/9LoLkTQWUNXFlnHBg
Nha67pbcc07KbOikcOKEOLW+Krvi3LCIel/vh+0PBNtfS1vDZnKAVS6MC/jmN0j1pskxE+4OEwxy
gEL1L6HZgTpWaewgDDLDF1h6ZI7iF127j9Nl+nmhxXQ4tK8z/7mUYRNA5Uj5/J/u6GhoBk0BC0dZ
KLDeAdRReVIlaANtehkd/g7bRxlIjMzQxRLusLUQwVRQ1b/Csw2N+6LOyQua8DWRAAHyiMypONXU
48TBr7Zsdvr+QP3vvLYy6ruJqsYcK57yveYLfaro9XzDniEmETcprysR2p+hvXiJ+0AfP/jwYzFA
qVzE+wKJF7x4CH4uD4QZSW4Asio+E1OOv+zMbToAvemORb8AByroaEao69LVUon259cnjIC9l3gK
6nYQwvA7k5EKLCDdQwN9Oy7wk3ek/kUyyY+xNrjVW5wuwYzdtcAE3gu1e0gYUv2YM0jYJyzJ8rDW
xnHubMZqed3tl0nSgBtz1+mje+DPLHZKI1tHRjxXX2sxTNte9u6tCkyFeiWRGpFXTnNlTg+54vXc
QLHj4GunTebNuKOmZn8viK/9G7pSsj1qnYm70dTNdpZPQyqRuncDosQswfUkbANPKsd1jB1Kk+av
uOWm3INl+dyhABof5VgG+8vPmDWOzX5zeUipRTShVApKeHwYcIwPSN5yCqhIgF4wJhT8YoM7jaoA
9BV9fEr7x+qOPQo46BYFxFYXUG3CiSVUaEKzFX55fb9YOZA6G5ay4beY8PplUsYnnBdbR/KPciYF
a06SxKfb6mLkgZ4Cn9cL/OBkAK+Ej0/0i+bovhcwX73ggtHS5qcqQOsY5018ZAPAjeeBowTSDa19
X0wFv9kyDUejQVjkoNLsrAydFN9sXK5UCwMglMcbBiCiORS+0f1+yvuVk+tczCtCkp3M6w0HbE/D
JZG6l3V4kmYgFPxuH4Fl88okYHN0OeCHPDo6zMHbrn3EVvOJiDRFc7677nyHAh9MkBuSgiapobRr
ebUOh+QN04GKUCAlcDms4L6+JJ2+s4kT++AcR0OFDNO+8HfsHOqjG49PXRAyVtXedMYsBqp8M70+
MeahnHiOhVDw5aN8oXfMRv4xWLRqWrYOkLk1e54LduFrjfc/RY8IHBu17WlmH05m6spQa6ZKFjIC
Z+W761TNeybU7GYqBIAKlLJPSxmbj9JKJYDMFst7lj22rY6csZMH5j/FLqR8ZVn3eXHa9LndkyL1
jX5qooksF/lAEhxglr9f1ZFvREhsiiT5F3W4g0nsQC8eRftpDmVWCtFBQS76t/lMbIVrC2d0fKR5
mma5nsdI3SMEu0QFdzK+BPpHH/1wUB93oum97QmU3RZhUVVXmYqSrQPwuErNqHQ9nSE1nMVQwFYZ
gk0ErIQyPUKvPVNJxm3IJbr6daDo2S1gGHa791qBDQxt+nmOxbAiwr74Z0bJ2atPezceaSGkx8YU
/665yKA0A26umuHLq9bjxxFWXUQZ1wquSpfuX4+zhVPvXpbywyEv2jEt+NAShGjV79ndqtXqf/zi
oyK0UbyOJniUwEteYb5i6fqEKXBa+2pUbGNzPiXmKjYjhCkCwDKEHp6mAJWZtFIL7B5WC0L4Gamc
mHpTajeJ5XAbTG+/gR8cn6Ea1bJITMvmlCT5GDrYrKjr7zQpQBm5H/OYvm874MXbE257rbv4di72
lRkZ758yYAm7cESALhe8Ku+14k/XHP84oQfSGreyw7pAOv7qQu8MhiOdjx6HRfylCaDc9oR55nkY
A5edTZLz/ls6B3s6f/FGSgxfLctsD5C4b1hKNBsL4FdmOo70Lb+fbKY0V/S5L6YB1SIacET4pGEJ
Si5YLPWlGXR8OhqeS6WZ3TzBh4QN0+YhGpJluF0p2nw+n8wL2KcX/yuxbCV1cPOQB8/AFhvqzJzJ
0s+7KScv+mIxtIqNeYoh3lGYjDGFszIMKZYhjS0SsLW0CY1qAt/tKdT7mzOz+/mw6BZteY9juWqM
XQeh4YDHDq2lfEkatidhshpl5An+8INw6mFE+YJZzOkUvYNja80r3TmLik2qyIVa75o/Z+VxotWy
Z3YCBalerLsmzAIP2hfFzyUrl+A6WTxBNHEX6VyI4JMCrW6VhlHAh5IlaAOwDx33k6a3yAkwMYRS
sSZ9ARdRBhQWaWSMmg6cyxTAaSogxwc8gjYe5zpKe8YW+JwtCzDFxxMYIa1GCfXJLOmKG/3SjeE/
qIOj/xghL/GgA1/jAX2qJM3/CmdiFMy9eQx47dcHgGPXvSvjB6IV83xuoaS+cx16kWL++wyux6sn
fy/Kh8bV5oGc8mUueNdHPNKc3r029CiJ/f6QkN3Jix2eSouh4ZlZP7Sv8qRzVtBz2ncHiDazKNOS
khcEr/0dBoXR/LKkYQUuWUQgZ6MDlAllEnYji5rsEcTd0xuz/FfUDcnvSB6gENT8XPU8dBE8gRHn
b9Cx4CdMzjJKij2+A4Gqpv/7+U6lHAMnyJ2xXZTz37eBJaAmYU1HjaKReJ0nOEXMc195cKKIm8Qs
o4aHGfeCmK28se+PcpvBL+sBCQNU+QCX6Ra2Aj9+x5WicviHWIGRfpPYdHx75XqkexpPKETIwnUQ
7jNjbwHFdAZkXHzfxEK7khQ9xDoMVclApT+sRQRl70tgrFs0CILq0qOpNOPm/DGUCkOe/h2tNRQ2
mV23F/k4pq2oUfyou+C0KgmEKt83dfM9q6EBeFe4+/zfg6Da2KUKzor+GWlCQIBpuLi4hmtVnx1J
0uHNoFGXclSqF+cs4sy19HZ9JJchuBmBIY7qI8dFgXtO1gec7OSuWtuznoCTGzMihy1ofyVqk4OF
WUmT3tDqvgJ346xeYzUi8Ld8U54tHkDAfyf+5PCqWzju6FudkPZdupGyfbYig6ELK3PjEKZfA7Rw
YpIzQ+S+NXCLBI+eJ+aUaE1ugHEHZB6ZoRIjHIvoa94HdFWK8i9QVmyMdgHinq3PSsQz4YrhOb0z
wbxM1pWHdkR4cFRF28nrseY4lHMWPHFTzenOJ0BeHAaIwwldZIHjKT/VAwcmEbTGX8FRG+gEuCJ+
ROukNdSDj+R3cnwBd+8mZlyDgXSShApmIv85KhEGpANVlZ5Z6DVUj3SbFDpaEoJvtHYaNApGKzsx
8sPUldaMH3krxQXAvU+nIbS+jIisvq9XHsd2jSdHj4Cdc1X1wUKprX3XypsYqYO8nu93TPLhEmSt
C/qDqZ+Lq4pqunkU8bWsraKURliwCi93x2UxqjQGQCECe1FrLy/TqLJFKApeAV4E2ZR6TzBeIOuY
Hue5UzqPWLu8USfoU/N1faoJLUaW8cYGTfZzIeR7rfEygQuy+sEU1jFap6xZBYyrhQqbNX+5SJm2
W0x4TGOHHq9Vq9GxqIlS9vYdr60y6UJgi1xlIbWafOE8tcf/yHeOT0jAMVS/iK5MIT4CnxRczhjY
u8sBxxgI28zXsE48xFslJNhmsFjHbcXfHjPelHl6ncLO3Q6I7RjEVWDv3jljQWnJXS2397mD028N
fTeF6UGXYVc1gpxMoJhLT+Jtf3xuHouKRQclV//ykgMkHJo9rpTw85pW2FxFtYH24350cOYJnJdp
RI0AtWanIMYaafdakiicqtCuFLftB46CHujrp5LxTCUp8sMleujnloacXRJpcLx1jXaWqdSxgm/B
bQNnyNlB1BRTTQf6MpV+msCuxxjG7UmO8EcMdQiMvKJKDEKQiZYGPoWzc2glTdrXy58BF77Kcb0j
G1ih87zeoqWn090TvK7WI6zvigqduWzouuivA27tRxLLS6+o+e6NvvBkZ7/hisbKFXAn1GgykdPn
/X3Gm/1BFRB6AQzyWfwLgI/QbIy/3w5nYqFWCCE1yihrFU6t+nklfjgsdTWS7qH7aO1lA691KCL9
tSDFijrqybnKHwPGDVfIfnyfwa9ZpRxPPQFO36XxyVEz9sdcSn2wPQN+O2IlkMsSHniz8MrK0pV/
kSctuOXfmteOM6O3EskL8utPkMyyubBG3zNV+SMIcxSuCr8LojSlIs8IY+Hxu1V6iDy1Rbd+jtlr
/kMXXGr7d27Bn/LML56e15xj5X2qQcbgrhVvn58zAbTw/iOIytEgTAvKTVZUQ4Gm+RGC3UY9U3Ns
2aX0iv6dwbtOrj+wuQog5CBDxfsrWc/cGAkHAqV9jpLcMUGrAOY7huH8xSnOw1GbU3fKKjpcuDWp
DK9Uc993FRlovBsIwf6F+3TPgCET4xXfzUv6tojd7axVTDirfxwzmrT2Jd4f4HAS+PgttKgkJVGP
Ev6fKIBTjxHNfX91MA5fUuq60mQ4tN+FHKtMZa7Q5uyGr3g4AuXxok6e1mcS8A2SkKyFZy5mz8cj
fus522qdULd4RiVzLK9KNTXaAyW+NHXWzbfABLBqKfq81m/Ov9CNThheZbyKu0SsQl5BF073Z9mR
NwGMrdy1q57VoxcKRaGfkY93cWd/gnsLqCHwf2DhNSACyCu3unBiIdTSl4vhrvumZTqwyL8e7MCL
mq6/Vkh9OxyQLJEFOoy8d+ol3Wt8817pXxR575dU20vSJfdgTs0dgOSdvwlJ9Q1j21PFox4U90B4
/11OHiTsT3FFuu1oWCQArvCrNdnGCXnXMhpFgHZ1vN9StxUuze8LivWnKXe5L7zX3h/BsUHxSkXj
HZMvGLc7CUUFlsiuqXrxBlQ0xzjGfqbvaCoic0G3C3UfPXqHnkPJfa+AFSrtNx8Gxuv8UnmqBgt1
87tN5SVSfnp/JIP4//IcCRf3pkC+TFCN0dJyG2YccoCiN2nYGRk36GBLMEElBBLMevOZNSJ+rrNL
8v14PTXJCDp2/PZxcCPUhF5Np1YGuYm4z+s+tZlGLQg1817sw4gd0wqHh0OrhlhrFaKTuONZ4fDR
6snaDSbCRJgmnw2LJbss+SdTf4ejHPs3buzvlVJhuYJBwcWZsUrv59p2BQeXa4/MArkrFW7mm3YE
Xs9AmZJQ/4Pu2lIMXrDTcw6EhSZClJbYoP8no9u74rDkgYARhXc5piQq8lNNsh3XvZviAg1+BQEN
lgHOnyTh8y8y0nkX7/kaDJS5ZbsQkC2S0zggzvp7H7MQft8rHkslj2loGysX9J1jJvygu5mMCTz8
Du9PpY2bg0cImwVszylVm1iXft2htZnZH8F8l9zU/NKYoYZP0s5a2Vq+0EmcI8RUgjSsFDwrknJc
6Qq3tbGU2p1JRo86VDMfcNv4kCFIBDalFIrWhvYp7uw62+TN38tiABR4e/4MqJlOvlFUf5UvuH16
ZHXrMFq75f4vyjBbmqyQO+TX1bFdg5JXlG6MSpqy5jFCVtPznyv7gYNL547nDdTkWrxC0Eq0Yc3t
Bl3Xrbg5l3kVnHQu9DpIyOMc1rv5aZpmzVvJKa0uIkL1+Gkp/YScdfnzKBaBXVxfgMTw4aKdTmP2
8RoiU7AHTyKnV5PwLkvNq1bDBhDxIFPdKLICpB0CrEVqEoeVpCLBHMVEMRG1x6yyuUqKuydYIMQ6
6OIUy4L4ELDb4DTNhcpwOGNxpBl27OLoOXm0vXijKuaXoXfAQxtgU0rkn+cqHGGwS6X7jQeE0yju
jwDuVKrmyGsG+B1BUEFaDmu/f2BadL9TFN4CMqrNyZvbzB2NxhS9zYNWyKKexaoJ00JuziT6a74B
M8zlhmmm0R1PmuXc777z1ZH9Ip4Fw98POW79/LYWgbOxQ5OhW4dqNFC83DQN+aG5ytI3UsAsV1mZ
8L2YssKhBdDxLVe7Nq94P/pGxhRafTOsDwLO1q06oJ5eUTaxQMwXCKkRPozd6EHEYo6gqkMQugYp
4kLguf02Zgifx7SY7JfIX7XPQ3oMC6/JUH/qH6qzCWFxEjh767TTgsAA459lkLBFDiZCPz9hBeWg
S8DY9zSxBCTR6V8b7O97jW2EfN3XZtNTG2eVWaFOAILIqHyLpVg4Bp4/HCBt4dl0Fp2ZWixIYi6y
/dNKYVXSUUYQkprfzAtaFn96I1xtS1uOhcW/e9A/FOe4VO2EX2GDwrjc7Pfx4rnzJMyetHWg00D4
NmmWnttgBY6JC5OmXJ7HsJX72yUMOhz+4jV0xfq/sVXcHKB9/1JNUbXLAQZGVM2AioBS72Up+2SX
NAFQsd779tXtlEKyqPz/+6cm3Yj24rC0Kh++hZp1ljHsGq21GbU+7vPjXeBnGlGIe8YDtrpaaQUK
SWYJvcw9NG3W9jX4LuXC7afFr7C47NOtlkF6P3BaF056DlqawEB13e/3P83RlxKFO4wbHnP+PVae
s+YCi0YvzwA9Y6M3EY0W2lio8pJkyK8BX0ZkTP9/H9zHNMvyK7XDZfp+0rYWgwQZzOtm2wQcOXqF
gkyLwqvIYkwwpgrNg7EJFHp8hJ7oL8jvjSy9xFWKqNy3xgLgyuf2l1+Oy61D16jaDVulIRdRCXSX
wxc7to8BqaguQny7CGM7ts7w0ovBrMP+V3iP5ci8VSERH1UZci3y60nL97BiTTn33QV7unx4fnHt
W920CDGXx63iRi9x4PzzC46sFWFo/fcuOGfqt+vCNkqZfV7caMFjjroIm7/+X/9tPi5xmADjRh0t
vHB2I/ktTIUIEqm1JoW+oT71/kOpa9dOw4Lc6X8TOiJvHJB8LmEgJTOEbOYE8lmx9vclaWcviCtS
6EC9zgxxYCHVMeXGcPaWwYh7XX9vmgoOl9+evwHy/iYKHEOU/UDwwLExZ86QQb1pSZX6AcDF92wm
FDfZuBF2t61IkOAdiFcO6tdbWJONlB9a3BmtlPxd6BFhSAf6wKxcxmhZirpTTwaHg+LnVWJ5klJf
J1YEhotjMibdH68plfCOrP0eVONFKigFW7VyVRE+nKLOjuQc9AZYbuGqHmwz2Ws46CqHxa9pGTyT
JPYY52LWp0vIZDr3W9HAUS2xYaA2ZruiBIvsY1HvqT9EV9NQqQDUkQnglKcguSnxr9pXOFMgMjXk
Bsh7rtwsd4EiIuHiH8U7VJkxTKi79foASHeAlHPUoZVDUABgqQyebMRYzREw3uB/i92Irg9NOSWU
6+VJGtq7m6EybKWyvIZYb382+sTiuKWUn/o+7XgC62xSYAMgveeyAYhep/F91BU479hneL3z8hoV
Malwrkl/iB7DZ0PwDOjQs6muujawynNlcoPOkSNvrUBvmnQgffIrWwFhv4EERgRRjrntSqdisqsw
5g0i36M8R34Dqb5tiNrrRhwDYVAbyzp4rNZtMFYGPE+tUkqZXX9HiGRX1q6p8nY4sNyPKMBn1ZoU
D8Qg3CZMuMHpozCSDqs43CeJLkzBMa0Ep8uOLyThPsIvmJh6OYMGRsTcAHZ/nj8a8w4h1dMNsdwP
4GjxRLRg+tQM7cQw3UktlA10QnNWn06EGParCgDHmz3QPnBPGL9kaLR6INkgrBvWy5kU3eGNp6lw
e1u7XVGJTB2dhHm4ox/2qbv6YtyXtLVKilvTp5ffJl5FEoZUa3xgZYLw1DE+GZ2MbQ4SLfLnvQCG
YI89mmmiICd/8kMoQEPpkyQ0zu84Nar3twu8l8+nOTcO6tjTek15rHkQrVqPw0ngaQZBP/zxZegs
PqfXyjAZ5w+58UcZYP/5ybL0xXL3GNyFprbqSpzT7wS8E5VslPpMEMkmf5M6V3jWbPbmDsEUcadF
vi74Tq6N2iUIPEEYexs5w4R4GLuZlU1kiRBbrwEN5FRWKafErLS/5saFpIUpYJsv5Jb9vKCXAbSk
oew4OA5hXwpSV9CJsLT/CQTvs5aE39DnzjWug8k9AACD7FfvkTbo7ATDpI5OPvCqdjDaCg0Uh11x
dCCj9baiOtCIYGsvgyUfjF2g+PWacu/PVAT+ZGyxJgRSCd7b5R4Gt+rmG+l4aNxhiYD8IqmdjSIE
7nSn53BNMwjyK2wuKVYkx1xos/EGk/XAuycdTWxKwjCYSn7ZZ0oHIlf5noeRpWII05x1semXqV8N
sKPRJ9zWsI2q8GH9DJlUAUrr2eSzSC7qS/AMXHiupXmB7xfFjkpz1ZL0urRJFDnOvPdy+W5cTHtN
/QK7dXRL4DoBQXNJeQNdQev5vx+oe605+jFAVZIRGZ01nXPL0XeiZQM9LgXuSHP7l5CFlqnhNrdu
yPVouLNsX5wwHQGltP5epce4ztUjY6JhBFsadi/v79pPLuVz1qPP1XZmotHe6pBt7hAMZxNwtJQU
FOOd2EldvPOIwBUNgYAiGrs3KQu2CrpkqUOEWXbEMy8DyThi7Qi/vwQhNb5IXw26/tqHmgq+dj1t
tm0xW2ARzT5aAFlh8s+/fbvutS7D5nOBmW22mWicfus8oJKvSjsk5vctE+oodlRc+F2xZ3WzSd5P
NYYfy/0gHAgFYGP+DuU09DG6+MP+sgNlAS9jQhydas5Gq5Gyeyb7a9nkro/+ug2/iOXLWQPnLME4
2mFDhBQMKOuOT1u7hL58jZO0Xhm/b+FEmJwrs642+RoFEg6DCZ7mr0zGC/7rYz8Ynhp0lSkzCdcT
hK1/guEWLFslxx5y1dAeqm54hrdeQzVYQe4bEzDZbxn8KBRyerYKadWPQifsulFoHhqpnKM7CzFR
JUO65FIqjjp2+N5JXRvgvdABOiN3QTUL4qXSXwfjqB+h11xUK3nQuOyXG2Iz+OriJ2Omzv/9R9Cb
+Za5eeWBq8v5kpIDAcFS2NiF5CJRlVsDwhw7fESMIPUpPYNE/PizxGXNNXSrpGdFq+KXRsIFL/aW
3u0oCwJ0wdoFUmj+Yq3q4fdVTHsge5c3nUSmIkwp1iK7rmx7twrUKuzhHEDKFqwbLGlME+BB+Pcz
zkjOvMECIHTkb3HKdHJjlO50xgOyU1HtKTrBX5VMKjHg3JL+xh0h+3Ro/9b4Zb3Wcy2HIezCklVW
XGTXhGhR23BvM8PQA2o3VFeGfk2FdsZs1EaDFP2NwbSXdyelj/6dTTM/UDg4RzOHz8nVoalN8fsm
rNCrIP3K8kqRpU5MkW0dfNcCochlT7dRdnXJpfVYVDfqvuvrpwX0Dx9EWO3H+z/QvWxp76S+LBJ/
uY2M882nJUp4oOc5bYr/PvM9Dliu+9XrUCO8+dtYtDEGJwGd5QWfdyggmOyNNTe2UFKsX6NdPJ+D
aWn+ko2XXLTtY/UR06hgcXDT1JbnWJRTGMWUDL/jB9/3fHk7YbGX31ujdYwtGToJqripYCO3tdew
zaenZc89UG9oWlPCzex2Llpd8blIOrbxsfTKpEMqcqWWqVKOiRBykM6AB/A4xwHHXnJL0NzdYzOF
7wHtQmBoFA6mHZklU57xiLfIJ5O3AgaZOim0As1DeuoIvTu3K7cXC++7DhPbwc2W9Y3T38k1Ubb3
kZmcK6upDBg2tgPXD9tEWoO1lC3WXRlSvibpS/5rI8p/b0ctU1O6tBMByNgfeNkDfjkwjSAQ+Ii3
CeoLeFNe4x1a+WM0NNmffD+eefslVN6xOo0JO1AR6pMUi+VQ74b/q8MlwyWUH1HgOTSy23bIuQ4O
Er96KP+HC+ZYnp3OHwpAXLoYlErBBDEKbjmlcJkw1KHoWfxH6jHdYXsNYbDgwVuVJUoU5HTmLC66
gEl0MO/8ll0CCkeYrIw+QcHn9pJEOp63fkn6AVJBLkij0Ciml3sfNRFHmuRBJLjyUYb5KDGHzG7d
VqFJcmWczS7x7u2mQ3JK88fbzKvxu04nBhnsg+6ECjDsvq/NKTldiOyNGB6sRWknpf1IfgO4DTEi
J00v6c4cUA/I2GB+RHzyP/mCLePMDOBGR5LUgs171zggidzlyegCqmG0VrXhCHol3e1PqwDZ5AT/
bDMTItAdnhu3Nm4H5r5yOu5KR31g9ePkunZ/co/YT+m1WzUcD5k5Br5cFJDqvMsKLYlz5dYc/QKY
nZ7IIWLZdjYkprPKP7znAsmjzSUA70ffNBHlLYN9Q48HBUSL6GUsRvOc6+ct6zXYVllAKL7htwbl
4p+4/RDQSBkQ57WZy8H47uu5IyCyQjZyTvBl62bkT27qgc8au7pIklbb4gXY00Fvdq1w0yDGCz0X
Hm0dHkG6nJlptZVXphd/qbvh4I0RYiH9Dn9Oout1dt1NrMM06JALyY02OsU3AhOSgPWIrZ9drFu7
31V5QbdAXKXpMSdgjP+mwD10u0DpAetsT8Gu1OlsBTTQGBbYERZlAAoi/mFV1AfO75kf3sWVymFQ
yEavwTTCMbG8WFRQpZhArTvHr0GNFw8f4vhnyTfD1BYl2zjgp0TEItfumzlKLGKBcvdVKeN0utLg
GSA/34Re8eU3tVNo+v4LJ00EpFHIGTwtmZ7Dzq20VZazN/lu69Q9VDc4zIal4sPa/r2VN3y//7Gu
vmp9EJjOs45y9h7/A+nHirCCH2wRqXrGpya4Py9/Qz+Z/SxGskY+iiWL66uvBxljacqk8DN2ESsU
wHSRA0Vbv4UyKaRrQOfM06MIFLviFp9nWABiIXtuudBbXiZ3ayIcpP4cllrXI1wxJXBQTloRXacl
lQZEGy748u1BZJE3ERhYWOt1iBygAwhQ8I/2kbz7teQBYDZg9xIiBUojG7NmS1vhT+zj0RSqwmnV
4e9o4h1vV8+bgu5z7x8uBmQjp11g4nFx8FeXPBQ6XBc8Ya4MeRrglEcXPGfHsB8Q/+cXqO7lp/xd
zeWx3V1PMhZ+fdHqOHkPS5W3E+zjoS6/oWJlC+N6L+nySju//x0fIqlfNP3H5MVFbW0wfX0wfVpc
O0/t5hkOFJjGVEUz9xngG1z5WODzdfI9QzTwHgaExR+1WPLFqfJ4/9EWP2uEs4z8Z8LzMamQ+Mz/
t0JHleBVJjju0GHgtyGWmQvR9kUPAkMnp/zyVVuwbYyU2dcDtO9UlgTLT2V7oye8qHLG6NAQCLen
5ErVwMtYi0eOohYiY2R0XKCpsanup3Rdv6mDJCvplk6M4nMPLAO6f7UoCoux75UNyz6uHXBQ19RI
9lJr0tuyOqUbFgeJ/+FGouDvix/xOQQEfdk/b3HIW+sd7PSWVFlHxjl9T3tcaIGhC034xh27C811
dlphyITcKpR24/eGoepF8FasGsd8uNAEzaM9fk8rX6GqSRLpKHh6EnibcFS0yhX1toeaL5XCZHvz
2o6Ivv/mYwRGGTeFbALy6Ti6P8g40qqd49q52PWvwYqb+nPngnu58IC/QOjK1ICb0YGqH2is2bMd
5i7tWOyKlvrRLGPn4S9gr5LoNJXEC4XdaVpwbAKkYH9a25NnQJXbssEjyPblWAAB7HIYF4N9LFe/
Da0hdnuu2e5PDCqIIQX/xS921mFJ5qN1PF8jrzN97IoJA6X5qloB7gnO/nKAprhRI0lUvK674frN
Nwy4jUIaxOvo/arq3VuvvnwT7FQwODag8es4FenLyIrxkVCcLbfV2eVjZXyTisvPiM8wvcLMAmlI
pe3vduR7xUDsDj2g1uMvXPK7hbBLicJBHh1mUL9GU9LavmKPi2i8WzOStq7CJewoi6MdNSDjkW1U
SlDMgoGK/Ue1P8pOOBL6MBSqWKqZiKWR1gs/+tN0jOkwSnxx/I2zJ6I+ftu/oLXafVfZVuKy1yKl
htywUn49Tg+UZp17eand9M5NMBUfXwjTOVYyaUzj7qQWsHxWPoopk5Qh7ocqTHrADZvPNEIvE+sJ
e25b3nOggt0Ad4nB3UL1oNJnXx0xItyWJSxcaZsuBX5eNtCgbCQmZDpLO4sp/ooksIw2EimOlOAV
qK7KNrWNcAEn/nPmAZgY1StlEW6Oe/HkmZ2jRltUufw441FAqKkM1RYPN0/m5pTYDdWrqiv1ZMfA
08v3pcMx2SFJ6ordc7GKGdE5wew9AIdtHE+KSfitzQtFmWsUQjpH2Tim0LwSzST19Kv/oVHla/5c
I/nD2UYVasajxGPc+whHuk+XBUHbrEQR8c0S/D78w+ooW4CvMIsalRPi92Q90ug6nacac81lap6j
ADn96sGsGslD/IQHOhNkHebMTwksjx3CY+9lcS8pLxQ6Izu3ZsZgxDnTEyMr+WBg+wS1wIkzKWdG
5soX/zCnjIC6eVIobPUHH1W9DX+IdR/MWLZQITrzPjB35Zd0wP6jNAIpaPrV8s4q8R93X6KMaKL5
eETjRA6RbydTAuVQUONO26ge7Gg+A3/IU1dom1cCKRNZ4hWfD6YdkJ1Gdc6Vog9UHXhuDLB7nIoF
LB11oP6lOobTx8BfXcBoGtaMDpWwLFdySvLQ/Mcjy1ipvEnqTvblrLcRUNQ/mArr2kXGeeu5gtdq
RVjaTcza5DUqyJF9jCaP++eZcyGI404XR+yrDQNtFhYUUFoO8bV6b9DsR+TjxZ0/RgUKvDihO43E
eitYvUUOd5DdDTpafIUVOstGpiuC9CWKayA6H2kuspCh9XHcamGX51X8ODK1x1307qAtt4vlEbua
+mwfMdIIYc733VkU4czUZm+V/2HWdvWmTeY4jtzRYpotsZVGwffibRIK652wpL3ymTbUNMEqaCfL
8i4z/aS8xrYKlXWkj1+UzLbOe0esvQU3azzirLYcMl8yvDi1kTmxGOY7leobXIrB20ei0ipO5OSs
6ctzLVfD2QWZDo0WTnp+d6iQNkSE3SCi3pU173Ym+yygsWO+iAMWSf+pv3ym9JEBeNqJ9rBN+U1V
Yey6V6+2fv2bVrJoMBtdMzjths2vxuwTPXmhpzIxWA0nGrR1/MLAsqFw79to+YeakWnYx3ZZI3hG
1ftc0D1p+RS+DirejqdeSUTlcHWNrB3kyV7RPdhumzEgjnDTg5rWZQ95O6nM8ZDIijDZf5RMdVJy
FsVcvn32lKIyfv70EwNWS9h0oPHA0wJjqdjBr7Euz7DDMjElWqmXpgaZ7FSZgtUcw5Y1j3XVZ8qF
X2jp176324CIldvbdFkJQBcTsrWmGsbeAvzDLPn48bhKN/LOXltwvzSmAWIPUUqRQ4qRoGUFYHWQ
VXR6UvsrRrdj5D27W61xN3oHdja0nSHWXQAUCgmTdLhdd496Vy/8MH6CJwF2bDGlS66SdiqFnFVx
lXwqPXmjMXiwgV08BX/dq3aSzGgpjJJu3UIwDatYVn7XBB34thdxwmVLHxQOOtJRRHp1k48Vqk1A
OOKolfWXgtEaweI7zPvxHcWNHGEtvEgJ0MY0Bl13FAvUgRlB0UIRrh+3928kj/VcVrxHp/zEbU8s
ZLKga6FRyk0h+Q/WOn7n/PkGJlF3LxaTZqL+32NvuwXm8KJLygiSBgnr1m+zcwB2gBVFvLfVwmfr
4A4/niHh87SZp6ofyURR5Lc2ZjKZWzZBx+6hw4ANg+gayOECxKU2OzgkwbLyhc2+t8g/b9A6Nheh
ceLRjWiC+DHRph3rn2sGjtv1eO0X5uZW7HquDWEIa8ZNqO2jQVU01Cgfssk3NieZaFyBTFXaib52
QbERSWts3Bitbbgh2qr9D7xJYaWhTZVoIS8cDAuSKDC5kK27nOmlG8Psc7n/TfF4rIbZoGPriG9d
uUrmYr84xRhH9YhjrW/M6FO1vFdKuDp8aBXaGyMUddbIPusFxsys9DpKcOvsTU1UeOfXKJTS95P3
2mONfJUwLKPvMKsWd8d/SmYGOamkFR3/0BeFWr3Txig3BRHslnjyXDHniMtwP+yCy00GVy7cS6bV
zkWMa2dUIuxM86qQxvOG8H4HW/At+QNBjWxhv5gRF3NBT7sRp2Vh2+q+dJ74akgFX66jUuVHKbaW
/1Au0HyfV64PSg2G8ZEFrMXxedmK+w4iq1YtylPA1bkw7wuBxZ9Bu8wl4OWsOkBcVdTnjO2lsimf
Iq+BppjOgiIvPqk9KTN3eCBmKxnrhwCrgJzS7EkDhi+DTg3Cm9RNMj9N2f2bVGZYY7V9kgYM+VZF
zB5Iyvq6OAza5/F+avNGJy12qtR88n0qCBbn6kVamx1aJlIoNq8pje/5Py3ewFIEbCrwl69nSCy9
74ZrGLp8izRZHQVBEYKlP6mnlkXx3RaIY01Hanj2ZpiNPFvj+QE1uIAcFaZ/rxGOZ8JUBlyPzWMs
jWd1RM8a8ls94y20nTd4hpDIUxwueyFB8ygqWggHP8RylktyYxRNtiHEi4UVA/WwJV+lro+dys/9
seXxm48ctGatUOUdZkrwYYW0RWXBlCAV9Yqy/lB13kDKaiBxNtrJdCKXepHk905na2cVjVUese4S
1ceckbw1psdGUpiUXxi7aglaIa/YgGlpss9KYXxKKtfcRKNHO9EkGP5qFPZwZIiv5CN1KFs4pNs6
AVhVj1Md9eJKiB5347VEdQNEEMaH0H5l/Pqw8M64DHYoHUISBAKjSNoyTyNXgmGdTdcolKueYXCh
I0DVBu8wGy+nFJm4jyVYT/HxLLmmXQO2YIWveut67dgAANwWNiG2RPeNSQV9iFS9lqlOBYlpHUEl
deUU+TgQIHnqxaIZFiQLo4AhFuzIv4NjZsn+bFDWuuPv5yBwFuGJWlIVWRJ/T1l6Un7jx9mjhW4A
HMtkyLkMiZEPhCppbmMBmnQVUVB9Q6evM8M7KipzYcJ45hhOzENTOmrhChekSAC6isGAa4Mcoo0K
h9Ki/eNbjtiFZ7/rimBOGGikG+rpfxONKfsiNlhI0dQtyDCrAGeBVkmcc5jrHLae/oPm5W+o7CNp
cZ8u7GG3TU2+H7BRxF+GrM0sKrr8Be9bxR5+2tc5TwZCNE/Jksu51DpX2oJB9yP16EOnya7EEVSH
Pie6r5R8T7X1PfOqh2Q5nGAgrn0RieaFloYl/ge9+AeuYIsMcsOMxIPuPQPn3L/boyQAFhd7p9HY
coTabc30htmAA0/et9m0UsvWtkN8NViqFkzfqsmg4ttH/bes0R/hvMlkDbikWHxZDIv0XzUq7dtT
q/uIDZK3fEdEKkXiUtRfzwW96Cxk64SAA4Ki+m36qIWfxP9GAkxUpVt6aVf8idUgRcEbd8RPvpyb
Pf24qnto5qwlnL3gAbpvtPpXFNIi/kpEur4nOSa04aXLxurq6ffxquNlO3RGG0vQLqoR12EkWQHj
TcAO3pYkO7UkMDTJ24uL72OoQK046pmq+OiP9ZTGRg4/yJwqFURxczu4tkQ3jvUYr0A7GjkxNpTI
c2Qyv3qrnD4/Txd81YIReoQnMo0Q6j862eqtU0QXFm8bdu2lvQOAGoSNCZkvI/vkzDtbduDxZgXa
UQ/7bhtTXjFMNe//Dmjpgd2lYcCXKojBvw/Cbtm6/vX7vI+EvI/98oCEewqNQGKmTC6lGLrEoXRl
T7H2LtXclt8AQvPF43i14F+44CkK/4dqVjWNw8NZ2pmXCS22qEBJtOnN1SWl4ZZY4gPjFPPyyby1
3tW/KvwihnWrPMLMe1FfMKJqeQHLdOgNfVA8riG931Pl38NxHpMw+BTDePlmQiv3wiCvgU+MXwdg
4cS95Rdtxk2IjCDN6YXYM5xJURLoG3NZyqeedUPPMH+t3X/Mk6bJC4mkXO05YKH0gG4y7VNqAdQq
g0Q4CUsR9c2Fi6KOEkhw1ZJzwo2grQaCdb/EZQEpFCXQdl4gtWRacbOntyP2JMUrASn9ATi/+lm3
a9dPt9pf7/yblBjtnh8OkrFUViVNUwp0c2nqmVxygk7w3BxCdqp0guHghU7NpHKGY2gI+d0a0bXj
TxWcR+7/9HyFu0gFmhXdh1pTPx2G4PHfg0htrSnNGdfGJmETdnF46dCF4umdZOamwwggVG2GGwHT
8Tt4UaS6kZp9QPXRp/Ysn3tfVnOlhEdi/NmE0O6GskCJF2VLMVpUzrchJwCNDmHPB0TJL4k9OecH
qkn1fDsNoL69IHT/qkXnH0U6Y7562d2/lhhdiRTIC28AEo078FQ/1MOO19QSxqKW7kwK8pj98JB5
kpVT0PhvacQCgvWdLGqjPJC113i4w+el/7Xdk2iBLg2K5IGZV2c+v1RImViaCxeRrR+FbdquVP2I
y1iezfNJZeA+Pp1pCKNdlBw0hryxVxGB47e0iFUz509DTfUKn66Y3ub82xFHcqQY/quMHlE+XX4C
j0oOa4eWjen0a9+vASOPXzbScbqA0sUTCQf6zVuXA/4ZLbn7pm89RhNRGoE9dLaAGgfwQQLO+pCP
FLVdqvH7rVjNk6MgNGCCxMSAg4VzTBJeSmCulHlyV68J2w38JW5S3oInlxO/JrDW7vA64oaW/s0A
NcmpbXIXXd75KIXoGeqTue3UP5af9EooPM+tGWQHiMDiqpf114usvA3PDfnYPuIkwR5zlvlZ7gx6
HKJSRj8y2UVx4Wam9rFk1X/Vo5brkjA06RVTT8T6lnzpu+5/zVYDxaMUOfS9SwuvrFnicq47wBdz
gA9WWvf9y3hgkFz8xP1JGztU8lkZaukjbrXdrgz/NSAfD10vXJTYPR4CTmk4tQIDowdLgsI/2VM5
hRqcWX4VQKD6OP8TImzbUzAIjyV4ohBFU8ChAW7m1eJo10kRT5kexlJ61D1idfd8Zn14Qh1uhrjL
zKpoYLFXlLgaliOe5oWrPH+eeoWaaMCX3IlrUp7+gOZAvLJ9vYC3pTTXSNtQFXEM9php/euQTrfq
Z8H/zm9W4cGuWfrR5QiBjF7Q8E3EinaPEwvkjjwlrETQ0Sj0aigLyCcz8UG7AznNgbeFHM/rJa6z
C3YwcxxvCyHQOwKfNr11kmQ8L16eEy9bGt3vD9PUzsDh91hgoueKOir+tjMrP3ACfu9zAx973dgV
w+tIn+RiAUXTDNZffKxEIAeUUbgT9j/EHSFKLyIhst8YblMgJDZG5ssce2v7avwaRsKAStUSOxjC
11cuSQqGHHnJbjVa+oed2yfZEEOqOabVp+9qwmUzI93EojLC7bqinjWxu8z7u4rkPq8dTKqB8FVw
yzuJpArb5OSKU+nMclODID1zbAMjHhIq98hYjVLc8pYeoeE+q+r3BZlAOtVK7L3CNfptIHIlOJln
2zRXqiMAJf9mKauH5JsHg7GLHpl88TG8IXiF3yPnAKT7jw/vfX2a7wpQqlqAGkXwsry4rTU6Rtr0
PZsg3YM9KuKfVLeD9+uLFE7pimAHSh6MxEpmSHoscD3lY0ngUYo+/9moZoj5v09zdmRhwzoJ5hzl
MZsEUBMNvpyphyazKExVHDbE20BzA0jXI8nxHPwhBkZR19JJYAdCI49LAEZjGH+KzuBHIkm5wIl9
fTl3yLwZsWmnQ9+92kMgQoEReRF10sZKr9mE1Vh6ztRRgBjQcZap9bGq5pKUkueB24L8igOgasaL
AuI53cZnYayxv/n8e7HQEPMXb3QB03NBCDNylqsKYw8upZ1qIj+a3eVjsbShngVtVv/qRwwV/dX4
T+UOu2SReGKZLixKtiztn9+llrtsL369kVardXR++g0Jxj0iI15ZEPXI29Zsm57Pr/BuwqHrztem
jMhfzf1O/Pb0GKDRt4+rpa0pTeXXRfRKFn242YN9iWNxhR/GuHARElU4gUGkXj41J/LLzPBbW/8l
BhL2iOG0x9DcSK+EFBHj8cGKjg2EI748BkOdWejyK6KEfvp+pzBiG3xmL6IPY7LEHda5LSwbD9Jw
mfU2XM0Kgz2s+RLS9I3uhGK1FQJXsnUC+EJQog/h8q1rOern3+wweP5Q3LTLyLgeS+gjD1KrAsqM
76Gr3/bHUg8UnXFNTKmAMpdxQ8zzd0rHA121C57/Uw8b8UBa5wXRIKcmNpDtI2G1fmVbIvbRlI4Y
pRK4HyxDrm/NeuqnMNtVz52EtgwNsObnKGSDgmAvEDYRfjIbMxrhqg2yTtu6pvoHYDZ0yUAXAkLM
rUMYFNNCj7kZO0buy+Fu0wSB8vAM1taZotRTe7d5p7FaHqCnUCbP+i3jl78lT4K0D/VLEfUENC2U
qPyDx5kgGHZF4i7czjw+YTG2YOn48IK1Wez7mSzVQ4MEYEF4NwXe8gEt5uNtwrYCcDQx37puaAF8
4oTkoIqg+1O8gjTR5VbrJkb+GlbCA8tql69iVUptbFFzxdsICgG8oobuMaRdfYq5+52r5YEw/67F
8e7u45ofJQezreJKUrSD4akEnsnJEnEbnNXDKb+uLRvcAeH1CN3UdoajzlPFrL905gnKMgpIQABJ
KSro6M6ThYbdPXNlZ3NwIB514VTESTkWs+jfWpJGH8A5Y/cHSPc6rQA+3EZDTfxnU3p7Mg8ihY5j
LWgLJQU/fxYk+hMry7F0wuB3SBOtU2dPsduQWnzp/1xzaoCSQliwo3ANRiKvqFRy5uWg+Jn8cPsP
5b4ZRAarhs5uW2xvpARtXi9W0i6Obq6YaXZ6/L9FqVvednTuMuAa6YXvLIjhLeVFosMhXS9B2QP6
NzPbc1LPCGtPCO17Cvk1uuR4vkH7coeGqLNlf/rUK4IGOV+43XwgqO9CUZchEcTNZbPFqFYZ/L+I
WROBL+EISx6SozYRG+21ijbe4QfBs3ddh28MaqEKX0cAefZ6S9+PxY/8NUGwMJTpXviIp0xf71qc
i0p/nn/skSZPkflfRMauDiNPCQb42zOGtt9Fr4du0LfIL6OwLt5NpLyaWQimYqYFxooRS/rXNZKi
w9BrUn2/aPzMwpLkLhOV83c/k/DtsVVExefUOmSfW5sWOISeryKUTBxfV9zVO7OzywcXnHRIC0K0
DBRGavgv6i5q5YiOkuTUSIN9NMVahVlhnuOtWSXjYk15+ZarmvPTOxasWoHOtZhxcN+RkZ1ItUo9
OosjrE45rPbckRTPUkO0Sso585ZVXTrr2PXwq5H6hPjn9zmqfaR8XtQ6KwFFXbA5WjeUSQ707/0x
MY3bPHK4L7hKErStpzDxAGQisS3ZoHNB3657lGBNVlkC7QMkD0Cu/YNfLGHqPqrnX/FtSEGzNZFQ
p1gxw05MDrYhdisxCCuvFiSNnAoaSblMVQwwSN59nP4tPxMCOqLmdQAHsS03kmE2jrhZ6/UXry2K
NC9huYA0P+WGhUDYTvXg1xlckgx7a7Ub5IiWPpHRXKeK4vZj6gkYvi9vyAmTfU77A4FFyGfaHiRW
ExnUg0QnuI+aXQYetmMAPE0LzYCQcdwJcMq+SmS8It8PCvR3gYdF0DjH/Sx5DVMpgN7yTuWfImx3
wBwoTCjoazkq2oZ9w8UFlweuCdnA5naW63j9UQpeRse8OCb1tCY+eKxSWgpn2z+HJZej0CZJFWwP
Bffdjzr1dpSR4/Gw0yb9Nfb9xW8sKku04X6q0mwiBEaGR1fGZ4BFF+e2nt3Ita3ZUPgzU6GZq1K2
IJz9xIU7ANPYU+CblYMDR0M88PWbAuUIX55x2aNVrpZ+jA7dHEnio8nvSEYQPfRXahWRYdsXADIp
mMxDF4WwE8WHz8+xMRMuzArSTB+5gw0VyqrLOCO8OwRHcJbil0xNlE0BNNsHGqINOegggV6Nw2+h
+b0JQLwQ70P+RDGjhN8EMHfgqr5h57wEIfLYkF89bTEtlZZ00++Ao/3W1hrfYGswfIwJS8+oYwBK
pDQ3Tn93mI6BfsheXCH/VIe1/UbKuevI1pSyqhIWwuE6Ykph1lMu3uKissqy2Rne/gQoWr5Y+FEs
N/TBW7Op6uLfyZv12HRiBv+NbZjBfNxLrwpBkBc9FyAVAdS4puuYJssR3NlIhSK6m3dgliYmKYsu
SkcYpAXEyjj7xeONEe+WeKHMUm3PJBy9m5CPIWWbWjfMfvYJUg38wcxtkZHXxq/HDlbJMVGRgoEd
IzsgSQdV3S+sTQdJRJzaVgsQNJ5o/4Xm6b9FWxOp4Ki2T1hlRSAjODYqlA0y12TYrxAfn4rtm86I
dY0FPycuO7MxpfS1wfl8nl+RaQvLqQYbKdM7hDJ85M8vROWtNgah/ZmMPQOIkjA7K1fSIanK5Vs+
Qa0rS9bmxglGtEokrm8EabncVlLuZzxPHPttlMKNTN/TLPJk4G0+yYVEWv0TqLfj4MyNhFIb6bDE
KeMyFX2sozwxPHDM0FN+lTZU/Lzk/iTc0PKHFW1JL37uhyjt/ZI3zg4YItPnkWl9RC2qEZb32yU5
09QR1RlL1h34VsrR+FXkfPMPd86uzVrNf9jC15pQLvKGaxSCcKwii7iMIi6/BFfOKpXVNs/6Mb8b
Dw+/W86Goim27X6ha1VTCwakaH9qtYIwXW+DiUji6rJUnzlyLRoxSjchXCAwMSElluzOBjLVDOJu
5BhPn4RN/mpIZiWkce91HP9sX7Dj7zKHJtYo6n4i0uJYkimwnQAcIPwhrLi+VDjhwyb0eGsAfwEy
twlfEHTGZVa0qKN/3rKDruZ58+ieSZaGgNpUVaiq6gI7sMiec+q7FnXiTxkTFHHbvTVU3sdZdU+E
n/UFhTt3eLPEt2NKCXfnAph1Q/H+qLEQxIq8f5YeulOnuLwzBiqSDFGzTT956nTSaM0Yz8NqGAYT
3NkZPJtngTn3X6DKHixnl6XBFNCNgwYcNev/33BsbgbsIqgua7BohaV5lFD9KEOMpPfxzl/xckU2
V0CS2BSUMfLe4StVmxRtHzPUZA7RaBksoEdMSiYJBxrshcHyMT6T4098x3yicOmgARDpC5M5dwly
L7Yw/Sx+S09EYPlQX2b7YCiojrlSHNnkeYMpxhlFKs5dbX3w1Iaa5f+/LhcRliIi+0k8p1kKb23g
CgWdqjEFCRchPc6HJ0PhC0DoFQowEDb7EqY7OApY7TQD8F3vgQmjNzlSc0bnUyCFZV5vI2t4rvSB
p6yxBtzI+aF7PI1NEDDRdMzpVu7qKmWUyRmtzZ2OU3pXBwmvDv8gzXjV4WMjs54VBNvKvanFXK8K
A6sAlA60i8PBPyKi9InT2Ozc7DXgSdA/53gO/S329A4BxI012RRpjfoGCiOzJWzOpNTQc7gMSMUH
pTRl2+3hDEny3HYh76DSMku0XUVXlEWOuEOvqU+0whXNsewZ+5mQA9PrEfkloWbErcMg8zB8NJk1
2y+LNVpAAOVT/GxXfdd8UNaPIaBR5m7K0nn6JFPuZif6f/LdvjiDXjThIDjwEz6OW3ER5WmgLuPc
yNKYD9YpVmnC31ukUxONljhIQDzJC88xBDPrSiMofl+EYKkS4tYtCPUaumzwW5gItcN/1zvEtfLn
LcHpod3K28I9iKQH+qBXa7dCEVUbEexouY0dqFF1W4fEtWdtGp7KxBXUiT5uXPHqbffI4pWU82vl
wSXOdw4OQHAM7eGnOpmbq5GlRJTwhKj7qAyR5kkkGNCXakBKJM9HyzO90/4LMPcZJ2UffNZ5ramb
RPVqR/dtOvt4saukUWW1PBxVLXDiWecVf122MzyOibZMLl6DgPy1w9799eCmxJHu6FjS0/lpCJwL
LbVzxpMMRy4nGryfjKIO7cFOC7FdqLlDUPoZ/05N6gIyFL23yNY6XPrD8qV2SJUssHllbtcxXdZR
8oArdnzCbPRmQeoHX31EJZICXcSFtv1obwJU6OwZ398k/K8QyUwkHN21Y/sAoPzIBmT02Tsyshhn
VaIHVIwgnXrpG7wavGFPwIbEjxiKb1+grXqLQqCzAgYpEsC/NG3vDB4bsk2tP1T6c2nJSTZtldZ5
sP3T5TPFlxrzqhtOnaneA7N2XStd3F7F2Mk+7dX5TaMwKAIhSyPz2cdRJde3TBmwEZynI+g7/ANd
sD6JK7t5tU58xBXDSMp0TFy+opRO5rvfv2u3s1T53BZenfwCO2ttOBrw+6m2BUrLt1DOekHkkxMY
4qV+qXTII6/7rBQii5xNmVX4QQ5TnKDCOpz9NjFKjnModHkyW1neM7JCRm0uBLOCZ06Ug+NAho98
XLeJqmZ88qx/9y6bAVtJ8Bwddyb8L9i3IY5J/r/1Yca2rJXxMlIaCjEkK/9UdMfbYbhEmCVmAJhs
pFS9ZVxL0KWpj1hj4VV86VP7uesy6PafN01cI+WvZBtQC9rn+/Im4ih5048ixT9F3reqhyjR7l5A
yHOGfIg1It40hA6DRxjhq4FdjO2W+eGsFHCEiK+XDJKdeCLhiaEL06eYr0c+gF7cqh6fR1fn+poe
neIFis20yncSTMX1W4UBM8h5owu2xC/eHUafPpBsf9hML6kv25KBScdqeAgc2tSJXPYf9bcCp/dO
Opj2vwNRpq5EtfYno2E4o6Epdi1kMFlpeCYAaTmfUY3PKkmhXy3suDxkVoFOmityNeQbfgZufvvx
uBCjHa5wM7PXyizOeF6GwrNsckZXFbHRjCiMAh74vl1gKOVeHkFraIaA3VuWrGg1P7UA97xDqcxQ
zfzdTtYop53gJiwj9NiaLjEmCN9Q5EpQxNbMQnds4P3TowIabwmFGGlzMGY5fHd1JkQ94oFnBmuK
uwb53khSGmHvYPR9MfFeKr1vSXFyABuJ4jYrUaXfYTL0zZDGRhpv9ca0ul0NWdoihgEGsx/Ohjh5
yeq+XwuUwUcxhtgy/IMJQAPB8m+XCXpgRdbwS6E5EEpqVYCwTiySH45uEK8LoPkrp7ds27TwxqDI
hD8icGDDbfpdtbJZtrqQqxJiayYFbLsIkozVu4lqcM+VEo/iGdCb2qDnagfhzzlfUYiccveDRvqm
u1s0s9jHFntRgBRSy2wgwSwd1IjlAE8IU0UEud4B4qFESWjFwzBoYLyye1IWkIJNNcugefLKPZxk
OrnOV24/X5i4B1EZYc75wqJqTJSDkMu8BSH8zvuo57Eoddgm6HZKQR6N77ly4owW1rjbalOjzssh
sXjBU+i9PKzlIQEdp75VJ7Fx82tEBu3y/VeW24m6zSN2OR/xPg==
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
