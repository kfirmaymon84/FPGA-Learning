// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec  6 17:14:57 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/ClkConstr_Intro/demo/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
