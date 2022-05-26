// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec  6 06:56:41 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Basic_Dsgn_Analysis/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
