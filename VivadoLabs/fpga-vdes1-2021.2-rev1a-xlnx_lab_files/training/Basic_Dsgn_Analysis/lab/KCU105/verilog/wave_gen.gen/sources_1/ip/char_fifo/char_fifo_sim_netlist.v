// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec  6 07:22:37 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Basic_Dsgn_Analysis/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
