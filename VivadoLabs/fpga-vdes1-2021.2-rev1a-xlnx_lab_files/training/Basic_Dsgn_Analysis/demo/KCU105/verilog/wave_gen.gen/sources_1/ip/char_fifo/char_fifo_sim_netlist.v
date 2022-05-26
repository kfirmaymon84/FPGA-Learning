// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Dec  4 09:21:51 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Basic_Dsgn_Analysis/demo/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
IzPgvWRjckEmenQu8wpkMBx/4BrN3GccMRkLnrnZLcHMiYJctbaKeXncUCdSMlAhrH/hp2t6cLH7
GX1lseLQe7CnHWSy43R2M5d3/6SWo7tUgt/fhNGvX0cSeqFv2t6UJyHIk2itgbYiClkzc63FYF3c
B2DJKObcbxxueQAclzIs3URtCi5OFy4PPSnzGkS8GHnPi7TSzOlVCOziA10INa93PJWluj9YYng5
NIQDum/g80d/bS+zcaQg6qLGi8T8xINNs3mIbps6CZP59C9cn2u3e17e337Pt18oSPvGKQc1PF4z
cALdltSkbkDMJxpravp0wXA7zeN86NG/1G8LdF5/k1vVi7SG+i/FYkFQnCmc9+lgu7ykS24Edkho
a25Vf5a5geOHRHzy5tdW+HgJU+U2qub2vsI1/I58VwbUl+sswPY1HLYTc5+XgHoo7mZ/4b0GQsFp
dyxIXhEcb3ta33Lr1iEQMy7cEzaOrLrAjqaVg40rhvITOPSQD5eDg2JwROems+Vkqp4a42YMlQy+
/YccP6Qn2aMC5qoohj7DHUlASafKquDEyY/jyJkdaoWVUPklqHm0tNxCM0Hp68gB18P9j9jKjK/S
gYa0SaMKSbRBxCVmO0uGutLuhj9JVdrh8Ino8WjwcCU2EWvo7a0uNriNnnBnYvry4i2u9RGLWCqT
d0jIHFTBboY/JDEBT3KlTUUDk5vZl90oqJZSKEeBbHEeo97la6eVA5dIHlsgisNFBZglLuKNDobO
6KnhSvHS3FdAcmODNxdKir6/Ff8beHe9/EaA2evDWUzayq425f20V1qmaPAfyuxiaxVJ6v5FPXb+
i6zRSH33gqU2eCbfb9FHIrndn/RlBSSzdVv++OTYPS/IaK9lpBpFeA5H7i/E5MonRTvUdzCX8o0J
9iMP5uachGTSi8AdyCCjPg0DgWviFAvpr6lww+sXQM2YtDICWg7YqhEK98Sjnr1o8ZHy0k9Wp43c
rvPrbpkDOfjD/0aNoJ+D698v38oVNUY5AKGn8DNbsNJq4uveMOc0/2W4SHaXogfOli2BKvyIMHZG
OGLygpRxBuuBAyTPrAtrF9ml1G7GxA8tNlfFPjeGvo457sYpdU6e3CMSwuWyXuS3FpG+rXy9SBkv
H3jF9d4LjWA2DRqg/+SbejXKrBuyL0sbj4xs/IKDLVwhpYWijOzczItQH857ZRykdyod4qAvd2ey
WdM8CZ57Q0MkXoORZjZxwEtdwDBYvl7woUP4Zn7+vi3yUqG2HV+jg1kAzX5RCZhg1M2Vq6/LQpT0
Ujm7uQMQM3kf9OWnl9UFKhWpPKpHdna7InvML/6OqPqdjZM1lGCfOTlopWzZpdTMjxz/W9qI27ZV
KMxQ6M0ohEwriZtZit4VDH+8D9bRSHkQMysoxaA09dqqF5fK4Oee9uNK4Vv87cjJZ3oMVYPm8V65
k3scQ/aPBkB7bTq5zkGDTwtBKHvkz4q7aydysqFNhsFN+c8+9yJxR0pSLOysTEBuxKUD5KByAv4d
rOXCRc2n9Xdua9VvDnQdqwaaVglyFw3Vrv6hsihxoBOAu7qUDfQzMWVgmvLGrvcDGTEQBqB4FCpa
f0mPjePFgUg2yb7wcPtPNgYQqhcjeOuihgU6A12fYBY56AnFb5qjiZglPDBZ0EDa0+uHuN4ZP57B
RbOQ/P+mtkkVGBVQzz2EoXk7ecL0O7ZYZnObVQNfCQFOagq0WKvkl2mllWC4g9aXaxIyUOW2xght
2b88avZzNRnREYXtaC8pKW/RDSrZIlGJRu4MGksuYSMbYSRKcnqD9hPZn+5+sPea4esqo+fbK0Df
pkjbi9VKtcAo/F1trG7vjZcpVNcrpYEcPtZSfIcHDCMfIerOMYN+Sv4gmmC5QJqnosCLEmWFEalz
YXAnjkDcPnlzbJAX1EcssW9Qna9FCKS9OqjwrxLq004B+XdnVKj8TAqiJePuTndUBDJXJRSIQVfX
6/x38ggmWlc7VWW9j/omeDjQ7y8rJhVAaxFDyNuq6elKnOH4ej/ge+o9AdUTYHJiYvlLKqjzFFbq
/SHdcB+CWPI3kS912i5xVoGRQ/8ovZ/Aj7vZN3sGkh+UY2fXMxpRvjST0P/x4g6zY1YuE+Qw/qPm
g0SYBsvgMgWOtD5g7FRlYodjDyb4MYwpGohxAWuD41/hYCx3d9lTDdxpP6aWLBFajdrONYsSi4hH
6bNJ+wXpiel2e+BgzCSelUrW5aV0lKOq0hW86miuxzPLQkqFaK/JC2aSYWifSvYECi000kaacu9z
jJ62TSZQuXUCKGGy4te6fYCW2pykUu6+p/DXo0yz4mW5DOt+AjP4nO3Lem6oSfNKMOYJerSR3xW3
yZMeis55A18Xz0NZuxEJ6L4jOYJkajp0aE8tzAzQfEAFvEBUa1rpXK9toQZcSmwZj/hxvo5TJJVb
Iq7hrBssn7TsTx6l5uLrMrFBTF+ICpdtDxNY4lZs8gg06wRhCZGBxyVm7Tny5wF3uYcUEo+1sUIQ
wY8D8rqAwsTuPrpCPb4oyfInZBN1q5DvGtH6GwRoOkETSaq1iw/WBrR3DMLkXI3/ys/JhNyr1tgt
RQ6MUpYLOO+0x0DqMzMl6TRXGLeicmAoOOqm4bQ07GHMdil87QWfSo5sYJPzazxB53RhgujkYsUw
vJwCYHFC9BpQE1sX107YFynWFbx7nEN7cLfG/i2MIUb5OAt+Qu7+UwD24ChjyRYTKebPuVQ/XK7B
DAMc5r0x/SrdYdP1qktLIh546Y43/ALouFL5lOOlrr6PSHfckeOAdoSifbv3YyCRS7PeSXU7OL0M
ZffrvfdXetZFO8ErHtAEAdlhkJWrztcFOkefXwXaAE5ZjSAUNA8ojuyykRyn5w7BLY8vUI4Xz1Qi
ExHNEF9+NOsMikfd0GSJwAGOqO8HbrVU9AzZo3oUfPLytZWfIhieLRawnAVxDDXoF7eQ0Umdd1qu
KcjKUUFTs220FB9TgNUpc5JMtPd78/7cOhkpABk6dxKFB+g3I3c0mqmZMz405Jzs3RLKQ159G208
MzEB+EjwIfihGn0/SZCTG+W3CN5CGyOQbVJCfJ97WQFmIFU+pqwx1yZy7SFPz2XNWrGY7CMmHRV9
mm9YmfEcvbmCaLuTNK1mKqqSUeeYnsRVjUFlOzF9ePJjUBXF97y2MGJLa63Zhn+8FdSuOB2Pz7ka
SFciNnvH8Ik1JLtGtpocDzMH3kFN6Y2HbJgvKrMqsATrnmL9aBEVhISfULHROjg4o10mKwJE6ZYE
sAGdmtYGSO2BhCc3IqyYKVW97bnm042j2tkX7BGSLSh3zSyHCgWRrccDJD2YCRoH//R7/CLOEGKR
Dlmmzd0NMaGQuuA0gGfcz/rsa28iDi6Nx+9fNhB6PI6rWWPkFkmxt+nh7VU653vWaSHAOkrzbqAq
/BxBNGQF/6dNEHR/BmCMAXXoAcZ0Y0IifwV0vR+K5WgxiI2UYNnoTltmRXpwdNHcyAQWdARrd1yP
eK37LjrypeLFkH1vc/5Tj9DRbCAjE6uarW1KmfNytHZJg+8P+SCVboBjThHb1cdAA4bZhrks3arj
yvVFdGfy/+GsdRcH6INQ4DyYl8tE1Rkk+f0j2zrWha74V4Q1+IrSj9irXpq3WTE/nV7Uf0B4Mc7n
HXWFejkRdFCenApLSS9fLNUqDuotnmyLqkCqvibhfHkwy0tGwg1arJdJSHno6xx19/YgxWJRipuQ
gZs5QJA+vabYJX3JVYw7gWPKWDq6Mh0UFcK5fvdd+/yN6pcwq7I30f/SEAKBTm0rqCMtjh5k28b7
qE6ZO3h9uKMQEJt0cWHl6A+8Kp0dzrpBcNawFCDBsw+8ZeLsxlgwC9UyXQWpfoqPGSi/4tFehBue
6jUhX5MYwZ+JTTsPCJq6eX8tbvnOrYhqzVfHsJC92llJ/3CtEmXUAd5nn4VbMNy8u+dTW63BPL6X
zFxJUb+1w94Nl+qMq+4Cy4WHiRg5/HBss14oAIM8T9U20+tfChDUioOvF71MjfMPsXBWyNkVcWdm
kINmizJT8oZqpMeaKIgSmj1+DOoT7xF8XIjDNb3gJ1DlkuP2GeP4liiDKdljX4fPDY0Fv/eGnJf7
Rxn4TD/WTPU62VaH0aIsk9TMC4S+jX/f5MJIDGcPOm3sXMwnmzHJm/DfUMvxsWcXIEmjBzRTjQeK
l5IolGkzmbl5WH7Rc5kjcT2RwKUlvW+NhIdyuWWR5mNlytBV5EYbu0yvOaQgvHYoYZZ8IqJQ9gQh
CE/OrGAhlWpn6INo0yoVccqIcvZCQu4SjKPNZ2RsUSs8nKs/tQxhSGiInYjxVX9khg2t18Djec9d
dvuUe0OjVuHb1NWx4VfcPFeKEMm70AuXJVfjKrTa/2LlubGYgk+rLGVLgYcGzh8EmT6g+TpIxT7y
hx8/DpdikNoxiYEvDrJGEFfFrltE9DsibwQ1IyFCdnrApiV3JqSIc6sfBjPCaF45tToT0JOv+17A
rW53tHytY3JyNzcGc+ntrnBTQjMZZNds4BhwX1zDsDyI4E1LjmZbjJqag9c89+hoyGCa6NKOgI5R
oVCo1iCJxNuGEBMhsw8gdo9KX4j8CsF3Nyrh+jFbtSpiQ++GkoIhUHqV/u0QbzsJLhh1vfkKNc8o
4ekxQMR6mzXS58ysas25QzhMMshrAk+/p+qN5fJrx9865I2OSbL84nFkCw2ctcznPITWz9HB1PP2
CzHZH7zpDVtLwXIjRQq0kgnOPT5NgFTmNB2//hmX9/EppOWg28/0Lj31IDWS2lBSrfMcj479VQKs
yz1vRDB8EcV9EYr/qdOIVdDlxmzhxSJnzWftGxlQRKsMVid7NodoSBHRCDfSISad+i0A7EgIv1WK
bKpxqMIX+IoB+gtTssk+QdFcll7wxAKwATnEq9fWd5juOgAIqPlrr1JiBKeTmHJPZ6SgXgbyTZ8K
XD3sDTPpYTxLlt5io2CnBRAlQjVyDqcJ6f6+f029O4rAcr8GsUaBHuQAAXyT02+fXflfugUNcDOH
QBNve8gJkB6CK47EtFnxgfAXS09alV8iT3GgGb3RdZdrhFvcBrnzsIG7OrdwcKAQPP5L3iusfoGO
kRxf82KrFbCJBfZwYbF9fkxBCKsRC2ANRYSoCglMyNeNe0b/9W/ymkWCO49hrx+PpvKTsqzNuFVC
JZWHZxem8bU7EnsI5YYT2A5+7wz1goHe/v03nTg5EfXvDgkxHjzM+WdANuj39xXL6BUi7IYWpSHS
SGNafaSzFKwa0Df/Au2CBG+CbXg9iqSjGklkOT27pq3FxjZq6jlZRiONhgw2M+c4bf9icmkPZTXX
ZUjewDbDeGb815gGLFZ0jyGOwkkZ9O3izaJGiNZuiXCwAcGNXMCBcQ0vZM+BwBMJzJP4SUp6XnKU
xaY3shJqO8/WzieG2EB9SYvYwF2BH30K0HlrfporSU/ZeQyFAlyvj12MLphqZF6/kNGffIfZNV5o
kZ5dNvXgOviKqg7F2la+6wc7wlXiLLVeIAaXhwLCW06QGvz1j0PmwTMDREgTh8rUNyvB9DS73uPK
HC+V6pDY0dZSALVuKs45vthQKInfs1uED07rj5hQmHQ3MMVTkDJszwws/SY28uNKyzlbAnAv/cl8
0gPimkO5avTk6UE38RJUf9iLiMHbucKiBQ1cg06s8uzsQf3RS0ZwHvhE99Mj0UlBMNWGm6/4iwO7
K9YZXMEo/y1kxeRLW0IDFsECZeLvMPvq0kAmtK4L+2WQe4Ut+7qjp6Nae2dqbRBwaVWw41FO+O+0
Bst0FgQWulRtaYpbzbZ2YLH/1A7gK+KEhjYUC8WG4CS7MHgJzS6ftYTHXIBTfUkOkismAdI5gtM9
qA+1g8tTMD1HhAdPb4YpB+lTinHsDEbQME7ANqx4F2nmX70/yQ3yojjmPyF5g29STtULczSSIKGe
ivX6h7v6xGYvUqoxTXrUMxIgwHZnsm7tph+V5UGlxlIazQ5m906PCgQ5n7ZzLbkJ+XPex4oa6eLO
1gv0Iei9DppwqDGUYEvPslhut5bKl7BnnKuoJe431iEHleAWNug6Y4hOPc/W9GTzsRAF/4R1M16t
wDgdMTT4l1Twi5vHIudMMLeFEjQTioBRvAI3/aYkQ6pUSEarTNOiwtA/10wyLLUYNNbvhKTU+Rel
fTXYduTta9mh9fnjMXKevVVGd0mkGxQ4WYobgNp4KxAV9sZTA0HaeCG1aPeLRYTpatnsReyrzvm4
OFBL3WXxhWw++Lbx4oRcf4Lc+STnlyIDC7E6xGHxWWeooZdlK7wcwfVy2gCzYL33fN9gVqV1MijR
Ot0VytyBQ0JJSQdOhC6jwLkPqNNePUIlNfJi29UinL6mHFX60GoE6qHYi9bulZ7p+TfwCbMA/Nu8
lgtPktaIputp+hA0qaRuoZAVQW3WkDfYAlOB36NgC6I5oskxIy7cVR2eH+2xb2CCfyyupIOWzA/7
vBw25k1RsZCysuzXqmhPN+mei4Z94Zr/zRLDH4JkwY7xVlFCLpOu+aRghaDx5n5kX7SzhJBJfj+w
t+tWK0bISC3seV+vP9d66xTArcy/YbBh9UT7/hJBcTzbAI6I8RetIpktpYj8lwhDF1FXuiJ88BFY
4GOzGhzoItmYX8Sa8aiHwcuQTyIgnKETrji8FYPQHBJWVIr8nUkhDGQSdAxhh9/rg7+ljEV7zFT6
shE7xFCqLd+bZxSvONY5GxeVjja2zQVkbhY6XKbhWl1rfUHHiugzTsJpsfa13HOWrUeGAJOOANUc
P8ZFpmRAQ8SImmBI6ByUEih/L3aArr6wtRbLW3P2fbKuUrpTzAqRqAN0ebnygll9pOdI+w6V7/+G
SMUJbOpeaAi0bfR3flaPUeiyudazDRM5FdF8+7P/5Fc/H+XTNQokIfqY0Qd6qYjesFqUvM+6RRsj
okHspP75tWWeRN0RntJB/D7WzHJtDIFGe7vX20bG5JFR8Hc2we9RzXatg3XOtoVr6iiXywm6Q9fA
ZF7SCI0hVikiaNaiuFF2zbTWrnUS1NNp231r1FkpFHi6WkKNy+Df5rnG6kv5g4Uf+VMwaFpCJxv0
1AwXejf5d9g9pbEWE8oRakGVPtBPrGf64CLfjG5Srwv+8DtjMFWwmVClY+wjTtNC7Een602fi4Vs
koOX2mYBK9fYILSbh9KgYP2M0FOpZfiKdTwcAquxSSephP+mpUSRLWHaNz3JNvJpoxCWALzKXYOX
nEFiAQEWBoWRYNinozdnJkPdxkX0ZisYGhxOc/jwlpTnK/e8FpmWgzEh6tkVNX7D8hHBewlIkK/z
A6yqlJ5CMzHuZcFUsdl9TWTrP6JmEmI/7/yLxdr7lElpzZ+zF+dPCJA7enfWpQ5lsjfc998GKhRX
C4XwPuLlF+GGQv2MQtfWfSandnAgdAyp9gH8rOAt2dVRlnOVUPNtQtUOYB/GVCjWC6DaMChex3Vf
+IxQElxIAd6weTajC6RBSFk9xl86iFqPIjoxnUxjpgPRnSO+yPH8mOSbZLK8+b0ooTpLSTi2g1wN
2GskoVhySFomIh8ifhri9bbnGKCVrErQ2BFlC9mVC52pel1EsS7mm4jCs8v1XtqBDsjyMuLsPRIG
KDm9rgeGNSJ/N6T9xB4wgKvUe5NmLWnBhjBbFs1+fThAZjMMMznRjeeYJWqXkjjNbfZk5cHrhHas
EbzRT18Q8TC92axkO3wIi0KrRTtdtbfKyv+5Xw5gJVWWrpr0aRXT0uNSum1NnOCJtulzmcL+ilgL
vgGlIBkWknMS60/0+eIVSeKwYPqUJue5OUqocwB4fuOJBSDmuT/1LVqYm6gUBN0u2RAASDQ2mYI1
tkX/RxwmZeIs44dygoWzIPB4wB7ZgquWV9TDNVwLfaH8U7c6jkrc9eSdgAiBAs3AlyN/OEJWPIRp
kizavhxHk8+boa5YDqVPxb9IFAtaNS0UbyQKYrcIDo4I/k39+rEW7Vh+rZuMbxcc0w41Q8jZyAJt
ILmLO67wiM6r0K/WrX0X23kR0ySlYNVPLo4OV5/aP916RyvASV4T+Y9g2CTNUsc2030fflvBOQkY
gpyE57ZptIvNgu7YS042d/EHjfnM7aeRGRdXNizROK0/tsFo2YUerBrpyEjYMjiA8OVEy/Utwg5Y
+TF9qVXPAhJ0Ryfc0X54eO4Z6w0lKJ6c1jMZUgSFWLAZZ3XaSu/qBHn1+CNYgG3/6Mn7ZhEE2bLX
v36pzUYMMry3hJ1pdvU5najpRtugRjGMuakzDxSUJAUQ4ZFwDsgXTypT/nIfjs7AE4Pccn1dDig1
IT6aiQv5/2Ka3FnfZKNibSgpoL8JrIRkFUbhBbkfjLueKUXWiKLoV62ruhbujTo31owq2QHTpnwM
OprRPEyfdujbNoZEIEiISIUtBmQEz77blDkiFlfh3fcPYtGgAdr8fgsX1CYxbyuWtT6sgA9pQuPN
gGL6LPXyzixGGb5x1iHFKjmaYHg+NaTB9HbqKbsENQZn/aYjm0fGyADXo71nAGfZ6GyX3DkJUnfl
UNiUb6cScJomxpMOSNu4xXQDejyOKGnZRz1haXdCS2l3ysEhRM+xpimRYf+Z2VqqiZVwYyl0oqKl
DX+LnQruHj5jtScOzQx7IZBxqYkVt+JYQTPMX41e9wycs4jXIBnR3hlkk5uEfaKzt9JRh5OJaAn1
LANMlFyHOlCNjbh10iPGkkL/sYHQE/d7XjjBeV44WnSLE2EayfVLnbs7cYWug74dVVRbzIFt+vs1
fMb6pyOGPiNPK2n0jPa06p7UthdP0wskuGND2rF+2mxaZWx7yqL4moW+PqiWxf+BUvM1MQNL+Vse
t8qpWo/rqzTrAisulsRBJMrn88gg8CKfszGqmELxsn2lXd3hZeMrxKzHpUa6MTY+LEGMkMaJxcuz
4b+6+dmSkASycjmpMpC2PuU5mtza+79lqQ5lv0hMCc4L2ExQfS7PeSFiRsluw6GZ/Evkk8i0usUl
WPN8wZ08F/grPtH9gswTiyNYBGZhCRc1c3QZcYE1zJcTLBPanZzGDsON9qTUVqPBxX19oI1vINVS
gm4XKxqZgCSCXtfU+AYvZ5JunOD+T8OOO+CSmTdfuoVlgmoQPVNlZOhPlASMJ7pG7XwZqDnL7z4L
4S93LnNz/oyWmtVrI+tgT06wun4kPuBiq/fbVGO/GZczHOQx4ab4ITS6bFZ69REhzMP3oKFI/DWI
HuLLDwGjzaq4K2frlzBm5h+kcaEJZVYxTiHHnosn6e8tO91pPc3qhrH3dOsCGssXRN4vNtDyQI/j
eOkeox8RQBwaOE2rbWKrHb2qLA4K6cdSA3sFrRoBy5WFrU5OYRb8/ang6KHVe+SxnDDvCTWFUO1R
+rt5URDWCZabwbTuzhQknkCGX2vDa3yYi3SWUk2WZwIoW4CHCvS0HnKK8zSNfG52GhqBYAacqi8b
caD3hHfIM8mJNk8pQxG6qAZTQmhiPMzrOy6EVor665IBVmwlhdx0Z8lKrmtT1gyFEeiZNqdXaVQD
D0riBA6z4jbOda/SDm23XGdZtH3IMjlYdzT+6yCl/94dfktvf1ZYyTUE61cWfPSJMeV0zJmunUS5
Fc315uXmutdr/fBx4/M8aM3aPOJbom2eauMP2TZl0yDPkr2uKTL95/bj5WPjrUuiCCQmiXu1w7aK
CI/McDXjOWSM7g6yG2Cafr+nDMqasoT0hnGlOruU9tJl1vXd95x3m8X9eAYacpTrR5wXh+PxX0Lu
3YA/eugNSSy3xttGs0JBhZj3baEjAI4ZVULusbzceif7K8Au527TqsANc619PKU3pGhlReNJs4BM
YoHMLom/ptxjn0+djPjVOETZnY7Bx8AOR07vIneojnNXY7MlJFBcvRzch9H/9WqW6rFYcxYIL49y
4BklBjYZXpicb5PNUuzTR3Eei3Y5B2PaLYkHKEhI34AOy2Y2aooZoE8cXIRAWwtN72gLc/qHvSO4
Y6NrvoWdUMU4NZdvSxDf6eiPVyk81Ycqsaq4+lz5d47O8Eg0j4dP52xk2FCjmfp11p+wARaXNkJg
PVdTqvkIcJ4Srpdf8eXE3cXtgJ+LqnGOQlnLaNpyU85M+RvRyofIoEgwZa4hpI3IONIorx9IeNMX
hs/LaPl47Hb3tuZAznkiDxKaQQu7g+2/zLM2tFD/YYYxtQPzS2hS836uiXWC8ZCnnLXX5b2XChe1
0pX2Mgh5Ew3764pNwFQTAJtj2rtliq8VvvddZD1GoEiROCG+P9Of9mjyUC2bouIDkRuzNG7AyitX
rsdTpj8elWxdUjIdlLCD19omYy4FK9krBS+iUuxvYPSkvyXpYBYv6ZMoJQ9sRBCPLsr1sFa2PpUG
CvmP9pitM0oJMAXxyrFobsPODK7fpN9l//ylWwQxOVK5TSCDJKZLB7beBOfUQXLG1Uz0KYLzhOXw
W2nsJeQwWkLd2YBNSfU4wzJ/0UC8nknkiDO7mjJn9poxy40WmR+VwI6vIIpsr66DTWe3cyXVHQBP
2UuP1A6kCHp1E667z9hj3bG0JFrx/mgl0KVKAaYPGJPLAL30XKfHtDQd2f54BQQ1Nb+reSLu2OFK
AdWj1QPvIh7m6gDKnuMGxJ0cY4UQYayQzQtcapgKqInP/6aaytcUbwJpMX7GtudimyhqWEfryG0e
1FNjmQUgqA9myJNCy5puN/L60biIxVO5g4V66WB3Ce0k0GPA3GLZQ0iDaPJTrZRNmoo1EJrSkuHT
rQZjDvOqYP+bW/8XAxAEeop52jjFKvHsjmqeAXAsrXR8V6qwh+MwEofQYiXnbe57kCDuCa8AohR5
3UL5ljaVQG0QRmLmcJlKHCKQG50mCaW45r2D210v8argYZD3tPy6VMWKF1DNtKuskBG6iQK219m/
nqjWt8Kv0LUdq+lL9blIpHRziW8HW/sYxOS0QCIZ7tzq7kw2dYVHPCrOcdMUoouOLjM29Fci7tKH
2o00isf2SEn2qVjpI87StlCuBlqXrhiIRrNNRHcEU1/hiZnWyvi6zk46O6O0M6IlLEIdl5UE7PpY
/dZoHSdmjp43yBdNuyQVRB3kfQyBpZ+s6T2vTeHL8GtpDHzkZNWgaAlcn0D4haxuFf+Vh1y08Tk+
lpL4494o/C1yieK8Yg/Q5IpIhgNVru9eMAISWcJs2jGac6A7IwvD+fjl6L0YCdAuqK3sYr1JJz3C
ObLl7SF1FIbttSytREYaKwhbvyiOnDRXzHXKxzZxfSJZdoOax+bHKRiCUFqlChOzexhgXm/MvE0r
iGicqu13MHa1lSUKDfdNIg7nU+styrUG0oXFDg4Srw/EYHrxOOHGTBoOpkwZUjLFBllBtMjdApgc
QBHfK5myQv1IhQxrH8Oli5+iull1rXYjFEd/owIIlpDvhzvcCEYU0Lk7wW9qfXWMnbzr1eLla6+N
6pAsX99MxuEp08eTOkw6TZLvBzhnDN/cK8XcurVkhznmhKEUUkfvWWwFRBVAAkY5S29FhxZyA3Gi
khD+nNP+glQ07jCC3a+Sta/59bLv06f+CL8nSHh4b2FZ3ylb0GKyfUIhDLpoXyev6sf+QvPVUzGt
/Xv7183FyTjvk5BtWBECGF6GlW0Mb3oVUPlVvbSuiGQWz5vkO7qop7pQ5PYhIytjbrzX8UXIgGee
hPMrXpZlzT7modd+bSBnssgqlDHFcdDf7uChw9iRG8gnhPYj+gozDAGivx+VLYDDr/YndJhKYi82
IOA2e8sKEC3KG/a1NeP/Ox/LbajnTUZgZy3XGR59A5ZhECVk+5CakUz/Oh5OYnFJ1TJu8tjPmRZO
OfPRaXHT99U7dVXlSLmjOx4/Pk9IkA79jLygRGCXwSDcEHOiS7pl8W4uRjRxT5AaJdVgKz5R8RuJ
Kx1cBRxoHbl/kRtsVkKRIaPK8RJWZVTQ8wa/e5nV0hg7Qh+iKkM8KsJ+yCoaDJAIIrNDN/1KqKmz
PGOCDhThEd53Zjilcru7XEycZPvEYz9aeN6UVS6aeunDiRtGSScBqoBFa9PIzGU8SSxOIg33SijE
UotJQGy2SKsd7FUZeljS4WUkIVbTWbMuwC+g2dm3sXKiF7xD2ujrS0Rb48tQXDO5nkShxFW1QjKc
Cor428WkElzeZFfkH4CPNPW44LdxTKBZ7UyMdV1br0U7SmCuutOCk/fD0c4htUI8qVarNgoL4XaH
aveYvxF3ggwcTheWc+K5WGg0q3aGrtLIxBsrhdYfAm5EZ9Je4dYaQDSIIlerCTWqenwyomPcf8UG
Mw+SRxyxoffIWUCMf7dk5ftd34zdvPrWGaZOsKHcHwuNqtv4fuhVPdcuI50AFnmUVB+HcSbDQmfY
c2u3ONEyn3LJKT+5HDd9zY+6+ItU2oul5+UYHTzqmDRoKm/PRiGS5FFUBAw/fJwO0g5g+jeWmEC1
OEnsbF50yAl3WRUK7qfq/aJBR/fp07/MDn6MPMDKbJUcjSmUiUcaJiajK4JpskKqZ/qHlfFb515F
JEqrk7njNyisNy/x7Ab3j7ke7e8zg89bN8jd5eVjwoFw1tvfeg06f+9uTnH62H6CwpsMLJDtwFo1
op5XZe2DQVNJf5+0rcmHQfufVGBRfZzVm3DMr/3/HGhn7TexWHlS2xiAWA35UrB7CxyO0kxI3V6/
xrJ2YG/S67VTwFOgnNkpO5NccqkhsV6v/PS5cVjCZkBDIWt2WN/FU2XVhK2xTsUfiK86r8yDnmDB
ohSmoRyJd4itpQ6Bc261V37CpzbUlytUBr6+rrsir5GjJY72grn4n1NKibyMK36zffTo2nGQFOuM
znikIqMIhBnj2Ql9CV0O8UYr0+UENs/KwSpQPoE1r2csenohKc0afYatTM4gpk9bYbrDp7nrPjXK
pqHEjQXWoi4A0GO4pSeNtT+jNNO9tBDl6+dYg5K4WZdScNzdSrOjje+65pn5dlLNmrNsJiK9FHKg
et1Tp8gmuOkyDMAy2o5aEJPlA5Kck3GVnfUR5VC+qfwj11x+o3gb7E3X3bRQiKZtopJozf1OuaUh
9LKxTLI9tePZVqU8QlnTisU7uIDImZKs/nrcUEi5xgsODazMwWpUUMs7n0VSbMtTBk3zMkqrHyhp
aA7mJe+zBkrg/n/xNeKSx6mODgyThsqD10WoCiTmLoHPugZOx0li+GAvAHXzY30OF45UxnCKBSoT
A+tZUhltH7l8vadHuyV80mr4TROoguEPD0kEit35cJHPijNBAEV/uMGUSjUt1kRfbk8aWtQ8iCFM
G8W+4c4vfYOKcMZyyywCRHVR6GYH4RtG3qcaHDgoxE//pEIpo1YMeExYIAVPoDpm8tJUqkoxwkFH
7+NwK4Ewv1ZeFcU2iduz8hOhchhfV/SU3RXp9HhdLuqblJZp5SjT4l6r+IYd6y/sez8my/EJmsRp
Otvk37+0q2SPth+eD2Gnuw5Wc/V2Q9Ct1N7HtIM6kmXlCgOZklQmAeb7yVFIR41v7ojOT3dgJ9P0
owSAp4YZuA2Gij85yEerVpND7sW20MsyPKmzGKoB/NzpMnhKpiWo37wpyNzzUfIzKLWRQxN00XWU
LJsRBxdC06hTl76ROYO/ABRlf7WR0E2fBaM941yUpaE9Idq0fMowCdNSqkTGzOzq4PrSVIsgWyIU
KpQq5Kzbyx/i+bVqMw9libQsiY/ktsHGrVcvZWTGhoJtOribS+4mb8iRe/HREwKGP++mrEF91jGH
0ghliIntSIjNQHStbYEbDmPrOr/FIzMQWoM2Rol9kxE7GusOomnHZqCPIH994VgQoEJoZcmThgJt
5l7CqZSjegSnQLLT2lOSQTyZ2WQRnNn37bgjx1HKbi/TAJQVztxNa+vRPAvNJuHquB+bzxOPUq2Y
1lKTxmt6G838dS4wv4S3MCyD9gtMjVLvqtev2qdhWMxIScZqQi3/tOUaGkw9+N3WOX17dzmP0CnH
sZseYIIsHPwaI3XHDPhDw26iH1HeXAtmpKIselWVCXH62ZYFclyneTqVzWenbKkb/rsO/L8V3Qij
UIbkkxC/SgpWD+SwvCUwJ1mvpGCFy3EiN+iaMTzTy5Z2q4LdvwDcfhrwtd0S2xRzg9YBPLd05E5H
VaiWBlrp3q9ImvGlHBFqHIf736gZxv9wg1WkBIbenUfEyUeVJfwlo7Qo2bzaH9rlIpRFyksPfbRr
nn4flAMtvDw2Sc13EAKpNXtWH5vYr8zUdDSXa7Z/Om1oHFkTCyzDMd9LRJ+2iw3EFEyWbErXNpct
1fHy/lpFr/b8DOEj+ZeqFoOjJwP/J4h1hPbH8Z4P4YADu3ppOXtUYY/EkQUZTxhjXxLNNJ0qQRFm
0OBkdxBsNwuZuycTWBUAzazCy0Ck/J2V/N2K0s5uiC7stGzHDrWg4lDjonYewZhqOPA4mdZqlAoF
fP/3+u4fJPuaAPi9wApgMWPtKkroLKXQsJrjTOFnO3b2NHfhoP7fxTYMhbc/LU8KaGQ41Dn5aK75
9oqT2pQJUTilMjjYWcIyu3nQCmOzpL7zhDBmq7elrQlZJeVi752EWkINl11AQkb57zebKR5rRFZD
HJes/sgdqdeFCzhL9BVJoCKqozS0ZwEz963PoL9v4dW0wUp9FVaIj1d7RUq5jcaArPItyKdxU7q1
NJZDrB490Gl0N1oNnmy3hUvLXvgSywtDhP4aIsrVfEWFrHUwVG6Na/7C/iP2s9eMzfPjwl/QkeFw
GHPUwGGV0vBnCjKmcQNiYz7P2pztFx8VWD1SYmK+K3X/+hfZ+xdxNEir+HShssGWtEPXWCkDRhzP
Ag9kA6yQxoH//sjvLZz0quy+Rm3SMe0PmWXlavQc1IymsaokFsCWSh9eBhaaiysNpI03CACQu3BQ
mLBe+4pGSUPvudJuBeYRrZNlfqdU1dWm+O0TPaHUaeRCt3G5N54nnVlReSk709xOR7L3uF8J6Z05
3jn5XncFXPN6WMK8yzbdKBgb5Jf/6qnFYMEWVSoXmdeSVFCrCk7a7vJqQFG76G9SychW6Ck4xuOt
KZQTQidHAA2oSW+FBU98WgHJoT29TgkprALq8Kk1Vt6A/N+eDSiGXOv3xegRYEfrwcQMdfwEf/9Q
Pe3Ss1StOe2BlZ1cwsmy8Bg00FToYKmCQ9S7gKRKnx0+aXx4A4Od+uqEsLy/8+hClCEhG/dCaX/3
KG3k1LXEzNNRp9avGBZFXznh2HOyZcv/Pj7VFW65KEdPzlPSq0yVxliglO8O/oi7xf2fVsDY4CBr
7g705WjHXSDjrJA0QgJ02TKY4XKvC7pixZ1f05xU0O2q9C07dxmVyHcXdiQBQfeAXMJYqb84QGiy
DMrLKUWuXRp8/J7dP8tlpeQbnY5phHoXJbkPAp6Y8M3oO7a7p3lWdxf46VCVhDVnxL75Gr4B4znn
5mnLn1v2UpMkoZ8WHvCVoLffB4SZd2Mid4rceWFfD9sdba3syotExNyRpZyGbwH5DglwYJIiHfet
gDT/ukm2b3gWVfGIJr6Rku1p/Dk38jkLF2josKsvkZOBtQPfygH7wsIIF6TbWwJbdLMEo1JKVyWN
75duI63atrTvyPB+OrkixmGMwcgJDvHi0x8RyN8Yjl/6B3QQbDZeiL0pMw2ate7DxAbO4fs9wyaU
mF/7Iw5hGpOFdWxxhol9TzTArXzv5oLKiFLMVvC9zSwstA2rzZ3jpt+Ljh2f2vj/XCQPsmibFwAU
Ao9tdN7HTV7ix8AeeOU6sWJuIJyBBEjmh6OsObsRvSwuJPodtcS8Rfx1H+mMTNf2SIgsss1WJ4S7
H9vy3/RjR5UKPrFGgkwdI8jheVDtP5977dm9YCIINal7ixO4Y8BNNuf5QttY1oijWuVpfzZS5IEm
D5+6oUiRD+sg4x/9MjAc55HV68eRC9tbI6ACF48MTg3qzzExZHtLNYLSMSPysJEUBJRUbc2l2K23
y8oWgazAig7TnjsqoP7JmdIyVLk8Hqfvu7fv40ztkmzThsXgiqbuAqEKV2D1fPr4YVoR85Udlv5P
bcOgutvMV/TCfQuKFttGpNnsjepLJBsPuCRRvVinjgZ17XIDyPm92ZnW9omMZ6tH2F1m/QN7Hkw7
7eQi+IQ+jXZu3cKaAIK6L1z6UsQIZ8hJUZ9e8np0YbNkc2/VzX9M2E18M3xcimO0PCN5m6nxB2Do
gId2GwXQCokLI2dUH1oraMqwllc2egpS5e1rVYAIqw6QGtOnBG5WhQzUnApwoY5/wGDF1EWVlHg7
zXQODX08xOdUCJm6pnsud30Tpqj1Hya54/SPJGQfFqhouK2LhDw89g6DsSD03/v6PFTyKJLEjrrH
H8zj/S/wO+nyQ0dxPNB8fHikbZ4FVaGT2/Uf/tw06Bko1VeTbVLiqg7wQ6uMcMBRDgPybwzgZ3aT
2OX7kG49oRmTawKpQHScG33xKNPBDYzKFD/XxpWl97s6EXuhTth/wzlGTmMRY1zEHKmApfD1Q5hP
AyfjT7ofelnuq3lJXMXwdsSUP31soeu1tg4f7FxmOjfQv4WanklqCmTmq0VW3nIVGPtinY/pB6t3
J+sZxG/MQ7U0tDAeLzKNdfPcCY88RGJiSx83RieXvkHpYuhB3bHaEAwiw8NMSDf+HNgfYMXqkXT8
nZAhCFr1TnQlEsejCUurCWA6LUUSos4VPtCfp7szCms/iAaBmO5UhBNN6/Q1dshdMk/tg1HIoJHq
qA0G2l+fh+LEOvV+SE0U/UOA8EWrZAN1fB03fCAwjeUlQudns0TEcvFcnoQGb9lOdQoL6f21Kj2O
HfrljVpxT3cV51G5ZCsR0zwgKTbBzqCzxzZhWw0iRjddrP7OEBnsi5M0VG8/m3NIUhD7FVk4iPl/
nnoEt3vvNKcUCwB64kjABo6oJGjT7XGKQWKy3E/q7H7eJSUfaS9SkgbjLqFXNO0EUjtySutEfX9d
L7cQOR9eOSmj7OWFygcJvUcOMdh9hxFmnSg8i58HEvzEH8/pwHnuKdFwBlwUx/4O3QR2xmyPjsSK
abIo4Em19o084NQ4n4f1RsSA27ezO5AURPMGnBuOXjeUo4esF3HtDN14xw3mlN1y9dHMzfLMcEzp
qgAuO4uscpFG5+VYGvvI9PtRkMnYbxGI202R5yK3Qf7HK5oHiyaKTTWR/v5w3DdXKFEpnHr5cTJn
5W7ugM91R01FlCyy0EhFe7Jo/ZGTU0EXcg8QacuKw5Wf+7k82wzaBo5DXrjl0aXfFD01VbB+/l1f
cQ1gSykZ5cJKF/518ab/f25m1MWYPrXW3xH7Tf6YdRpvev6R6uq6DdOfRJ2EQ35zT+mhB0ygV6UO
vq0u2zPkoWccufMT4nUjCDNl+LCpkO0j/wshIJ116nzCuSgUcHlXSM5xZwXksgD+qGZc9QEvkah0
9izkFurNYf9ndReYFGyUdRzxR0gOjH56dqxwknLKiEYe/ODzIRCr0Q6RhMCOp0rxPi3io/n+M+s8
rZoHpAJVcRMW8C/EK4A+NAUfUwye7dxD5cVeDJaPFz1vynPvjmN/O/pvsPjmqDJnJEWjhw8PwsR4
0Bi/joj36aBOVtRZdZD8PGka1IiJ9NjaGWTT59gs2xGKlNbCHNB5WtfeXd9ErBATYrKCL0tK7exf
KcolVzfrfvc7N3IPn+uAlWbs+vaqMIW4engazP+raIh5wrWNB2m9MUyGB8BfgH/0z49DzOIky+4r
70jsvXliFdvEb/gw9MQgbm34lcNecCpm9y/cKhzNaaW/uwmOQxOtJ1eJgf94pVBH2dEGgUFPQtKj
4xhBguMnWDEjo5ASGJqjrVzik1sLPZauTZCpBTNEfRJtYgrm+EcZ09bW1mni0F9i/+SkmtmrYOf7
LwAe7mYmOj0tiJOJ63hivSjVlpSeZp45NtyyMLbBg2PTUnioUmTn5/+EU9uyTy7/hmIWPCE5a0X3
jLhj3tZeil8hPur6PDO94YLllDtDD3g2aENcUB3rxOUyU54etMGo/mjQlBJljD3HO5YLOhgnhbED
IpDF6EyZ06NMlnGIU7oqpED6ZKSA2h7hgqf/LKCVEn8JTQhYHMfI+IK80EM5v5ZuRllPyzZJst3D
sWtr49IjuiVNG4W+MlLBA4ta7tl0Hv1cWbjwuJ8uuC3PUiytjRGTwaGAvVGIIOwu/j9tCzENA0MH
qO4g9a7ihhl5QhMrCUKoOmA96XUzGRG7h9x7+FiCoYSRbphikvW2qWvx7aBQ1agV8CxCESpf9cDR
OSnla7hgyxOclINTfA1Ro+myKZKRQ/x4OovDiiFNqZijpnlPZ+TGJfG6hoXJTfd6cQ468hW2j+f1
dMtu22I3FZ6+vhJxX6X4xOGfiWnFWgGztVmfCUzfBMHVgMAKYKJIj6suK1OAgnQSCdBcKzzfsShh
0mywP4dXGnFerlWnN1ecSC6M2z+L4nOOlIagQW/Yknhq4vSBCgfGOWUSBDaR2jR54JyLv3Z7tNK8
I+UliQEjyBlXbzSFbSgx7p/spf24FhBMkQ/ygaZ5wYdOiC8LYPvgBHZUPgZa06och2H+tZtGR/gX
ue8KlO3a8fYj8YiX+6Z4OpKF3pcdIlmttPwZPpQVeDyMtu3soRmeYQzTAC/1xLkfHUx3Egl1gIMq
Dl4yGQ6o0bPw9BE2EGDTMIwgX757R1GPw6BQCFUREzoGlIIG1sSiT1F6OJlQEVJpwNecchDt95xW
ZJ9zCzhxyaDSLJyiAr/t7sSptGjI+PrrvhUcUhPHdgQ7xZfWfA+ybm/WaTkQIK3wxqghOHpS2uJs
27Hs2OU9/jq4sghpYK9r264wIOWTmhGnMxkYNXvSsiAjOiKwhTUzLlMVL9E3kq3kavn4ugglk+4O
qJshObbWHSSQ88mUxPTCbUyWLER5XW45yaVyGY8N1yeLHvzPFlLEE6Vni1b0BRbx8nA10GlczfNh
Waz3rMToL5XIP3PnuAI9xZ56tmCuWvmSKfw5fjqvclFGd2gifBxXYxJpKIicjNLuhEdVvQyNCdTY
0U/IZf14yJMahYZ3WTNBNCBTNKTXWGVt8z3ugZgu4oiiKy7fgPjott3CbA0XT946fUExB/uqMz/U
wW2UBet3i5oFb6kOPK6m2BHnFDpJ7IMn3GTuprTWbqowHZnYpXQZEZwIQ1wiEJgKMjmZRcEG+rd4
xFkT2lIGo05jI7jvxWDtkePsYvKY/jchQHYaHynrTIYr3+DDvB47zK/+x18mksicr7lf6RSf72m9
I4Tr+pBmrM5K+dbcNxpHnzbdKfW8TCxJDfUmDgFlAz5efd6g/rpNI67ZZLQ7aK9eoBVMpX9hoMUs
rd8hoicNpQGVrp9+qBLp6RNen0qroDzM2IZuHRXpy+dRUQEcZPuBfIuLOKGssk6rGmikm1sKtMsd
YQjtM0K8HBKD3vD2lAnRmZTMR8Sx5M/ZLVbBpGj6XXhAh0UWgC2oqEuunPivw24VbpdCcWpzcME2
F0pj3Nqf5YbE8vtgRRTNmvqKCpUNleJjDUoNh12L6Gk9wFMNkd279fg2XoS7E6lHgGaQD3n3tg2J
o3ice8wDT6vgiyitiCW8nBMXib7L0WA2ySEDnc/dgcEQEdm6exgsdEuFM1mGyzzF2EUlkZJJM0E8
7ayv6rR4Nc4K67cC9EDjvncFQ1t1dUoh1vMVqJk3XeQcshhedsJpRDcjCbeN/FK3/MR1K+3OVW8g
oLA5asC33REGIDPBosGqBNVeFxTAbwqBSSv49h+44Qwyu9t//kk5vZFdnfdJIUds3eQmqgZn6+ag
oFrOz23OCd3Q6ibs0crnjDGJv9KpO6VSjVaJYS8gsnlq2qlWbI013lhPtPW5MKIE1m/ebExqwrvi
2NBykqWk7p68tptxlhKg8ag0u8AuFwga/x0AVBaqCdRc7NFS9l4cakNCxhbV0EyAKUSG0qGViE7k
LxBNOSI/89sFfD0GFXwIwReQkUHiJM8QR0WGbrIDYSNDPrte6zXvNCEqewtIdKMS08b6IPTKALWK
/VIhgBGPVt2XPizcqjLxm8+ue0QLODX+yOJm/hY4aNDyepDxPQh8eJ3sLiIm+CVWFR4eVE62x4D2
TpLymUQNT5ypRcVfmO8iGuobVEZhlCBBtx8ZsNeV54/cS/0sJQxlnE2lgzxp7inpWnm6AUzdYOKv
0LKlxqkKegsL/iowg2zAIvTIL9fVxiydTI5ahamco9oMwULzLY7+nBR4mrkUQ/C6q/OQeMykVnWp
jfDZIyBOx9SZfxnK+kQtasMdmBW/Z7XhhH8+bF96fuR6tCctqRcasSpZ+FLiFeYwKuWdWdBye15v
gD7rvXttkow2OUU9TY1d1MEAdfuP/8enucRPhMJOoK9XeNlpSJyaoN4DuzgjuksgX7u9bgObBLDX
6Wpa7K8+AK0ktq4g8/0AgHqd7WR4oPlpBy2IK3wqZqJ2EmWF4yt4peJMf9t6gmxCqHHSDD12BEqp
ahxLsY59SGFhLSY711w6FsBASaFA2G0U4okRQYMNuW+x4A4+gFWAyFXrqWuSBr0VSmA+Z2CbFMy2
+yJsJ0j5fwna2U0Me6KUygE9ebnm+0AJnFfmJNeA7GuvUnXHHPqoFs5pSUf38ArKcLbqOaBpJ0Jl
4mDB6ZPu3dcyArKm61HiOomj12J9QRnHLGt7WK5wGL1R95/fQK5KCFdDOk5RWrQr3WxaQahP1C6D
zhK0sUT5VltSojWCe2ETXGSuXL4AL8vZo93B2Q/ZnZTBTrLQ6t/J6smfPcGX8X6/yu+Ua//igwBF
OYdxUi4E6acUYYk09aqk65PakqYpjeP8WUftTVNZi51c0PDqnTYEry2+C4bzAsqn9pxDDM4YlmAB
yfdZSJcd4VCV9hGAIcm6AxNkctsH6LQRE7zqfdpLW2G18LIw1w6kPhkAlMpBMJHpBA7xnrfatvfv
p3KyQ1Xf8Gu1V8/djcFcSwrJLkS9p7DGAJtRqe9AXdWC5XEU38PeDvWLrE5GCrjD+g9pjIF9TJL3
Vjyuvtkj53iMzDVKFw+LAvcJePWTEFbI3KncYXjd2AwZq3cznt3NkowahtMdiMH9pqnYy+au+Moa
yJL2cdLAKccl1obVTs/W1aElac/bGhjy04QDk3YbILsV3yqksoTAcAcCfU8UWXlhxj/uCq5cbfGI
OpVkOqlbhIC9Epy3rB91dlJrixAhVoRNr4aJltAoXgqYG/JV6gc6PK4mZlLfeAf/GFYkh4G0gOlu
QLQOYAiRP65x8DY5K33qr1RU18TL3reewDTwrcGQLdGMnRz5DnOCKya85VWH8E1seqtAnVC0k86t
zs5VE4TtOEId9cVlIoA3qvh9D9mm00LHMqqYD1776UQyIFuPapQsxCbbN021GTGOrqC+njY2Bd/K
uRZ23FJcoAd4jHb92hnoqFGLBpO8ZOwBzMJwx6Qw9QiGtgIvGEq7iy2T+Wd7lVh0UXIRB7zn1uWd
cud7XvzZtRnqZP0Vhn0wx8388sxwXnjx25AMer79oejm6+StFcF8Oe2uYZS624h4uYvvys9w3ry8
SCn8Q7mCPl59ma1I9kIHzUenl7ua6Yv3MNV51BotT7nKJ2Ad2/A/6RcTkUY2TpQCo1PH9NwCIEFb
5XlqHlAIjmKDe+ve7CbY3gjffOj56vBv7KI4PZf8fr9hEITzQeBiKyM4VwQjICa+dK5yhA4SBHOd
oyR3MgPxPbBCww/BPDywGKGgYqrHyhRsegLH6iO3uuXnNN6vLlk8c4nZzIjNsjC96dFNcClkwPQV
dsX5BvnfyTV9xLQgshele0wM4kzc9YbkXvwwjN1qTqd/bZWQA4tHnwnTZOcK98ZkCuP/kndI/Wg6
IC+GxQyRMb93Ei/IaiDwVHA8OoNBAog8RUyIHyxs+iq5E/Ang3R4tz2R8Dg38OayBp31/y7Y1DCg
/h9GjhjD0BsUgwH1kfV9kxdKX/HndmiwF33IgeRTtoDY6N7uFSNCwsDIWaxfApBp6Sx4feP6MwL/
+86rDnHiJ6/yZAvgc+XGXSbvT/ZCHKvf7A+9EzYg21IR31t6RW4X1k9JDf6NyRGl/dib3FmDXas9
E4Xc3R10YFtmZUXUakZF4miPgMKP7uG72th2JKRjRLDjt/q7WvPP9e0i0WBoyOzFrEgqRta8T/8z
c9s1c1crc3HVFCGExwhqhOLgFYz89BNp6qfYb25mlpwITwdIB0SBqZKxD2ZijgzUANna/kO+vNz1
zhVy3kq6i3h5wkI+FrGSjKeHz7/JrtrRibnChRRxBTOate2NiRHt0Z9lWUWoLqlsEJmtNom+yQjR
8w+jF29Ls0MYnIDkyp4rzLUpozjh1XtMhAmKyDtylxMuJtxY/vhExW2oVimw97htoXa+IyDQQIOW
BVwI3kgy0RA73TOjsSq7L6MSMHeBXn5XdvIe8YtskR/jGYSIdduk6AofX+EdwLlMaUCfABL3+En9
LYOoe2fMPq7FI3UXy1wvrXsM8N970QwddfvGVJ9aZKiMEMVZ43AQLN8aQUu8j5jUuUZQK/U/yrji
iKgNBVKPCFCjal+InSBfcjo93wdy2P13phNPCSuIjYnT8CeH+zE95iTWapwDBqOagyE72yGe4Bfh
AJOHyXR3bW1jnaZuP8zMY0pioBRTN7WVZogW6XkfB+y3yQdQ4y6IEuSse6k/Pm2wtjSkyaLYuDV4
m1KnTWc63NwfDi1vjIY3FjRvM44BR9m2cK1EI2HoOdtrrOCVWp5leTjWrC9QAu53i8VQFEs6nnp2
iN/Fwh9DFTRSRPhpqGNRsqDyq12/4Wq+ZXLNPA4Hh2M3ALjjUjZNF7zUUfOVnoc+TAf4DYjG72xx
R8twZs+Z5xIXaHT9LGh/b1OVa2InOTdFzCDbGT+nezxKPKwVU9cL+E24cdm0OEYFrvqvvGWCAoCI
YqLsESZSfnp+0mms7CYopD0T7awRiZUWdeUqMt1p1GzR9DNCucpxHX/ZYHEq3o1qmyhYusxhTfd6
IPiMQzmEPbsGLKwUd4MfcTp9mMkqOS99/NCsuuyAf0XzL1Z790+F9dVTCGc2OkQ9f7DIYgahm9D/
iwl7uuZyllf3rRXzSM+5YKNETOqshZXQ33Jm5I7b5HJBxtlt18xZ2wJNc/tCadGu8yDkrwZvTtzX
kewW8qfA0s/rASCklOahioTTNZ6wcwtJgWhfZ6+/Q8ZNjgN2dt3SUtnylYZheBcFyReaWRaoDkIx
v9KAISQZNxf+MHcilgaOajg/Iq49aWz1RriHZuf2z7WNGvQOlhr4tkpjVwXheMrekBLJ5xQ/KcyK
OGTdB8L5uB1EpOR7CbN2eEGfNbeEDfiZXbFaqKPwKnApnomshM+oY6BsisJBGJ1jdJt/tFMYmrRK
Sz5ooJGwY2qUYIQl+QOEA08M8hctHwM3rlZugdqwBh0X88JAZapzxqpIPvyx8hEmJhyDNlLh/II7
OAbymdbJBQNgiQ15BZuTngTFuR3PMw9mGPwO7xuvVW8Znbzp+4FJvEzlkBE3SjRsRP47qrfF/ZSm
RTFimeZnm2qLW0oYRyuf92jmGqtETq0IaccbspQYy1pVY7nJQMYDdkutCjUfu9uFNOez2w1KrmiI
VzjhKNC3auerSZEJdl8DXYENdkOodz+onpUaYbyL4wJaGD7Rd0k/7ZZVlOmPntHKtuqliFJJ4Gqh
nEgry5t1aM7tdVMRFgpHqmv54d4Wym1BvTfZYNG9Rfm/yjsx/Hc2vM4PQLY8xG5fkuwYhnzXfM9C
Tzkd4C+KI/D53UvebaYLnOCnNhDoRb8iybzA9UrrfjtjW6NuzX9QfIYBX4gha4me3aO5h2S2tI/B
tk6WleneIBetx+EpWLzBcvm6i4B6USrBZPGBBlGUiK+n5tDz7Q+KkpC55bD5wdyS2JTYDGSfIVOL
EKc8Rn1DSyDDTHqlzhzvsfb5ZafIcWkN7PQ2YmgDITV3dbZ17d0vpIiRfRxdnztQchIfYFX9Sxbj
oWUJ/FzYPLo8FILPXYMJIFl9MyP7sFNdEVIbjRCiTFkRcZUHqfxkh0yoc4oDaZSd1lu52G0oFohL
Tgepi6XBpaB6LvSqB1wEjGDq7yw/6v0+enAPsf7L0IYJRZcIuffdpPjdQvskwm4fnDEVqwmNROYT
bSJCAMhZ4mL7BFNVd1y+34kElC3sDETZDVrD7Jc7iX7e68tuR384K2DvqPINzjLyFHQtpocu/3t8
rMN2Yw3avRBpymipzA7yLGPalbbnoCDmIcvkIDvKe/bbFwI1uIK++zlzDWNK83CBt+OGAJV9WuF6
zr8X3eMQIarJ83OHWgMlQ/ibM5CzsPacvtq1PchyFQuHBm6TGAYrFvxrkac7FNwhgAG6bcf52Y5y
eZQdx45avLoiZQ/Din2HsOyUrzdStnTwB3SLp+sTB7ZXS37p1DiXHc56qeil28JGA/Oik8hHxMet
8oorAmI3n2m848KdgR1pd/iEPf5gx8gS0z4L2GPWuxNzW4yiyuuYEMKaHYEdc3VtLOiifh0iZrei
C0uP/XvUZs5SKGp4goJ9IhS0bBFNNT/+SEohbzlLy3+uvNPNnyWdL/NsjUZWvUC19WNTf04kDH4I
SFBdH2TMMKWB2ukRMeuy17BDYZrYK1z5hnmNzqktHtLVPQJMRsogwJ9t29qlKdFkIemkL4Tj4J3k
+CIVHMFUC8bwX45pqIWOzHEqfa2jh9kxWELgVjZnhd3APVzaULe/E7NffrSg6/xg58N96EONtVRU
DmDVpzfpLGJJz4dDi1HngHHEm7vCfQqRUjf4A7z6AcJISOlze6iEX3ufLT2qryZdHERM9hY0vrdQ
R1Iwb7y5BwJ2m1XJUEh64YhgiBllr819Keqa0ippa6pXQqqj/mwnNLvTZnhvz0lXuFQ+XaPo8ajW
Hq+pqUxWLDtTYOhg1zbcFv2l6h7yMby4QYTNlffeixib1EBxcIzewYm9LsgYhm0tremlJg09o9Il
pqPTrERPuKr6hWdMGzhjrTP7z312d/Ge7V0Q3pS8PlWsfnOnfb2XMebIqCl8qg7Ls9Fic6U0/VRP
UbHHVZt6pvXIbJIPI6hw7GQZyJLNdbPc5/5cf+AvhtXGRAmb3ODW3xgZhLGG9z4Hx7tj3nuOGM5C
sMeVmflqiKVDw/aibF+JL6bCzka6kaafyMmV+orL3Y6mEn1O96yrk8LieIvCsUOe5H40Oq3zSPyq
G8AGXM7mJaX2Lw0g317QIRs9GHXywAc+rpplWOhZNchpm3O2tjBgJ4DekMV4cX6u7TofEokyCLd/
zDVVeZwisROC9ywdMqqRoY6fdo+VexitgJKWKwsQMBmHG4EFjwHPssCgOzClztBHRUQqPQTs1b9z
bQJ9d+R5XyNhdjE48RsxA/gOTai1d9xIN7KfKOqozbzLzN9OT+UVOj7dFGdqw/InG9EPPg57BfFg
ggjh67oJzDojqOVkvVhq5z3NGXyMe3z/o8M2w60HL0sRS+SK71gFUe0IwZRcNcIXoBTs17hTstQx
hAYi0JqhLBA1eSajhKNuQ7SxjbaCIb/72otBfRUvPqcTLOJjKHwaXji1gAW8xPuyeP9jielniQs5
mOfFUs94x7iBSFyLC0mNbHWAfpLIGxHW1rnnggCaBYNf5BHkgxRVjbmMyK4rMhn+BU+nd4e8G29C
X0px7y36Cq6U+YYA7dfO/i5D4ML3xuLgO+DwpPm0fwcSIlCXZ0XFbtHqyOBNB3OpCsWoWtcognQ0
niwIHKS9e6cjsWKPtS0GfNZeiz72hl6YI15X/o2DPdo9kx7v10eyVBdWtvHQsNB8UXtssOSIJA6t
cOThig3BfmBmTFX5qoNW0iy1ysEUNUeTT/nsFqPrkpmCiJG4XrKIgmEfWM4iAcFboZrNx7RI8AJO
3cr0XyD3u/8RfGoM4Vi965G9v2Uuz6120aoCMAKo0ubzFlMozUOTMzN2PhsGGuXfEoPXHIAzGwlB
FlUqCZbM3d434LVlPJHcxKRvmFi5fbICeVn2GZLPn/579s0bzAw5I+vNiJTiDBRwWwDyuCHksDUM
hmaArDfmgWhVKJO0NAmlzhWIfPVYnSPG4SZS6aUkTZ8fnX/ZED6zZihdAr3AWlIs6uWp2+uK4ImP
c6WjDM9Tk5LMcImUe8GTlGke9q4Owda+197Kf7Qug893syA+qs0rr7AGjesdgdFpU8wCLBzZGSXg
Sb32p592LaS380LrtltssEOSff88c+RocJp1WcKOb9TcLDsgig5a/36T8pQjBKmuqH6TNINTAx65
Z8qsf5tzqNfeVlRSzmFyjYzt3UBHQH7jqW/e2XXaEHy4HzmkvhRihyQwmTpVc4ZEE1PVd6Ppjy5f
koVbh5mYZD6ZNtVHH/X+96+nVhvV5PezsnuJ0uXOH1AwGsm+z83FagWLaASbMYAQLYTFQGd1IKxs
J1gckTJOFsiwBUfgOWH5B8Bp61AYZpZ+ji4n7YGqokfdDSp02CZzul1N5H5jTIdItAW3RAN4w4i5
3tbs80c9NRjdxM7mQYHXEA2bRenzFz6ZhsRCgZHgmNiqiznv5O6ptvtywoDMlOmvo+C4EVXWiW4T
Jazzf7qxhnw4knEBHM2cYPZB+Uknq1Ra5hmVg34m29Rsz9r3KPeY06PdYu69pe9H/59xlauWxoS7
VxtZcnL2gSsRHmzx3N10slpmpoAMgSqR6Qsvf+ZZj+dpyNe3ugPNfPy9G29Pf0CwYcGaio8q+J2G
D/iDtC/lLfawr9PBoKk3MX21Brqq59s8HBKGLNh58Gkk5LOS6VgeX2bnOwV+pAfsdt2V/qcG3vq5
rHdEcSmh7kuiAzpf0g60RPJQamLkpvntFhxhZE4PbOLs/2R3Ls84k7dMJIiwqHMFGG0smIUZgZRq
tlR+gIM1yu2lnya6FQsJfDmqttAr45F1MwTLW779E+s5wb4akOBSsXbhfwnlBXIwS6caltg5EaNG
YstWHCTk7Pydo5CBHe950Ripgzs4GtP2S1EjVbFsFU+JYooTT1nmaaPctGMel+NRKGlsD7+s8GS1
bkqR0hVshXcQ5Hu+e/LaD9odbfd7fDKBXXo+hsKr6ltRbVwTxya2ppKegWlM1GS1u8OyzSIKE8UY
vAAdc0T17lsnN5VE73bLYs9gPp2dp2bA4hR4gSn2yu1az4M7NvnCK+l3Ks81VRRukAmsA0SLE2Wr
mjy4Z8rR5Jh7jbRLmEwFn7w1TRP0Iw7dXO83zAEqoi5kY6nwIE17sDl+qycoCZvOEA1SbmRsG40q
Lwr56jBIhQ3oXAi8N8GWYIotDTsitK2S99+5Znk4ebMOtpdju4m3idow/nCRv3hPuI+e2U78bcjy
5vAPxbL89yzAZqNCkwJCN3CBrIe2Z7p3HmMf4sovCfIV1Ujhg4L/ZERs3cdzYd/5Izo045uK/5xJ
ly+aCtOMjzhGj85MCXkjczQwYa7i9iDzCoBfk4crpla7oD4PfhvDy6R5gNGhZ6QCE9ezBFxmGBPI
50Fs9dD58D0tWyjD871Gyd8md9r3LP2164TMz+A0f02Inn5Nuq9HKzNhJIUI/UWWW2eO8v/WWE1c
EnOCs2aOjwNk3FK/M/7kWIvtucG/VQYAMEHmPHZf1+shj8/hXXMYIhPFBZ3uRe3o8hGLPFoay75c
E4s+9o40lc4TsvnXGTD7ByWM0Vw77r0saQbqN7Je4Zk9DjwawIczp3G+ABoy9BiFLQQoEAgvgaIA
oJP2b0UPasQIzNGvPnY1zQmAp3rHCI5tWLNuQRiOfIMf9XOpbeJwyqivUEKEbBXr2Pk8HKn8sCyx
zbVujmwfE35lh2jmsQddnWkgLA01x1zd6aohQGkSXx0Krb/xfNksjjVUhZ1ZaNkeEDFIavUfymd3
Ztd8P+WfSxf5WOEBSd6VFZvy0P1J8qNa+DQYGIJWUJmGMDzN6m6rm4SSITz0cuPJpfi2MED/8TXX
scGvMLNtA0LrmZOMc0FxXruSOTMJWt6OZHXeQYPXTrobzNDkSJmnKpUMdjVi7p9PNNWpIuJnKmHb
2isgHSLhjACNQkLPpaa2wwC1kh7o0YxPJTzV1j0Rc3m56zmg3E8FodPB5bDGhkYCEwQfYISGOznz
13Y7VzI4MndGCs8OEyxSjkEH7466dPn6APWb9tm0hIQ67opZPnBPE2JzM7VWUQev+IVH6EGkciWr
eclQtSSP73N+/KRV3AC0luS9gqubmukyRqzeEhx+p7IgXlZG6XqS/uPQh5YnSNPFJGti8O/QbeIw
6NWzx2C0BfH6mPt9gpv6qdV3XzNeF2zlPD716s+d6kGVvfYAXxvesgZjU6o4B91Vu0l5Wrx/lhIu
F+EGPIrVHeVR2kuOo6N+VvwcRgpXwavDLGCgEZ4KkHEdVSyNohcsVXow4OlXS45mCH+FIM60Ux6e
IyrynoRIS1cIGxfAWNevPLcm6+lTiDVOKXvht/jQR3lD/uxEvUt8v4GChHoC1LaZDI1KGrODjUju
fLg6ILTM1cOZQfwPik3Vr8HaNjXu+6S/OGOetY2C17FNCUfGmMLYJAOo6S+O4sANwUiS8DDbiej2
GFEqypxCOlObOgnPEv5pYgQhJO33porTU6Im2q+yqCG3HR7OjDyuROBBViL7/dtVMdn4hCftfqH8
L9IUD5PVarSUKtvOT7E/XeHagADQeccsL0MxnB/4iT2DGzCuepCqx1S7cBZzpijd0fTDr57CpyH/
s6TsZaYyHZWbW9F942bVQrGNiP0EDrcIlBxVfcUG73c0DByUdX1MlgqfpofVlbgHdzKHT6PXb5En
DvuuFt92oj8w8Jbzje4UhpScR+GAwF6Be6hg6RImc2YXymxMKHBuUMo/VbOACyqyfuA+5vTpU6xY
j0i2tb3liSV/Ltyn2Yxb81rDdLGzmg5UUE6Ji/oBtfIKiznZi3NNVZbObneNX5rviYsht1CAf2GS
KZY6EEhcuYD1UwZpRb7ZwOgR3VTfBkSTV+s3Q5VxZ7hIBH7POMjH/nd50dGm6HggbajKiUzrRtbo
MF+fqhtmoeVo2T7FZhyg3JRObi45fNbbvQS4MxhYbibrpgFcSkReqTpRtAEUT2reslPWjsUMbzJo
8KLkb/6UOJx5OOanOXQ05eJWpWlpKS2NaNkw3/9zHwS6tLim3PaZt6jC8kmxbOnDRgbsn9L7F8+Z
iHLaKHrdtkyYpnc6kWbBgKJPyce4ctgco+f85uZjxYPhzPYGeW4riKRHJWmn1RY47f4s2p7sfKj4
WDR6Kq0W9OtRfRSz2WaEnFSifCzcYixq8Bz0wJh6Htn3zM2emmmHCtcQQoKFrohWaYPjia4d4w53
C62DpEZkGpxFHUsguCd0aJPVTf6Og3b7pNJtEAKJQE+SKJl1AIwjh219MQD09asNC8WwVGFq1wuc
u8LFNekU0ektt3q3w2I6WS6ZRBZgjKWhbDJQxcGLVZmEBttlIyr6CRVoFFTP9Wv8IbJ5kl7Z9CD1
6AeW5W1AcPqfzrmQFzgyd8x2T40xjaNb+tYMrd/z01wdM0vR0FQ8sPUartfzzTzrZJLQyQ9VBw6Q
zqkgXFywie9iPI/5Xwu6a+90/daNhBWFUYJXaoJtEytJlRmcUxpl75JYyEJU9svcZn5KlILRxyuO
N6fZR0bf1qmyQXmpkAe+HaP7CJQc27kPLEb1HqrTdghHhdabO/lkJYpTnXp2ui32qs5+/ylzfxqv
93JQWblIS4KqRfTEsPO3juqqYOi2MxOyHRQc5Yne/wj/wAsomTmLuwg+vGuVG49aPflsVHfRNZBc
ERhgYbcm1nbvJurd+i21KOeOYf/crDp/ZmFCw2RAZ5vnMrlHMKv8JTNN/wusPCDh6403OsagbW0l
/5bE7AgvpQxYwqf0Dzmmy5iUz6fmC8Fk+RzPmEsrrpgE7qZRQxtE2cTnGzbAXoSkRJy7zByLhmQy
9XQ2+COvwn4T7ABe5EAO4j+BiqgIXXLgjQpJe/VQEWJ8bsVmkTATwO4vAW0ZquGlHyDyAmOmetZX
t3A62bnqbW3Fzad65pBDRZTAbFxwN6tFQH5WIW969hYLJTXowBwVNTBx9AwZGp+TprLKVSzXX/6q
fY0R5bSw+DYeMw662ck5PUNScZRHEGkrtZwyUHxP9dFJXJw04tjkV2y7Oe80CcAQD/mO+7QAZ6Hc
mHe3fA0asC9zXKv6KLCHuXdvg/sGZKlC43KeAuc/dXqikxDz6CIj0pEnE5jf7qXxuiNwd7z3fuo2
JqYcp9Rh1cUflfndtyrfOzOzNwKRi+GTmH+QZkvCcvu4wc4Er1o4KynsaRVVmRKZmM6/ln31AtBT
M8X0iemkCv2eTMH8L04Jwj+SubLPWyLaSaLImqoBykkC1QrwJEzdNfwu5BerER30T4Op7ol5+yoH
s9XUEXNU+ft6siyJSBwhPi3zCqqyj03/pljKuBH5JNDrWOJpLZqPDRQBzQoZ5KFS82GpPVnDOU2M
V/2p10qHW9UaBu5dKAEcMHT1kcxFfK3A5Srquh6HvBF4uAxAtT8GwrXQWkjiU2ZAb1xomD9e71EX
iuMQupiuXbqXsllwk2rAKcprHHeg+2X71yNVDAwlbSBQB/vrLijZH8jG+I1P6njChdoE7fmX/3bs
OWPZ99IAPIMtgdZExYDsePOfz9HYgn5h/IWgfXsFei2Xf0TkfK9aVRU1PrWl8X5o6GlaaoIypXD6
0leg7QLIR2/x2/KrgPPk4Ei8x+nSwtjh7tUhIKC+WGYt5DAbt8lzqhv/12nwFBKJAfVFlyshVoGh
IBa2d4wadZinjOTKizhlQynimZSLZkID8AxG475+DDw8MS5lqXUobFYD7c8xtyuu7ApQD7fpzUi5
VerhCypva+YTm4fTaDkl7xVig7p/0i9CktWw9ZmKk2BtUgpW9jyhR2A2dras3Q+g3H9JTy8dhB5q
mgDO14dYAv1nUx2Ehor9jXJX/WYSKuUu4B/h11h3vba/MGflKAVKJiLbTERZVAb+MNsJjlYItc9Y
VUqP1dVSqo9FFE0i8kUJMcRzBBRNw3Llwy+1LBTu4hmWQGtgFSUAY4XKMW9aRUKvCbfW1L171O4K
aMQabX/IAI5T7EVQ6dzvCR3/jsHUf1hOO/fq6Y7sQbkmWcqwMOahyRPicJzEYU1YX4oS2eDBkqSl
MwVVY3V5yFajyzNknc2wGO5YzaPWejHmfEq9jX8FCt7U6gSKcmhNYS1QslwgYZzobXvdvr5nAHEi
5BPSRNL8+4uII7irXD5mQb4Ioyevt1ZHjlim3RnB6Up498C5j05xpa0PGTmBXOq/0xuWOvMVJCLs
4Iim3FOCMbCjZRffECxQbFlzcekcZmPoPrYGfyvS85aOknIW9pVKmMRo452I6te8TMNXDqZCtL5J
+rruwx9JkgDcPk+yE7P/YIIkPJxhs39lSuQYN/jEAfLrZzUYQGKqkEd6yVmX6TO4C2Msj+Vu5xY2
LMmqfLFweposbfpXU2gq9BN7zcY1KP8NTTjE//afkoE3boeAqle7m2tLphbWZxwsYIN/RexSHVug
jhgIkMuHyk6W+bGBWsHKpDTFS8+tFV5edqD+UmSg+dh6tk4F+864qtQahICp5uIU+xjccaD7LKdw
D1h5eNgcuHaxGSKkq4rzbQijmdO69NvU9BhwhdpmWcv4aYaoxOGwCv89lrZwmAt6JCYINjUZOBGp
0w3K9RraIvEcoyjwFhZ3q0/m+5qtaM4YUIpjIEpxUA3LiZtbDQ/ygi1t7qq6nLygzSsQ2qtlX6AD
Nc4ZJoc1zY9F/H3JCPAiJPRL5vlkHN8ftcO1wbQmtvHIuTxOalNOJYgPdSYKRVwKs9m/t40RTI0y
ZhU9KslmPwN6WpUMWVpdhIN7TsJfEgweDnqOecFOuPSpQxO/mJxfq8mjBRRtCnbtQzEMpyDhDVLQ
rmkD9ZAVJGu81aVy9UixaK1xLl5q0L8brOIZijpd0AfuaQedFSeDqjpH4UrVV8CP/ZafALePEJp7
xWrzD/x8nAflLOK7JN5bM5fVnzLX3y6HNg+iKXPLjMpCF1DA+RUZzJb0/P/D4Z+HPlpcAzltDSg1
zLjebPRTXIjflF8s/MjXDkrCo+5Gp6RHzK4X4VSkZONc7jnL27XSgoudM/Hb+EP10nOW38BabT+Y
x+yNqJERIhw0667nOZ2nsKOgnbDzPP7jgTq5nPWnh12gG0imx6u/2HimkmO5y1szNmYVnqBK21Vg
9XiSsl6blxNdWShtax0xE3IgtE4RhrfQgFRi9eUYb/OxcaMEKOX/uVlCllukiQpA8tHNta1Vfk8O
WQ3gcThNj1kAlali3kjSqxDVaCTQWCMLj0BkJm965BWTeIQlb8DNzTM1MzYoOoVb8LX8rPSQ34IF
w1k+B0o3g5uOYqUkocAgFyTuBHXCvMzbZ62Oi3gQEO6E6UWeH3/L+1/HcoplELUORKwgTF8D3J2v
UpaMxsgUMY7Lu8KJI9Ck+vxcWemdQjOQ/tF2kT1nAytElwPbtRPf/ZEzsnVOj5Dg56uqu/+zFVMw
aPg8ayXgCg3JtlJrKN1OLE/4klpQNnY9M17l9K8JdTL45ep6nHFMCWMPH4843YtNksGhuio0a9bw
AK0XXOETgBFrJie9qz+HKWCY2Jkze+rJTZreOfkqk4nXj8BMaXYamhD3TcAXa8LO5reTy0ZdBL9H
6erB3P7twxFFZlqHESpev9KuRs7ry6UPx5osxdwLnenAhaJ4TNh42MZE+HzXMyCWGUOGgA2u5HFP
Sp+Xua15HtVZwqUhO9Iiso+sqnHjDj38w4Cb+Vi7EdxyyP4qCLoaAUPZnu2R3AeDzjk/J+lPDFjM
dELzMSG2c9MlXWCWkjpGlaG2qQpGlyFWAsP29yo+9AlbVwaH9aN/E4xSfz1MRWHUxG8gaRWze9QN
aOLfQWKreqKCnv1bi/xz+Yp3m4B3XlgDbAhQBU8iCkXKVrJceCVbi7tio8V/1bFXJRb5gi0ktGvK
Q5Tl7gBtI3ofpcxvD9P7HQYqxlKjyFkM4CDKYZSeujIR/Qq8MzysNZBdwYFE3J2h7R4NsIC2yr2X
yUn/baESHrhXnJFPgSMBlEaWoky4TGo9lyK/S12tpEJydFrrlGWgC32YUUb7wIXT2WPfZORufpIg
f2o3u4OO87VrnWYXFUNY4ExlLCykVAKQ1OiQ3pHLMEiyD6M7pHd0hFoGe2VYI5peN02sfm+x5Pkw
IRS7kQfRAy1Zu1BgCrghH8kT+gnljWpG4+0qhsieKmtCG3OPPVpsM3bF2TsAZHyTkCVJaQA+rCsB
qoHI42pM/u1lrWQzayEpwSqQ8TAFs507xXFrFUa+Eqz/WY2k5C3V5JrbCDRHhTVDL4/AoLzxgcoi
B4oWQK9J+4eexHWdjWVQl8v4VrycC5Npd89gvmCOz2wl2jJ+CMjjMsJR1vY9p2aJ5Q0FwOQedWD6
AYwewcr59aBSoBHaEUm9Sd/hO7I5kGTRENyhzV9UV/Li5mWTG70blNEOJAPTwjcZchdmKlTHuAak
KoAUdo3c/w/Ms1iK+HH0poSVt+6qbdiDZLZtQ/aest3MyGawSv9qgR8GOd1fWLMdnjSUzUXB+QK1
AkHufpHUeituSbO0UXzOjdklkCVnRJS2pp2kVEDQwCcX/1cpjoDpckaKkkAWBxHSJTBeJ+jU0YFT
D7jRiaKrHbqgt5sS78CZn/2fJ0tWviFJL+YqTiN82rGidalIbbnNsM/mV4pTpt3fBa/10XtuUhSD
XLHr40fjNkJe/jVXyHk1l/HsjOivn8LsnS2w0NKJKs6rYGwhaAJVHy26kmMIme3xqjDEZz3fxMSz
tndDkQm1IuwE0uttELEgHELUUapEnBSWgctW0ygscfCRDom/r8IhrbkXECHCq2/AnuBowuO+Ds4n
FfqAVZXrre05EsYfyoSzeJHu8SV9mhagjaDHQd83IqcCCG8yt62nlcY58xLmCBDeK/dljVyVi45W
ncWNFsBm6Hw2q9f9a+N53k/fierGyQFZgb0rmUIdr4eIPSKyadkgp73AGOQtKYiCHuFJkm8gBEMS
JvC6BAf4VdYRKygnTQSkHjHrZzkqZoULQgqXPLBvibYWDMreE43iHeiVRTFAofBLYdKA+b0ip0Fo
haV3MzaDQkkgzT7XfZPzU0u81H5dFRcNlPUZpwkhm78QJSEJNp47JdLOKhZeGdbqNVmHZkjZIVzV
2bopQuirQ0OEb2D2uVrG/jhdAxu0vgJLY0i7m+3VSMF64FegrIOQIMyhS+TwEzOexn5FXD8U79m6
/CMmystOV5hSIs5fwNYp4eYu+U2g1JfOiILyJHHSZQVL/+E+wFXDiIdFvbfHARJP+zg92HSBuNZm
S2dWor0lQb/LJDE4iKaZG1hxBkEBeEwgw3WIPhB13J+h8soU1G0lqE36hM1QuZS1RRK7b0+4NJ7e
wmtihVxBoHwrgI+yDnqaz/mK/dvE192PJD43WRDDfOC9ZaPGl1R9O701bgCkKch3zeXRzGev9ZUy
lKhWviG38ihRbFOFuRXvqQvowFfGl7dTRksoWXRLUJGYylezw+2gBzV0sb5Wu6w3hG7j4u+vL3aG
C4Xp+F6UuYU30K/bzoyCgp6zaUpZIhG9nZ9zqobp5FJgA/wySwPg5KHrojqUum9VhSN6wYkx4Xxq
u3qc9XVsV/Xdz1A12ig6qXFbly9LfaBGu4ly6qfrQMuyFzPxuxFdDCrquaqOpu2T4mgA7L1nj7wB
McYxp4cPH1m13swiHRr8naeeWC4AhcyfGtpgTDGHyNyRLmaDv3uFLq+LUmF5oyias9HS2q48rETK
uc7KRfy0In1zlqiyB8lAzhieDgxP2n7NMlkt/AQN1UaPeYR4Jq1pjz2w47bKWhal3Id+lK6YG+Ld
kXRNZ7YZ+cq8w/4htt4/6xgQyjsc3bEktpzQSjF6Ug6o9hqcB62QZGqZhszL590YYUD1QIVusYdC
aRI6PEZKSt2pv11kKealUXgdobx/50On2jPd9FACb9i5+5LFo6bdYs+Xo1VVEOJIoX3USDeO2jPR
K6LQcluGcTLiN/KmHqhF/sqvsQKXjNmH3IhIqtrk4GMhYkmXk3y/4Sg40LxTmMtUNUQOo9qBvpEi
GYgWFes2efScda1yhYCzH7DkBaEhOUOaomWZmdd6nWJfWDPRmz61lyP8ijXiw/QHbWEcxBvi+qFw
AzYYwLp2LXXy1LhR/6OEKZCSPXr+ptse7WLFHNAtUHc4/e+xwbK3T/XwXJ9ktVzMyJhBe+fh0K4j
lPQzyqT3iWP0zenx6IhUD+JEv1NusZJRObuI2WYfdZ1IKuS6/HKhbG+nut5VVIDy9PGBqgq/XNFm
No8gZWkzqiUdlNJuaKdSLcEiK0SMg9hSbhk1MinnPDvyG31yHJtwKZajMezak9/QrCUrgc+zD1vG
S4wKaAowTrqk3TCvd4PmL+f8tPaMp3Zat1YLi/B09Tbz3zFgr5UMxxvPBuaDjRU/U33sdbSe+VG0
CYGmTFDpmnaTANGNl8a3tOjYp4BupGvjoV5J7Hcsy8ayXBcwsZe/ngqMLxR81C3J+ACvF/yepv4X
pj8G5qSCn5sWgtBnfDDmaYnukR8Kbbe0K9KbILyvpnYXV0kdvOgMjERmsikcq/6+svf1VOywnvJI
s9z+LgtPwDPH4eJgYxUJ512zV+2wktc7zA/f+ybxc21rhk4FWH2zAkqN4vsQpy/3Hy8TlVfRTJz5
F/CTgT8FKZseROnZcjA18gwjemgp/gmScv3CZ4lgFE3/Z9+Cnj1vvvMFNRsOQ0C9kRCGOoec4WCD
SyBuCfYFpvUuB1F6BE9b44AYgihN/RWkz9jPSxHomIxrvQ8yocEwJaH85Rbth+snjaQ8DrbvvB0v
T1OXu1ea+wZgMNv/MVbRwQZy3Vaw7NT5m+STduu7eZDVAVAwgiUOlvjl0Jme31HBBytjPpLFa3BH
imJ09yPzSvF8Zh73g0El9/eUcCDmLzY1nrJOBk5P+9VLqXuYEdAiV4ZQ1C0BBnr5KZQfVal5XM8U
3YWtPeCAtaQ5AEu4g1nxNX6zWjRsLc01AZ66NCEmhjO527UZezUReQsVMao8HlbP5bQfHm9d699x
jKINatfZ3hUOp/hB8wq+O6ZuW8QguX80iOdzlT/JeQHTOy0yO+/sGHMyBhLr/uEXkkzgI2L/OARh
GVPLQG1YehrB/+dxUr1ClBAFnyPKo0Tm/L2ctFU4irayip92tcaTAOyf9pEVCNK/iR4mUeD2HyHn
N1a1MQextspTTCdDSQG2U00ErkXRlkLEO9HMXjVYF8IpUIAXJPgC4a5g9N2FOehbRajL9gNNZqOf
5yu776DlcygY2KovyTLQczTEteJJa8M9sCPT4uQUpZeK9b9jN+auMD5QXRXDtOjDot3T1+RjPiHb
vW7B3XzBOx5ANcTxcbh3T7N0wPBg2jn2fKwFxBTF9B3b5y51GdrztGXItbWHzciaU9q84ICLPwdA
+SbvegQaGGI/FVjNeP0tKfl/WxYXug/KIVqLbXVih2QLtuxjdTmvd1u4nUwuPXdi9njcDo2U5thT
sBDMaVA+Umyfziy4es70yxA5HerdseYVsXfH3PqDv7ASIz9oxCIzAEyHY7RqKg8lhGPB9YYSlUve
uQi+cac6CmN3PNPfYg1+eC1ZOTM6bFG//tEARH1f1kCm6UblHSPcJ2g2Io45gJa8UeVNmsozeyAk
QP8uaDuF9mCGiz+nuQy6Sr3susydsOct6U318hwKOsko5BHWwxEvbTGYIO1bmdTfBR0lptCJj2qQ
e3V9aL6Uc+g0/GM5NjD/mDBEJeadWqsxUcccL3Ku3/VfrZDAoiftmxakoHOeZp2HIb1IThg20u9O
eYnMGahHkq9P1kswvfMEyauuUkQ6S3R4diPCgpS2Mom0AG34BajF7/hs+VOFIskPYoyndJlICxmW
hDD6aUduPpQCcaecOkroGCOJKK7/2IRo1PW1Vr9JiOw+C3Yndsjb3ho5IS4THXfEaDeCwfsPRMjE
p3hkJeylPJcelNucdhuy52v4cV/cyltXg8W6llYzJMzkrK0WUhFaPZ3nUBn62Z1DKCg2Rh9K6bzE
jQtvt+ocJ2vUnRphh7OSJ7JLZlCIUFJMdOjl0Jnz74XbeKNqb61W+7H5pHgJQFOtOJza4bq0Z0sO
+ayl/TZYlR2nWtbW89X98wG2Y4IQn8hUlKEktzTpWKHCPTlV5G4HRrHZs5xJJAIXZLw7vNBvnmKX
iFh3BWLuVVaB8fei47z4FwRejm4uXjYh7SFOmNG4yrJDhT286ZDEf4W8p8NjQBr3/JWl0l/ktnZf
NF+fhL3uT8wpMB2toVTr/CmE5ipLrTDbvpGSjJ70nxCYgdhmY0xOO0L5j/fRxmBeSa9Y5009dl/E
vKO4mQeLdsO7nodP1tK7MrHaftNbPxQOSUchY0+Zu+7w2bJKTQjAMXH1lTUFDIdnmbZBtnQRkX5p
H0hgISD5xeRRVBZb7FYT3iVrmt7XH3lfuZpvhXRmtBavWavPwEKPWfmxP8/fnKwabFYZIl9zMbjs
Y59fByXXGcI8OwXDFTnPtIt76yGRiyXa9V005ij/ac7NwDd8qTYn2a/T6xC5sAVtIQFujgZUGisZ
YfW2XVB8UwN5HBKtjIazbCeX78yH2LyzjbB7huxJ+f5VRl8omwNgfWkgq3+RKcoZwnnx6E7KV0/7
6h7F53YWhhcKQMIpDldLRUex77MyfU1kjtL7Rh7QaIVpk27kqq0k2Gxauet/VxWR4ZcBpMnl1CoD
CfUCK+ATUVpmtA0LGgEevsuwpsY/bo32xX6vvVQxnzRg8djA+XFt0Q57a3fmVBvx5o5COmc7jy+u
lvgFEPMhIEiZRHS+mfo8cwWzTR1T+XFJmF1ntByY2p5gNw4TPekPAHJMzEdWLLUmyGCA5ACps6Ln
dnURF88Gc6S5h7GQPz9H2XWShgDU6lDzTlzzQZeICLWaOe2APU0NNJBYiMV8SDuDwkV27Wc5Km2z
v9RYTo7RkHVpSIBBE9OIg0SLwvUJUwkKN3scDFPotE6OoqxRDzuKLdYciNbUpQGH+vmz37QSmo8X
vEgEMjvHAJ2sKMbnmGga62uvzoCEC9mz9GwkygJoF2dSa3YBhYBrGPS+evaDvCvGmEfBQ/VnVuAy
Wa0lRyBNFiZAb/iACPn2zo84B/c8FUMu/JMC8JCmmUatFZGpa+etlEQnaAfKAGw0LsW5jq6TTqMm
snz3hp9n8mHvYznviQesyTkVlcfj+c/iXNoTtvletSDsGA8ICkUy5htK1/HCFrK2fEYWK4EQsBD8
nVcuCce5HmwPhJpiQGx20jG8K91VlTspPtPSl5o0m0Q+rO1G6fpm5XVbdmr6x0FVom/rpKGOP+Rd
q4SCVEVM1CnmNKDop2wVdpKObvuvuXyTbHe3tl+MweSk8AVavLMd6J5QqjnpCw++wyl+6SaCZbZn
rf+XT1lK0nqGLpSOy/7Ca+6sCJcAu3CvgUjAt5nGm0fRqwESmpHx4H3owQk4UIUlwXHdCjKzZl0K
F3qhB+qx1mWvPuviCn0uT7mfAM0s5ds8duWXG5KIXFJ6vfei/LZURKGXlYf3UVDiJ0h+40IJ2MWi
mVl0ICa2nUqb3AEYKBATrlCUDcpQmWMLD1pjnXu1V3eRxpmCxJl3AjdC0qMtBUCTjWnE0M7VVxAp
yuG0YVAgKqOOvwmX9Um3IKUQFjGQLJoIDA3zqM0jdiGKFXSnJ/6t906eHPowD3zpGQqR9mHxfm2O
ug1vU5e404nvj8+ss7/vI1GduTGCEORvZjlve9ksADx6+lk9LciABy720J5/WfMtgxZZEB5pA9fR
Z9wfEBiqvQsgb3sIU+nVPs0l+A63Hvxhchh/V6mZPHfXde2LV5NfWTZQGhqo5HlPYcFOpk0K0N7y
WZCIdmmksrjMZlRzrwh3uK7Wsy4P12vdku+6iG8pYqpDKTqWOeymqwri0z0NwQVsFV1n6H41OnSn
7TNEWvkEK/BcdqJXWdFkYdD5ofAeeIHMJ1FGZepj1QX1LxjYXUjRLHKa2t9eyT8zWCuTQ9kgcczG
neeLm+JRxTqTjCRjSRUZRPuwTfJmBOKKOgSyZsc+wO0LFmjUaPKF0knod1bFkWit3yO4/nnEipk0
FrSUMH0M7ztqnmFq3ScUM/gp2VYt1Zweco3YqQVgKFX1kUCMuHfLo3xvvh+MoIZwsrewH+pExbSK
YIyr1pYjetGGq2yEX7DevJVnILDRsfr7Gk2S+4ECiLJ0PAIe0u1Xj2Q2Nl6yeNxjG1Bj3W2se+lR
jdMb6TsSs8AnwcGQNn4HspDbsbMUMqyDOIxqEdwOw3l3fBJkHbN8HnTsCUlvG/78iW38g7+epvEo
KuttyWGOKoGU4N5gq8trY2jfcXnuG7lQsjirKG55PFkV4JgrzNf2LywB+HU5MkFDD1i1Y0FKgAXg
6VWFVbyA0z25UcuRl6AvlZQP8JdiBu26v7j15QQ2x4a69ZylCcffhQCEm0/XWQ4iSuPXsPt2nEsy
wcEILkVwrFL9YC8w+9d0Bdizwz+R25ds2aPA5wzmPXiIkNHzhAabkh11+rhgI1oInlQPBJuxmSI9
XV8dBPdu1daTuvAW073Z0pwm3VHO8AZXc4mR/Oy9ZdvdHgxEn0I7LhttJsPiaKVF6YudG0625mml
jKbDCKUvYXHwfwywkxhBxHUN8Cr+Zqe6DHuaVWVXF4yxsHMjau/+pfnl8uDkwZmGWy6YK7rttxvQ
VTuIfIzx9yZLXLcd4ogw5syvi2MWPttn72cFWlah2Rlf24rDxpvK7neLvGHbctzVqVTBGdfclbvH
NFb8h8SzO4n+DSMQYUIB6O4JOREiPyzTVLRQhbXSIyYdB/D+hyqEFEJoTRFjO5NuODF+KpiEc4Sg
swopUkbTuViYiycBJePkVwomtBi3q/FZp+Ez8pAsg3kReyUWK+A5jwzXr1AnyGY/BueqR3OI16i8
/UiIwA64ic4g2VJi5wDP392Qf90h84bQ63xlGf9S5tpvshPel7AuKGSH6Ab9W+rgH4br4kMRBDko
xYLrGc16iXNyW7ML+c8b2g+nlUc815TGovKyLXFILq8mRkReg5z8kbHEKt3/zefv3c2btV4XmQ4M
8XmxR27AvELTlteHfhPVMv1tq+iF3Ij/5LMXXmZJrVJpPXnv+57Oe4crRcRTgq5rD8g42AaBPZp8
4IeGqLzX9x+HB0sCW0cHo1kq+RsvCpVKhFjt0gw2wmmtOGVOgBD9ROkANgLui6h4gnjYVn/PcMgz
Myn+csPwSM4xVBomREV9fvFkBD9kSX8bJFvEMiuFItwja3PPj+2WPwXs9BeUr0Fr82TIhM/cYnOu
rudg0I8zdn78HOycTjhHA+DCyyIYflV85bjAbFT3t/lDU/TZhLMi/y8YWsQT38RxURKJo3xO/R74
UuT1OCzjE96ACW6y55C1Rpfu6/UGUSUHBs+sjH9BA9gf5RbTz3Sc2w+zUIrhFVnNxiP53JTCRq6Y
gQyMqf0zH8Rh+rAnywUphvHgUcCK5TV13mgFHt0AcroAlD1ejSJ9RrkkPljftfFE4I6jsqh4zB11
MyftNLfVj7KSE4sE75vRT1Fe8VFuNqBqpxjektMi3ELTFlRLcP3boGqr/JWVJ/TrR0drEfnS+Spi
mtXzjF2SDN/Ha/VBjvn1b0b2UgvVnSw6uvpwvc5ZMfLfaY/cXTxRXWT7giLSVsqxF5FSZC9Fzkci
HD09cREwEFk7J4UF2MUK2gCgdWAC0P9ecWFc8vaGj2rELtFiAb7EkyhagYkToTL6lmhPvCpR+8wb
qLu276ZIgPOTHrXzSzMUuQ5bsHKbVIfUykLdY0TbcoifrVQkPLVfFgLCqzSKQlTs18ktitDm2YNU
7l6ye1ihJ+vpAIHDV9clrVNsrItLnBUyKgWFpkSxqVGnFZDgkZ7WfuTBSZ6yoQ3YiiDhrgMpwka0
MhxtCLlikeTxcvaRhTgvmAAIUW1HeIV0kQUMtV0hidYC8bguYa+rVLm9uNXSQn2tv/pEe3OTrKFa
FhykwJ8TitYb9zZsqatohcd0v/GN4ATU8+7hxnSMO3EmWrC6Tde4YjgQ7c0NxI2pDzaDJggLK1YQ
iU2qjwiZBNYx09Mcq/yP9PaH2g3I9G6X/8ekbrwkgc0utvmjgkBS7sKpg7Ycd7AcxVoYGaMsQQZV
KcdOQHHoXgD9bkGMiB9gfLm5w2H1KBZdOJMvK9KtpmVJBfkquYeSrG+JKi3LRTwU5QtneCrozSb/
fEB/Itm3k+bRhAyigeFnrno3fgBNwue7doBcok4cPcUB/XgM77zrxIr0mVpuhX/ZuD2yTOhHNaVM
ZSfvgCweh7IFalDwTu9tlUA8cYCfFRkIgkR2hU+ZkrqQupxEizuL7tcT1unuaQ4MP5VWSntdoqon
oOcctL1zo5DFBQZGnJ47h0FkkzdiVoMQ28wiHqM+THGlWUpoN6c3eUuDnWne7uyxbqGJcv89CYCP
mulW0VqEQpPI+oWBZnwQVg3+rSUaIU9YsV1aTtM6ObJIWOMLzfNhRqJROmWYz4MEYMl4VonuL1DB
iX32wPU+ilhf5dSH0p8t5Nc0EnoBkaVaXJg2tzsSgtNByE76sRnISmFFi/wmbD802ueJmNOvrTd9
Hkx0FhqfDfVMa/pDpn8pRvbsUVoM0W/nmQtDd8B993fOIlbPmQNcFd+/EJVCIolqLdeEhqioB+ez
QXfJdx8VShZfYpUee6ozQUM7pVopZqpvvKP+ldnltuZyohwC9IJWiYisTH2fmL0j72ZxV3Th1hyf
tbheGUUuAZF2yxOdX46ftktYZEkmKQ6DJxhVd8Je8xfDMwgeAbRzWhP2pcBZQiHA4RZSlwdlkBiY
WBh16PXXx77oE1kQn7mpKjQcP2ucMVwcDN3GsOg1BcS533ptKcOXBn1D3u42fGZq53k0dGNvrnMn
Lg/6FpZbNS96lMAMv6CEH4IdBjiz+3xFp+PoWXFudFHBsfyS6Bm5V8evGy4j74WL7TlYd45dK99/
MA9glz32ms5zi8gomALllu+pX2DaCMJasI/JCCr/r6G/z06UM3FkDbBJcGiVxPOKuNQdYuJAjWRD
LQCRevM9PYq8saboWQj89queDO0La72lwp5DN0n1XToXvdbGr/LoSysUtvMmzQ/JAyIg9Ec68OMN
kL0pT5HFGNkvC347X8rKH+6YziTrq9lqozOxVpy9ojpb1c9Xv4veqxV5gOhEsd9hIRRfKdIUOCwA
7tImR5Lob6NxYlaqQKPYziPJ6kOjVKtStN5iV0ggE+pBNVisrMr9YvqfDmryXWdb6sz5I7PTnvXA
x9T6HsUzBzI3U50gGrTWeQnch4gswjhIxaezqg2nNhTJ3+eMvq1q5WZXxqZEaJ8f3nD9xI/9qDuf
qqGHMnJ3tERd3pjOGgwcYqytC263uoetLUkoCmlCRHT1u19Zgzef+RG2l8A/BIMP5brcO0cs/a81
8aD/eduYuo8iUbLBOO1sHzdRzh3xvSf//Lewv6cyE6LMGKkDygnP1Ea64B68rRTSnWG6cTPvMRQU
KMXmC83KZkzknW6IYU6VZOiBxBsrUkPirs7qQvXaSuG2ZwA6RXeoLjIe1OTKw8M44wmMUbvqt7Nu
cINJF+kdvJAieeHh2ljaVELQKFUbmdizF2PsW3VPn+Op6xtPHlfZtg8XGNmEyj4Za11k72Ccn2zF
wvmIgrJW16YLaDNOaWhVIZfZNk7u1gx7R+jKQAL4dSfPBZci2VBT68CViUEq/2wbRT8ZAJFjKcHT
j1J3bps5e1XzRXKWMnBhd5UCMTdvgQaqmnP6l+vu6F+xIAXKtm4MZ5uqgpVWlXAMU4oHIwwMbtvU
bZ3362axQWNL08W/M1m2lGSD3K0eb4azeowYfzGaafflFJE6k9o71oHbEYm1yQCAQuHctGNnduhK
AxSqF7wXZpoRjLFr4qdhzzMvW3X3dAdR1nmBPUk3N/bd/iFmvVmNk0++CjHRBn9xIFgiFy3f5fql
qWyb65e/LZVPMR6O0gkv3pRAmAqeyIZpJsqxjyDgJy85w+SIgN7mZjKAr5Rgdhw2txguHo1vixjd
iFuO7m0vSqgTz4O6uJRW2WL6MLlx1JVv32afi9dIQz5o0BfTJKy9w3j6wLsFrtdPblWBx/fCAB5P
ybZ/Sce12K5q/0xxo6SBmr6Bb6tVitSBiO/lYAuczXXGytj/NX80yFUi/0OjlOxkXIagyzJtbD0r
ojkovwtitCLoYvnPHf9j7V+XF8LdgGsQeqm9/1Dg71/hm8oFvPFGYquJ2ln6VxzNFwsPoz3f/sh8
XZUteP6aem/Az7tigdbXXIR3psrYzEO3JfsYbAFY+vKn30Kpsq7tETWzGB9txq4q9VNcBbUkn5dh
HwerLfWhGiEViIGffFg9vrCbasdwdvg+kwKj/k6CIQuAXCfIjEDqd+Y45/igjk8aD/ytn/+Om+pY
UxDzI7nuHQ4a1mLEqCr4g1cGjAkvim2IrkEqStEp7pp+gxNgUP4ob0Ub1hKHFIg3SjzFl1e5jDTj
sbpfyQ9YO77w0Sb5Pf27CxF4WGi//KJkMpVlVudaScdOKUqcxfpxfwakJzb/xBm5XhGR2oIxBaQS
TipRzJCZYMyBKpbR5SVm9cpIhXAMKpCJDcy9H2faO6h/6lD3XRnJETs2Ek1OTXZGHtxqQh+qONbt
F2RWafgf5ROuo/vBvHPBSGOy+NJ3MAkVTvItxqhoNpvEhK/lRPm7qw9VQZ77vkedGkySJNZaDJRG
NyhSmdKVrzlp08uqwQ7/pNkSwXklM+0NrtsUhaaN6mhmM3wXGQixft9gWRly3QVWzGyAaVGKA4lj
mpEXXkSPnj7d8oxuTuY2zYFCmpzBE4qrBT6vLmUxLYU5wLT1P3Zj4OF0BVI1vh7kf+S3zD/4/Th9
F3zISk0+lgkIrctQja8uLaFJlWjGPYDN8Nb9d7asyRKLgsHQGK1zl4tyDw8yyqfpIgp7KGVG2hNq
9XmtfXuYnLXdHKp71B5+RyjNXYnc0TFotnV7XMjqZUlr4xjG3qAI4+JOHemCumuyGEqHKOqnTxWl
1SvdbzVGJ9DX3VmIMTGb6urdfpYD7Rl6GBQbq0W/J18EcF4faP/dQPGjBfUjaFUFVqb/dgWl1mGq
KijF7L/oJ6rz3/XdNi29gbeR9vZTijC7MR1VWXRelq2xOqKjwGbgkLZXHqgcjvXYKprY+yF9tiiS
y9KVDpdooFvSZxZKKeUm0LRqaILcNeEa1fpOEKTsfp/y6mTL5MQgtYPkpX6TjUBdOSQuWy06sBDu
eMEGV42IV2eNQ0C0KmQ+HdBd4F1e5sjW30TNX1kImXgbifcE93xy8dSAuKxcZxtpyAtWk6GlGCSX
UYNsM+Bhyv4tv0DWIN7y7TsdW1SBQNcCsV3+wMu0JPca/m8XZ0hyLdyZds2sufZ8sR9unHR+ykDV
zbsfTT1yvAlZO7EYcGf/+S1xaoh7Al7qUMS1hmUuc5KiGpTyyL0OxRwYZ/mGsdyyVfysp5nkYq/X
qVid2GnD5iIoN31lA83q0Efc4y3A1sLCm7lK6Epk6PDE5+0tK9126KAL3hYPDBUkpB1Y0+N8MU7E
TeOaQbbWmR93x4uT8rN+F1RLLVVgxoiPOIZwNojjBxLU1xqkFhAD9XTN2sUxYjHYmID2E3Zds6aP
2bzo6K7Zb0cmWe+6fhSKvrLFST2uuKcz4QxE5SSxakZeQ81x2ngUAjJoFqzOGQzrKGtI+yHi7PDA
8BmVAsQT6779Nlyg3h7qyipLaatY3wa8OQs7xWmlJ9ENun8lXr805MYPNUpLoV+a2neWdN/WD7NB
rYNW02a9rimkr5feUMF0pu8ab3EJVIjE4FMA8ZO6Y5OBYGpAh1ROiZdG6EYdHU/6E+I6JVBqZzwv
QkicyKi2AqV8vykc+In7KYKoe1EGzkbOoKXc4aDCFyHzY4i/HWBb9AKCjksoQd40pY4jsHWecurC
ddrO1uHmUtZvxQcWmc2DzJmvQotTVfv08GwgZOjviBmRkjB4H60fNuTFHRZ5go/z6cayutr1ddiw
sTUnXYEAP6daPJvksNBkBd2PappMgi4v4RGGilqhEYO2NFUOIVymurTPQurirkkFCMCuXRWZxucz
LlDOQ1IVj4kff5kC8TYW4ssou442m4VB65xr+8G55aGrHzkN8kqmp38HDzcJFkoT65uewdj5un10
lUunhJEdz0uqqmhdz0R3DlhZuO/2909ss+ORaOmMGo7dDoIwJ3Uqq1ZcAjdIrh8/uH/bGmx8Dxdf
wwbS+XcRt8UqvFIDOk+wG4bDhBUgrPxDhQQa7BUlPhqoHUdB6jJ0QZ+dMokae+L8Km+rOzz0nVDd
RgEtPxhfoLH2NxbXFzMUzc7dX73aoxbJRjW7zfOBGCE4AUrw/ald4NLdMtqXLl3sGkSkSvQiupDN
2SmGtbUom0A4TGP3v7k5WodZTXx42Md9c/FnZW8Z9C+CTdk6khVwgiHG1WtXzLVIzN6EUV/2h7m9
PKNrUTOnh+sF4I7HHu9UppUJ/02JPFGmOKcDgeBFFKL71ERDPPkc5apLwK1pm8HZsF8czNfxUju/
4S76q6RFLGwb3tUgv0eHzy7RFQPurdu6/q4j+zJDCT9ub173b+lGXqNoJAcygGhkN8JBTmqiI7h3
OSkqAfHgS0iJWsn1JLqOETAVbt63RGrlvDKBUwUl1Oc5i7Mi5O05LFbTQxmbLXsUnIShiNKsB5dP
mla3QjGVC7gfDekpbHZufUqFKgf3vXvgUfFLvUacsw/pCOPUKY8iCXEjvNd6n/1L+ZKyCCIignV3
do7rIVISr+taz0a3Jq4GYQQDqFj/RUoXEBRyhA3o2/L6yp8a8nh18Hw4PvmTIp4NZZ18PTljsulr
8A/gJpbKrvr3wQpJUrkpAtWZRtqkEq6mXtwsBEPze5wgf30GEOxbLI6DNjOXKDh4S/WeFe6N8fzF
xhrTnBMaC2pIma0iEJEoeVuHBOefGcTQGYHsFoPoBaoU7Pin6EDPXCLNy1P3foS3QdV8q2DOg35d
cWmmQZrHlnLNVYLzbP3WmFoyYsWnOeh+MjKEIcKCHLmaVcUPpvNX+w44LBg1aod622rUok3IZLQZ
3X6mRsYi+j6hhQ/nBP+4+bJwLobDsjXpZh91anbp6Kk7VgOrnKqzsUUJTS9Ai9DwyZuF2oFMT8/W
ZB/T3BFjKxUp8CcnGzNV6s4Vu3m99MJ3YRfUG0GaSZjhajvxIZ7u5tKWe9oL7dIaFmqKSl7hmHqV
tfQmho1s60IdKzeBE5qPExOTTPQStb5aNGwRxTFdBA5oL9RCQmruh0E3TXBFqFBA5ImFa6pD1dcP
ItcWp9Rpc/DMamY86UNWtct4Vh4Ue9ZAscm9Z1+s/PQ9Pl1JeABbLJ/Xp4+QBoEDzTaMLerrQtMB
F8yhkorBNI28ohw+yiRvXTE0FXTo9wJjleYNHzj2/B0hMCgmEfiqqAHEffF+SZrr1Y2fpYbWcTRW
KiU9Z4bmDOufS1Ye27sA11zo7amiMSQpIGdRrDH7ToIk676Xi/lHJMRdr/tP+jAgW+PKUSesm0Tn
agwzAPiMn9NMd+US2xl5PdCSsW9yrsRCvnnDtVKSa89s565c80bRToAQEJUgojMH75SiCsWYosvA
nkWeMTrtHgsRpjp0zmBJ336UbMOhH64cfq3qFBhjyyjth6aRBSj/JlJHbqKrHHROs7x20VeN1lqu
Jhs17nzncZya6WarHIs6EPM9++xmA7t+C2sliBlqkdzHWMetDTktn6E/hITHNLtyF1VLjg3VS0R8
wFdw+7tuwbn4UbhMN38dAPy5B9WcXN8c7y/ocx0gV6Q553I54RVMGd2BI96D8H+cqYH+aFb5SCqC
WRs62HAENdKSrO830MXuuYuAUht29qzL5pjtoEizEzHTQauhg0JYIpuL9ED9PW2ypg8u4iJmq7QR
ksABdBVP5AaXvE2e93v1/K5kcvhnSh5qe2a9+4jdnJqnEdWlqe1pR+8yAchEJwtpTltvu6b1bVeD
kLIOfLQWyhuVte8CXmW1hGlWNxzHYyoJajTfe5qEb7YydasGhoC5Qlg6c6WaAfYzCIneorRNmHM8
XfxjFRk2eZZzxaEk8Z2f00OyAxyuc9wl0yTC+UvlQ+AWJ2vZtW5RghTuJ4YaVhG2aHwaTTFvrWI+
mTT/ZnGY5YyNFSdwwdtkusMiIEYkx8FAWPFx8rwBLUMXDn5Uyx5QbnzHVllTCPZh86o4Ae2Yx9Xb
oZlU7PUdsJAKUTKk+qTaCx17bdkXMlJ41uxe6CgH4wx0qV13U+qT6mcuUO6kAm0P0d7IPjCiRVJF
m0cK0GEYyxqBQ6hFMfMTD82JLyS92WAzc4bRCufXhSgcMzGCgozV5WFigiuJAZ3CneR9DLKkStVy
6sEhlXDnjX18fcAmkCFbOX3WiHvKVCJ3Utk/bVp7nkOApdWOqEmDSJswsF9Fjyi5Me2aR8AixEQc
IqrxPEkrH++Y/th0vc8IVH+gIeELyTK94zwtPhdvYLdm0PfC/1wlyZEabjeE59psA0CjpWF5sfOV
myONDNiVyxB4XamuKtcq8jO1QEv1w2hNPXAYat41j9GF0aPzGZvITl48pFWC5PGEsntC7uOATN9n
tpqp02AMTDyelCQAbxolX08zz1mSGo5Jsmc5wKdoKfFgZNG8LXdvlGTIwsbfxbtdWvo6hFgl23gm
1JIkNEjRsTn4N1AMGMg3zijwYb9gHsCTLMiQsPgPmybtp+1lu6NZqzPXZIG5I3tYrBoe6+G/7nnL
WGtSCXvftzFYjXP7VkHtV+wvk+kgUWZniczpqu8nMav7DoSwq7a2ArW/rL47wI1FKpnLu0YchNso
W9fWAVHDz1OY0cOvqLC6Itx2mIqjJ4q3F/O0ECdv82n6PVLbxIMAM2Yvt9s2Sd/HrJNjuGi4OWoC
dfMKi1DnX2dY62q5a3xP9J24YwC/GJ9tSu+XFQCnqkWsA+FVddhLVuVe62oofj2j4Ab0SZn6lxEY
buGig209J8PApGb3dcvEhI/aTX6YeONrDt0du2Ts3bqtyuDxDCSTyhw7/0RwId5MZzeU+LsDuxuX
sTA0tXZlYkaKPCupJ7zd2q4Gm0Y54smllzU0PAkOsfQ8Krpn+VJpuRWXVdIK1p/wkthfBi1aNxfm
fLdOssbqIAs/tjRqAzriCK9/xUBZRNC2PwIDvfaf0MyJodguIRG/LCSVS/o9NPsnD4Uk2L9lYLk+
J5ljsWA5MCPGK7HVsXYgO+9bTrxkzIh+vt/b3Qz9ZdIfrn1PoYD77qM2tRy/embtEwDfcIgK5WHW
oJqO+cTMHNiFCsWgugh+5CauXguZUUJpgTph0LAhRB6IKDFY3/tBIxEakm9duXNS46Hgkumuk5q9
6J+0BNrelgKLfuYQ+HxVyKyn8Bzm5Y8QlrYsnl7Icqe0UhgRWceXOn7qqb1gjEpZAq4FUZobzJWc
YVGIDSpg4w3Oyr2SnjKoRcs1gfPRz7i7c8h6sEQqZ6Us0ARk0qzz/Tt36lbGDRL4riVPzCwCf5jr
ibTCr/zwEd0L2jYIw+oNmK5iaoMvU0QLOlXymHf3Ox3KLDIBpM06Ykst4772owbiA7cv7S72Zcgg
8jQfGbSncmcD1YZLyFZadLDSECvUsUtCgI8RuQtXe0viMyHnRj3dLivNaEOFg5U4GAdOLklOzYm2
HMSW0QdFAIQkpoGruephFKZ9yiUdJG6tXXH35zPPVOnjoUBpBzOJxaqSUsKSf9/MukGzJZCkgXEe
lI2aG69n/Gx4hrcU1M7wow7QGzI9/uTk2mS3vnuw4SbMlYkKLAmKVm8NlRh1xb4nxrEDLlDr8ML5
L8bmNPQxBiuoVNjTm9W/NPJXZKov+CHXmZbWoDVbhjzZNv6ciF/rWuNVc934ErY6BM86fy1Z6XhL
fBPOLnLCd3Cq2i6V/oPHlQplZc00yjNCbFXDSKnrrGruUUeqXiX2PgMbxjKKn7c9ASn8HFZJANtx
pR0RDudg5P6PSb3jubbwDMx1nrzykoE2zPoHeXzGdGOaxNwZTW74QV0j1soBFgldNdHITz/Ha+s0
X5c9mZRhLHM9Oba7X0AGEb5jAnCFAdrusqKYPndbTSgdt8bt0L7WxaWWmiJBtMWC/EohN599g8VF
obP8FIyZNosVtidnCbcSezjl49HAMDpJZILBzv8HDjIrMBKNneYX4G4uS11eZ3YTe8xWM3uQV8QV
C0S7UXrMzIZrS/WgS90cgS5nbIR8m7cjTs3Ek2v+SOyF04tptYRTsZr4TU0VAM71yxvfOFwS3ZFN
Hx/dVaB1xI8kbPtdHWtDBvr1DwemGA3EZnaxrDmlH/jqxCROAuMDFEikd51I81yqNWOlwYflGP7x
WluMGpdIyiAgnsAUPohCGBxj7Hk0sAoCVw6b/ntg2vtEtto7+U6KJ8KCBKPC3MZd1PDerEBx81MA
PLU3Xz+IWbYELDu09jM+gWwO0EAPUX6VByY96LhSmNFvDoVJnMdYP8/ScgEX2VttWS9jdEHPvNFV
/Cc6gNzb1pMlNYY8hMYrD4dqvEpgYOUA2PpU70KlnFkXSogPNPZOoeUyVrbPXVzGJrk8QD0o5J/P
nvPzJ2Ofbf7qp1PzeH7AwTvr4mOcg4xe+Aygtzb3q5RPqz4jHQy+P8tJHeDcTPbMfswZrw+9bOFV
k22HyiTQcBh2g6qs/xyRkncNTfw0CFjsi8YFiWMCX/jll+2D4yrjif26FZvdOIwc23e9i/hS4JxW
TaQWCvCBy26YFN53s5PSiVnKFDPJDL31A4ZRx7ducKljQmbn39QbLAc/wZY6MvjUyqTEa6sBwAKT
Zpr8UOD6IH29Ll1XJGxTO+RNAjJLomWc09X7B37UjmjZWo1Fo1Ttd4pS59diH5gY5/9M7TskRBEa
PslQL1WcK0HT/9ebLu9IEI3SzQ1/uuqodCFVjz1tNtORDqLTSsfUGDlhCqzSDZQz8M2uimSrmobf
r9WMKrXfHif1ddTvqbFFDjALUzXRtO9H1VWsMItKYB7sZoxlN6D5fPjcN/gDNWDpebzFdmpGnYFm
iU0jOGDeBfDZlDMrt7IO5Pk7u+x6nzVHI2tJC4D/mu6d9PTL4Hy28UG92WmUjT2K6nEBPeAgkEEp
SHHP4QTmRkEXRu/OSkvi0ccJkYQ+Sw/JIpk73lDhbEByvwQ8qhwyp0NJdp2r0rn3YYrWh/MwELw4
zRvqX51FqXeRUJbMHBXYraAhh08o8wkvLrFRurb/rxlxLoh+h/hnV3Itg8KnqeJdpDz5x8Y61cTF
2b/Jeyns9/gAU33CrEETGVPm4sJiN1jhuN5IuFYne1NUvouJ5kjokHDSBv14j1qP98k9uqYZPvi8
Gy4Yelu6qT8Pq4DivbwlnqYM1RUO4NcjB3Egr9kubUU9Zy9+UlqzeTehur0AmGM36n1HZHVJmxuV
Dm4BycFJ8Vl7ePx1tvy2Suft/WfJQrHJRWXW4bhV3iUqX2fA9o8c1Cwd9pG+OJAP5Q0q8Xr/+aer
xL1MrTrrHLJLzFBGORgSV34P6/Q2sdd5eU9EILBAp+OtwFuoj7Pb+AjBUoc5jXPrKAiQmIQPdvqy
IX1w6n8K0lH7DqjtXWVYwMRNFuEFpF0KKtIQTfQqjoI/I21NXdNRIHEFxJ9EodCAzMKf5AkglqAL
mPxXjKUGt6qDSSB6Ycj/vVv0UZP7DrHNBn+XPe+p5KYPohDvuQw4CnSMjuvy1+A8L8ImvqnblZoz
HpVHEIQ319BbZpkVY9LBsIRjfhVHwxigbiIC4lkMBVB/QjN6HvqONlsJuuDbX/kbccTO0uOvkZ2Z
EcZU64MgFxdmZJaG2tCgooPexRnZiDuEO9lFIqjvXqvz7dAJsvqbWQQAheA0aSC07pVHAt6t/dkI
ARtJUIk+9fOeakWLQZ3RfXKY9gSKgfK6O1YLcHl4laXlkXe9MY6pvnFFaL3UMCQwaUI5aSFdcn6I
GINX+eclaGY83grnfhS6BCQgAAzjtVQvmzeatOp16tLN5qVOrbHn6UKf1MEAhWDt+N9mvLBwqw9H
kiK4h6hoIJQHMlK5QD5wQG3aRAgwUqewrFDSbF5i51Zry/+hJpc+xhvnvWvvGCof23k8btO5mUWZ
3NpSVa798/EinGb1ukmyN32Ym9HGeggxiTLyhuhwR4mCtfMzOboPoCE/N7zWmWgZ13UWAOIpz5q0
RBmDb2vlOygOVj4SqBZNValp+JYllEVNVxF3rPDbEOxs4ap+GI7hqNqjehKZ6qlzIMay4Ea0jGBJ
42VRk4XKN1DiUh8/wE2l+BPm/bAhI9Eo2Akd5vKvv0T+5TiQn/9KN37JI2Gs/H/0Yt1bqDP50u6H
8bx/ZHEHM1JI6mP98l6SRxLb4UXagsqQocOlU+Ap2H3E48OGkUKpgpmL+aeyh3JrJ/3tvhEgIKw+
JPzPUV5ImOvRpq5ljmATfViTpjR2y0iT2Uh7zJOo1NWg3yoeG3Yxz1MtW0zN5TWCyeHSwUJGf+Oi
TU+6+/luLTgtrag4yx1i8QmMKM+dLyJ6zg+B80PuejUhlVuRKHJlO493uChg0vyn4jGMCU1d85YA
MEJ0dkvIpfHb3pGELFtc0ifHvORg9G3m5m4qLWULQOJqNuhwTpRScjA4QpD5Rkbvlsfy/xRUJz+c
4VDeZMUollfbYSn3XP24JkkLp8JQxKY1btkKlmKOC4YE9t5jNx9D/L6mkH3WxYYRcpdjf9J6Xb5p
kUfV2C/W+APwpqz0f9LOWKvMzFp7QWvAtjupIEx6WniYfX9lTOpP39pfcC1o0/WnIEnT+Uzowaya
fleTh6AA11+rSnWIkFUQQbDbRcxpbkRWF6CyqNmCaO71ztZ/GINu8ZeunZLI47lAr0I7GhX4rdCa
eZJT/yj+/eloqoRnub499M8P5bwqbr8WlaJyNxsZ9JYeEVp3tuHyc6zIerIOchq7bpMnGPATfQNk
00ZxISSAUcDd2uzMYgqn4UAF0FyvcdGrrax1PCDZg/OKUlI5saPYE9lyu2BAbwzjYj/CYEra9X8k
A4c0eGYI9Zj8sy/66J+2LPcbHzv43gpd5oX9IDjXFB0MtcbD4lFaAfX6MoLF4zCPZf3veK71cFiD
SdyNudv21tpnBtVnHSBvdjnjSSP7X9SBw9cf9sswSHiucP/yoRBCbPOhwzcvZ5eozlFnRtqvmngl
aPRDERcArhAA+YFAY03Y55Rx80qxioRJ6eit9xwGivQGhPwGucOuyZRho2CmN8Bu9F2lUGUzSE9g
KEXAd0DTqHQ+N4bM8rPYhHq7mArNg9GLVDKxfDued7wqATJCjJo/T844z2f3P3H1zCK5elUD/+ci
RNmITXXByMk62Ep4HY6gyDECrfjqOM0G7nhKIfrjdyj3gqkXLKo1ZOKPyRJN/gTwQYgrwEYnumzG
bi/A4/lWvJTvcVWEEOSq93s5Rt0SnAZ/b1cctPnPAguR17GgWcP8LnPubL63djT2SL2fFWuMSGda
l4UF7SwQK/9xnqXoMwGFFobfnIIMPz/jKWWJFvZ/Y0vCli+7QcatIlVQ9cecq6bJy07RUp2smdE+
wkFgYy/CQSPIY6ILZjUs4mbNTAwZ06sKw0Bmi9aYGki8+2hxC63xdqsMUobDXvKWRfhcCnAucv43
9ampGu0Z9McXzVo1QTx/8Sl7lxZTYCFYsq9/3ovE6lrZH3kyMv0us7T9qxmKGWLOC4CdrkVdq3Nl
/vQ20C9wa3Xa2zZ3vbgGRHUGenP2CS8AbMkfrn0W74gKPhdeYpWejHfXvKJrjs5RwNHW3uTNPi8Y
SXwQcIWiBKiduH0Liwwvu8CWioMvU6GZvna157TVDwBsF+Vg3p9Fo/cP037R8n1MEm//h7FSPTCX
+MUnD9JMP+gkne0PilY2ed6oO1vSyj24cV8lRrdgLGzfHAqofPY6pk3xl/akvr1WUYzREgAFrXgT
9EVoQL2ow528VsNEk8H9BynMcYC+OTENMS/gZtdkYk0UsD0v69NwJCMqqmokLWxkog8ehXKhNjoH
kxfGPar/fq/l73wlE7Ucxf1J5b3oMIgeE3LcEqjHYYHCan6EGA+xKOJfXNA8Tp51IpGk7cBXeDse
c9mYB0WIhJahAmFCgVWGme+yIobuyLxgDfFF8wb+el2GlJ+qLCPPpbmqFXaffUF7zjGo/Vw7jEYH
EEDyN3CaxITi+ukSgX7ZZD9BNY0R+OBXGzZ5wOLjQ34s45J/GgXU8p+XfAATQM/DYTHWrj39IglU
udHByLyM4EqTJKF5oJV8/C9I9+xW22hbPbTy7aG8kHgQin6xg2dLx7nOqnPTJc8+f8rke0OVAYYs
Dm809ankad4aOZMyhPJRZ487aQnfXMAPvuJ31twwXdr8MijXCIXz5yv3FAqw0+GDqZaN3kqFlmiR
yYLvg+bwRPoOJqdDHv/sxj1X+6oxZkYREwp2gwl0cnCsSXd7VM4jkhlJCuNqEuvLotcsbF+vnD2M
OvvTYIJU/tDB5+pD7AL+7il+lP3xH67jeExUXt1OCs24dvxHVmNbfSM42F8t/wnPNGB7S77huhLM
okEF0k+XllqW2TT6kNQ1E3w+aBiSOHewXqNGcPBdLcttFf0mXzGl1X6j1KmfmysP0BgzhuPnOUQS
dGU83MhUdzFyhLP2iZHYRpXQIV8XZRxAmLkAT6gFYMtHeIxUKWZV8TGHfi3AQOqP6D6s7Cqiq91/
K8N4it66kXoWecw4CQIk0nHV6c11zqw2Yr8kNqW1M9yQ0lmZf695S0AgQHpW4yTKwxHchgVfkwuZ
pYdhYkQHfgYt94TB5bqHv+bgYAs6LezjBJ1EXvP9wunAuK52eDCu5r5Ll4W0QJ9/kHVQfs8RAAOG
3HG9DBmfQF0Q4qt/IEL24GxsFnIct8rwH59V9N/0SR3TKiyQ3NafkSig5E9VxuqV7tNJkUdUSX9B
Ocsy3Yw+6T1+ntnuOuPuPOn4Z0oRVpoFyX1jtFT3QraO3nj6JOWw+tzqgSGmrPhIhskMV+yL0gY5
oxPGjBgXYKWV5smkpsKMUJYTvYaGBHHQgPFiAeEKimSpGA5HuKewkspTNsYxUmTP5zTz8JJkwwao
EF/yuMsxvL1IJfwY44c/mI2mkBS1swo8f4AVDBKuooLr6LB5UCprvVfxkyGXh3KwMIVKTKI52UTH
czgOYyzZ8xVrkBOunVQNgqh1MF5nZEKhTkeVj+4KC+teV0zCwVkZSudhGZZgjl3SXTQJzqQX5xG3
Smf0VoJfWQdcP39eFfmCrr+hhycWnEpuUnjoZJs/bechH2HwDGkvyDE1KqrEbuKbDcok0rbSz4hf
3/rpTCnwYPl1sAYnnFRuPfmuu1kE5KHHIDsBG/wUdO6ddLxavqqju5dw1QXuWCBM7E8sLNBH48Ls
BEfRZThksafeAIGk3Tmo+riPrAM0QKWCdQgXkth4MdXbEQ9zMYEwZ8MyNrDRBOknMBr9YzPQFV3o
7z1NxM81EV0ck7KmGf7+NNe1Tw86PvAblQxgZEFvVQO9v7EGwkaTqLcwzgupOIOBroZlIEUNLUKu
bC91V9QqBVuxU1pkoSi0oZgmVpG45YwWth7VkIYIfxooIfUlAuR8ZN+LBGcWLBrGTVceMGyIE8uB
Qx2SIsH3aiZrZxKhbozZvr9QqNDFLsde2CjfwkBy7P3xbeZrt+eoWeHFTjwNlb9FdyNVbBBUN14u
KXicaDAPGOqDJEMZurQxTJ4YQACmAKdQXsw+La0R5UvY/e/tCvfbaErEaaWkE+icTZH6PPviwnEE
5NAzo/OOeeqJMcVhp9nol8Gyxwa7elWY3GxhBZGgBgQFrMxT6mhIuPfC4WfUFxyY9Ona/SVXFfyA
IX6WsAHceFarSo893spODRg0VplGPJBx2PwtregJEgXZB+Qck7FQaECHptU89jKn8I6lBClHc/xQ
nUz6cKSKiX/9YzNzkBM2M3j0gwBP3RpEAvfiMWuMHTRC6CRk0dD4HarToQUlsjbluz3AQDDTrn+o
Z0Ezs7scP/fBo2jNss2Ap0J0njyfnBdWKsJu6CcYxoDFjp6inyXI1u9LVEbwDUP9jG8S8lE+rDJV
/GYTzW7g2xLk9KBRjOKRgpbZRd42o9B1X7J4V4IBuN8VwMN9JJlETkGPluex5UIqZc0AF/Di8HZ9
RJDUwKjzO9+T/heQE1pNhDaaVYyJxrrK8OMXOTF195BA9F3a102vgN3I4yS9um63eWf/NCjb9ShG
GoJB2Q6ufZHxqe5v8GcyLmVy5I3XdHgeSSxqiP4ZhfSuuH6pTDyKjpW9qcpUiNJ1io9hhsI0+9zO
gTeHRrCNZY7e+pxYMHIEPOkno1RS8ixPYjooPLKOY3qsOZFdZUA7432r2ePdyguOhcjRovyB8Rio
cQOyiDqWWHE36zo57uN/xzHmxNg9zPIZtsJBH3b+R/77PC1F4v17mk2CleXLlttYT8g+5p3HZDvd
f2ylbQPn9mATiotKo6W2o4Ftz+8Nx47W+RkvLdIaL1jIKNUb32ZRwP6pt1auqTx3NInTY0iMMs2Q
VArek0o6Owruhhaqm8NMMaRXEqz7g7QGf4JvRKA1R87Ee6UCyMh7iAKnyC/hX2Xh5S39nhF2Z704
SQv/GS745MVVGEwHdrjiydkRbwGV+pOOVVANBN9zUC9jINCakSB5gRdbZD7Sn4yA+0jgxyA09y8V
qEUsH7Q4EL1bAGAY5SD20FnoMFeFCIihSSeV7CoqZVHybIHKRIlQ1lJ1+f9QQf/k9QVwECUag6Aq
lil8Q8b8NI6a/MoqpaIlmh8Xc5nSkPHP9U1Fo9MHtCXBXVQttbktU1KhZh95jbqp8YZSGVKecgL1
2Y4OY8ccfCdNXl5uWEAaHGxCdsv2ZoC9RBH7BqQ8WfBSu1iHkkAaRxFPp4SOEZlB38/xMqD707AI
B6+U+G3itMKKrImgWZA7ftsnFOeUjnLC0J5NPJ5K+A2G/1G5vbaVThD0a7xc2YH4SjWRyIdjy7s2
ATYqGgyTYO/20BtrqEL9bkXre/iRpqaWXd0OSCHWW8sPqTkZj1UgSk9bXd0udgWHNn4WzvZnR+eI
thbPQs3u2lwVyFJX1ybSSB8r9PSsWAO5XgpdZb9vWLsImrpMlrgZMMA6plOpz7zIrXRjlrKb6Uj4
DbSEjEYdS1Ep4F1JXB/+8avSv6KVYUgWmYP2OIEu3B2vVNuie+QY5wl/izJpnYQTyIihyljWoiYP
uSce9p8miNSWhNlP8Q0SQG+jv1NfhbjAZZf4ddQUUqblMB8BhXvAaTnZ1zGyFg/mi/TakaMMOzA6
YwPiKNYwG4n8veF0ptC/wJwYo6UqrAsBIhoNU47bzfLpWPGC1NNVobfVBAiQF93aS0wLlf5DRB/I
qUbB7Y1RPwppV3AunLO08Z2C4zFP2VWChKU6C+mw5qtswuBc+YcL9+zxDoenlwXqBpRgJNcv1t4K
+arfLuUFocQSIsJKUxTaRTkyalEl0bNeoXcsAPMzLZhCz3ANnMpwKOlCnen/MFN1dSxLyJQ3kEa1
YnORGFip4JtNjQUMBVqpAdsvjqNlHIYCCh0qygfdI/c0YGFJGcqu2M6S44nkH16fMF8ja2Tf7DqE
juRrqONFYFmVhQy0JmWZtAphsM1Z54tGM+rgLqj4hq2ZrjH7DA+qSnOd9DjVQtBRJcrqRDa3PI+J
pfsb71jdVVMNbEkhAnuxMk69eiV/DWHIlMO+4IcSjNLcFZoQVCeDZRirXBkc1OAegy/xR+NwJMsO
6JvFPtrV6bg6vEprbqPB7bJTtUd7bl7RCf6Y0Sa0FOSxTvbf1o6JDLGI4ZgT7LGGQMpDKPSePZu+
L/skxEfpYloluGPIxD67OC90MmQ3j1uMCqx/JG2XhpGLs7FecpnOWNsB8bvUSAoyzAeBT5KvSLOu
7vb8RcUnDChdGdQLsvAxSO/RjwBVscs63SEpbO92s/lRYd1l5AnwDiCFWOyIJgglkyFceqRCdbBO
ZF3jffuQYEg8o9j0qlw7rkPvWWERiOnZds2a/C9nss39yWUujtdv8SV84Y80kiws/Wv0XuvjeGNy
oCJxKOuL13a231z9dl/2uXH4daT95pSFb58DVTYVXHMEydDBUjxRRZ2n4zg7n9omNrJxtTpVNm8p
ugHLYdfF2bdRFBcNgBXv6ZwT2nffzxpYjSdzPhuBtefNHe2zgK1pE6a8Ta4PxUQwMH2BXVRFHujo
CbM1+G0ZojUjOJtzBaTg3oTwc3gg9Igvey70R4z4O7XOK4yNyiiIFP+Ql9+c0f1TqaAzWMIqaQaB
QTZTNvKIcWK7tkbTMSRNglW7gkpXrB+kEXCB6kiDOUY6iLg4NzVAzvQGNAmmyuGRMWuSdgSD9AxC
SowJW1mTG3bFN21zq2xWgzve2bf8rpmw2iLX6Yrq1/3jztd+xvap56ULo2sPKA7/yCQoWyGIp87/
zopVdSm3e9f2M/AAWkwODnazwlMVPvAd97SuZtV4Ot3ExnaSXn0EeEMx/rkgdrk3UDfRKkFMknbz
/Rm89ZJvzQ0J9esej50mQqyzmDNt01U/IHfep1I6+o53Mokzq9Ow1HH07n9aU2mUKV8G2sI1REE3
BPyG0StqLZD1sSdnKLwOWJX+GKWiuW3NqZOc6ICH6mp8sTuL6iQFHCfm6wgEoDeOQ/CMNCBiRX7v
Mw7IpoShMD8sXpz+DItpnGhfci+GcyH3rznU6Kku6cJzpHgfz9iWNdZ2ltrXdR9dpgneaLJvEYh1
1FQ4is2jJEaDu6GlW88rQq5vDKiPxhbTkEaIdeDITRqM+f//C8GNfLUvDzJ+3zDCmWD5u4oghOER
40CbZOH12ZAlESNXVhKgKq28eqY9kyEehsQD9gayi3dExOgpeUcL08Iy+sBr1eb25MeL6B72+9b5
9yY5LE4Z7NHVoIxjOX5bHLB2L+PaSKfOD+v+LjUYwQwIG7Bt2+Q/KEcSkqq9imu4Y0jY9qvG4lUg
rdqtUW94mLCcvi4xE/UrBMHgV/dL/zzSVJsuqrnhUH4E64TCEdLAHlt3+E63mVQmcDN6k6+lhaQo
dhsdYJ0zRR2Uu1MUWItzimESeYqbZwm6GGLqdsBnBPm8SrkErfBHkB9UroEhliS16XkVd1me2xQL
pqFGLGbABQj0+2hCIEYao9gjfycBgjgOWJYNL9l2g7BRem5dprxs2CEV26xKhbVN44ZXdqVYlZOE
N2De99kqC6Bd27tWXacwtIiJJzs0ipO2U/QuW4KqIy15SwDu22uoIcZ8sQYeWFbKvi1BjRIHbiei
+yndXIv8+5sBHxyTSxZbGzaSb4U83Oc/kLJ/4m6IXEy90mtawiPWKGihac9eETnfAPlv15vczTEv
bZl7k0X4gDw2CM1CbhlqdakY5Fq1tvMbf7nJN6lwykt3PiW5U8deZthNgLlM7N8c0KvQgAUAXapv
aD1EeY9BraHn3JmSrtM/3igG3sIJqMm4hqmiR1aRsRgX8RPwgHW8ZQHAChuJv+n6WWrEuPQ8/Mev
Yc2/43BZimaxYh9OFrhnNrfbOWAeAYbKL+/Iywj8guXTyX6NfF00TDyDj5GqNgvXU88hbyhwVhES
6/ng2UvLzVbAHKPgKNAk6USlDhpQ5tyRBN7s5DgDR48UWoGMGU115XShwlJAcvqEUKIxgCd5/2aJ
H/vpRMUD3fw6pxmMPLgNyJ68xYOwXhPH6PGeu1+5jJcC2ZfCQRRZQJNVFTUJeyDSZVAzqvtoAVoD
Bf6ou4ZI/GWFPKVXnUlqJGhUNdOeXs7bGWwWf/6rl0wtKyR9TVChm1xNetg7dYy/CzWJv8NxuHL6
SoPkxcJr6BXF7rw4Sb/GLsdQS2S14sHTOtYvKzAr6whSA359BhVNhdUzz4KQGBT+W+NgMfP68YJQ
mAz2nyDGZwH1hmGBa3kwCLJL+qaAgoCj8KuvI9BXEe5pQYmwzGp1lLMdrN0cmrB68osNAT0CFdj3
aYvTzx52aQNcknn/RAjpP9yMyJszmsdL0KxZ7GXPwiPBomkbUGlVMi31+BVFIEcWybTwASBkuyux
YgGsWyArOweqPC+trHb6HajQMsw/5aNo5I6lZy7Y5wEMbNYswGZPWZttinLI630RfnIR1plWxcYo
1gV8eTaKR5d1WGNnvO2AbL4II5hYf0MnSok4cJ+yw77d4DvtRN6y8IoArpALJUav6/ljlM43rY0E
4/E/1J0+SyODBVnUlmsUKuOjdVln/K1SgkD1eibr4U/M+NpnSzWEHIOCZV7jrW1gti+3p5O3pQGK
b/KWBbuKs65drAzOFG9A5YZUuubIV4pC2rOGTXP+4YdtpX1HXhgn36bmQ05UXkVqwkoSEgz6Fucc
dAS+0hWJc4FjLUJZt4X3SIjlsUWsYW3uefDkoOj7EnpVPDQbBTYw1dUzDXbYngBsNIq5f2pkXWcS
mvFoODIFzYpg9uVlr9mQoPIttDjJl5QgTbENrgpzXPiRNMyKQKtx2GtktqbxdyUwD1b02UAkS9nA
PWktexrMO6hcPqSM0zK8JDukQm0u+51WCIpZnn0DDt0nG88O8A1k4xhMXB4+OWxrI33kKemhwGLn
nc5IfefzEkGO4VkJyam/X6btsLapPKmktbsTr7FBt5XAjzrnj26MyPM93Nh4NMVWp5UNWbw+FzeP
HpdtP5606KDdAvtcoo6r7UTvMVMKZ5hdJ3n0DMexc6xwzjWjJRdvon/0d/SCLRVi5IZNJGcf2h1i
0lC60z7zyVPPZ8bm7eQ+YVkAWUBSasEW4LrTzrwyqTvlNRwt1YzTc7d89VO3ubKg9Pn7byg8GPgJ
CNyw+IE8Y0m6dDm5frDJB4tDen8adFM7tsoQsOZ7+AzhMFXH97U0iNDo6JJWX3/abAEKBQ9dPFgi
qcigXLM6dmAc9YAwUGlaNYwJUDuia1HTSSiLBKl4le9HGz/shwnpdADCifVqiSZeeMuKcvvnD0MB
Mk0K4fTvywRu4lBw2p7sLAddTPvJCZcAhq4Nxo6nQ2nZZs/psgUF8fjKiiJaUSrOtqi78PUefV1C
Iu9REwx/fXEYqEgXun5H2Pf6nG2fkZt7MWznwAKkZ1k76lVKCWRCxrThoKrSTseKWGYpur9krwj8
7t4J1nY9apxfUjgb372cdemvfGycAb8i4F7dfcJ23u1RNRzZeLpbVoXcj19B5Rju24SDiO3QvTlf
JpU4JtwEa0Jd1MPkZEhM0ZIQl13Hjg72XdNFhvKPml2lRO9hpiZ0IW01d+TZysWm532T/gV+VIIz
DYKYIc+WCx6iRmInhEwhSwJguIbV/Mh4Aucn1wOknz00K9Brb+/Ks6lRylHn3ShjZ1Z+C+soqSEj
HwcCwgWy1ijqT6RUgOV54bZBhw4+uF8yiKzjyEsr7+BdB9FiU90jfWcIhHgpDAbizCz29NBqf7el
rb0WOqni/2mjDik0W+oEMC5r/RWV7C/YRH85O5P3khLiEdKhepkaeqxRsPORamEvBR8X9hYQwSZ0
TtfCD7UU26H4dI511MdZ6rUwgpftjLUxbfA7uNIyMCjZXZByzOiXer3ntAN7X3BbLJvX/iHJZiSN
c5XBzjdW0vm1hL0tap8Ht5XQnlAaqc9Fw/bSHrjj6/MyIIc2iDRzfj/lUes+1bBB8yLLZqcI+8El
krM8eyhdX3++aSfPPUzytd0miOcl3QKrPwascSNkKIbo9egTkaItEnukA9VVyhSSUw/WZpJkL0K4
3ASnBv/OoI/zqudI8PtfOmtIOIrMm0I2Kx+fgZHFqjC3Hd0Nb2dNvpR0rMHGpnixJwOVpPJN1K9x
wCVkVp8Wt3Y8lU7QtW9SiXShC9AZl9CyS8WbWbLu+d1UkEYiNxL+qCaev+MrEvG1gOiQfr4POiAp
O1LQ8eAVF05shEnGDMpWFWULKGkhg9g2TpXrlvbTE7E3zRVgzw3O460t6cZNvCF4z1lyLECy0/N+
ohkPdslQqU090sl06JZO9MX4n0RAlpAuzQq4GbTH2wL1fkdME36PeJf3T0/HLUrmiqG3COZZtkJa
HDhMbPe1+QEGaLBOHGk+l+Ax1eBhjQ0VVKBB5h+wTsqmmqIdyUuk6B1QL1imfe6lVVld4b6dDEQA
MISnSxxNwMYfP2YcXVnJ57owjABh+JfJC0Pflr6JQ6JnAqEcNcJVQ4VE61OJrpTlMBgVSlK+Tjy6
s+SNUbjuzh/C0JjRHAe2Y1kCXKF4fAU3LwnY5vOcQza4koveFEVphDYy6kej7zxmaJb6VqWvzH37
WKstAjbnZVJugXGeqYXCXBdVVf/S9VXDCTVS9gewLrgwRagvRgIwOcgO3VovoHiI6tlI5DowdAxH
dtmsiizDwy44m9v2vu2B0CQpqLV+RcfCDpSWxgvUJFr8S5EowSulYuuIMJye18fASlZXx3Ei72iK
BIXIDZIQ35Te/zEssA1/WjgVDXs4Nsz1uTaKBvoi4cBsKvNx7pb3UsMW89q3wW28kXtwfU/G5qPn
P79xj6wsdZnNnIwpUSBz5M7B/XuNXNyY4E0O74iJvesCrTX7QK6h2Vejni7DVn0Ifw9f2rhlAJ6I
rfk1t7pOSnJp0dHeOxdtONlpjEggiY9JQscW1Itm9gKnbvciv3SP7sQYd0YQ/3PimwvcnjMhM6tS
8HI3G6fEjopjZmGjxch2hTXoiwwSotauENaZ/VNMrYNlboxeQ7YfPIO/+rmen2PSDk/cg5zNg2pP
EIZ832jj4aQZqjB3w9YqVtO0Me3nPtLMFZJyMddMGBI1rlI3JBeg9Jl0Nn6IlRErKeNx3jmoAgvX
sTvDZIBcA979RYfRtu9/zk1595PSaKsk+8LRXJVD4JUhc02S8AvTyR0cqUgoOjrNKRHv3xyay2/t
f+khLS8W7XHkG+3tDgsbF6wHCZLpYdaSE23jR4E1NgbvqF4yAAywK/QiwoGbr/JwSt2GIv0RLBtC
apwohXMpZhv4fE7/P1XyQfQY9EoKegIZVEHaxxvtdooyr4QggHyzWQU5WRe0vZBoYEuiY65eu1Bt
H5jkoFG+VGvMIVex2dckXDDrvH5NUsylW9KZ+GQaXUk2k1o96b8uR0JvEQll1kor5kqwtDRznl+o
ao4Oa+lXBSijFRsBKNSdwoCqpcmk9owZmg+1vAJrDibLiSnH7n2YnyAF7XImS2D1kPjBMAJXFVRm
xcF5fnvIsSgn6m5ePyl5BmZT7KLKGOlRYAfCJbq2CL2rAZcYCVHv+hJQXYwRtcNzW+PIINMelEKb
Y1gJLdY7pDL4belQW5l24XGpcj8A5cDzD57LzvAQZ00ZuXA15VdXcnhJRnzdoFU+ogawRXQ6qaGZ
lpnNnjA1QU+LYVugO9s6Q/xutPc4buvUGGboLpYnInBukhyJCek2trxggZZDsuyXEnvOgDd6UqcD
TQGWPxjIXzZAkhU7zrwQTHv8X4UFy5NiXF9FeH/OHFjdaWTQVlKXFAOUsrCGJ/KJoAXCQiyXK1cG
ESPzEIEiTehKzyE8VidNhEdsY83J57ug3L5Bp1Lhr/gYaQRRMoiNRygeC4L5GHyJMlk9CWDXLms5
LUERJiiBYEhut6mUgj2cp7MXt6FpqiyBwELBp0T6JArP0i0z4ILMYseDe7zc2FsgMJe92Yu7vcvF
G+GgzTOts2zmaYzmGltJqa4UJIKU+lusOK/fD/agUdBVzEIfevaVOQyNZ/zBXgPf3g2tn8o4AXFU
goAFR2ZPdk38qX0enycf1P//sPgmEZ374S/qAz9+X8Gr9DG5ReE9JRY1Bn/Dn0zQhVGCr7R8oeWx
3RbCgn2NQ91j4zfAX0kjhMKIPH7BPoZZkXaiCGv1P5Kaq7p/SPmnnflpeg+ektIPBK0szSLwaXz5
JmErebmK/4sFlKMO0t+PGLqLB3vbE7QvGBmPjI1RkaUmUGCo+OANW8PSBe/I4BHFAFKq8kiMLAwb
LKXn45tZkfhdzlX0pAfpVjtWS+jenH/HPWtg6EI8xdKI/ShYueRN/BPeYXg3KXFgnULnVLJPkqjz
BsD+AiX2XtsxXopBJoxKInyrCMUi79kNIqaV2mp1yfpnVSjmYUs2RgM0NkZx4NPLR6TJn8Ro3pMx
Nkcza39zrNb97bOJIjW5aXM78jdbXBJYGpuwouzkyt8IbC4FOOu89Qj7D48Ho4jUhfv72pO/fRka
/2AZAUWWDEkkvd2OCWSotpPIl05X/oP85sElTFj/XbWQkpjY8PCZXsH+qZM5PUH4/4i4SHuBx9TV
Y608EovnhhiP1WS/4Ss5SuI+YPt59lds8KW64/9WUDeIphKil/LcmHDUrXDFGbVCfMjsfHa7Yz3r
wBDujzCaIbM5iurWLRUYLu7C41hlnYKM1Wx7mVSst6wYYX5xm2JhAdL50/h/tWc4NRiLzTtTZWN+
0DaAHiqSpuRS61x+3Frw2KWxpwdgfY6AUM3phBhBYG4zFwbkZRK9K7UR/Mo9kSGkWA2fDvYu9KfF
NtSALT+dyhqxfhBPT8vSOoTNT0QOufh/3Sf6c/gxpqG9yJIutS2TXZX1098MGHQ3LR98c3YTn6Rt
Ljb86R/IZVlqkVVZ5Q4gn/gXksiD82LuEzBzR9OYL6uMXBP8ys+pbz7HMEPRzgwHV7WAlvoB5LFG
cU/+6jP4ashDcQGkPvSIa0F2L3Dn5q/boovUHsrgHTFKOeFMIBNQSCntOmSDKqScMO///OoglWec
q9/E8EMT6g3+XYGdmND2nT+6dMYEK0Uh3i8ex8qlriXkeCIYkl2tXXWHOpEVunXGicxNu4afPypx
b9i+9S+wjWovVEkmHGD6Nkm9Wf8LLKvRFNdfkTRVPo+5mSvYGzs5wMh8M9zaFqIElR3ryBhAC9fg
tTJ+YAILTQzCGdKwS9Y7luJ2s+FemoRS2lGQw9WbY9AbCT140DRA0Kr/0/mAOT3szfmtQk6vQpJ2
7uqsYXSWkr0/RzZNFGOisoM7qWJX95dXUo8lT22lA6HzR25g2lddoPOXSu9v/pGuG7M/29k6DCqf
wdIZCrBgQvW3p/jp8mVvNDCkv+5qyio8wirflAUVevH9i7TR56H97n6PPcGPOqLf+MoUYn2Y9YSw
J2KWCiyD5IDjlnHQmUUzN7tURqMq1Aprv4LHbklj5KMTjqhtBYN2aYb6rkr5SEFHuXQ06kasgeRY
OMy92fWthSU+kN0EESxFJYDEZSohtn5IiGZjT4xh5rlXAPNts7fiCkvFmsQxCuPhZEaHXvzdC1bV
IgEoUqgCLDNrmS9EuAPeXJE6R3JTE8IghQsgsKmhkWKwueR1nDm/nXK4Wbxhj4Ngr4G1TA4MiyMf
DoxxzA9IPcJYS/SJJUa1wb9rvrtqFVhHIdGfzxc8hlowFrBCQ56ZIafvxUhGPhrXdV9NblVO7g6D
xA2Qjd4cVQdZ32Rg3s4b+g/kPWAi/hs8lobcFGjP2K0X4sZLNVgxLMKJDivZL0vz9oFnRYJAkr49
SKXTrT0KVzpak+BlkbioTx6qCMNDYdHSQE4p8pWAnoAmMTZ9ep/J64j2NOCX6TbnWt4oGypy8ZEB
gX/KaBIGdqW4ptBeHRxvixqCbLjuZXSEL2URMj/7Nh7Cc3Ki0P6XuWbLyt1aVcrXq9DB+0ADWYmf
l2Hpkt5iXEhxtgccFSTtASaxuVZ9F3FJ6lx9nh4NxwK34hGH02OLDMk5zb4Eb9XLxwZD5PqPT/Xa
u+YB/WBg30woT/mWit7VUmzkyYn7+QprOmzSrFefg2eIbZ4jO01K40IOuBhyeGj3R4eUwmcDj54W
9ae2mAKh3RTFVId87HWBaDMd5SKwSd2tWil9lBGAQDZHG2SO6NCjoAseYYdjydycKnlLzqUU1zDZ
q1iTaJyxU1L5AqzWpOAEL1CByX0qk4+iL1Vksm33CaS/KvYYbJS7SDiG9sho6agWQRuiuT2Re68j
F5Hg7t3RsHeGHvqLWSZkI4KK4jOP+QrsfYjDed7DwL1/cBUu8N2iRZuA8Fm7sxhRju9zRMqV3x/l
TRxFM/py7PZZ3wA0FgvWnsxoSqsLS6KpU92A5yngB+zQg+jvkbJouQUdmEAg37JOKfLK+41cwci7
vXKL1HJ4A9hwIPHmucI+ShvqHOrgZOBBtsW+MT73H/gKcPN1DEnebv8gQ1M25UFr9i00/o7+LGWY
8yL/AB+FKhL9YRld0wqqXtofZlj1fKgHU1GKrZRXFmqJQjg220OixmDWhyosR6ugbXLfHqSyAwem
TlatAKKj2b6BZCXPKKvZuNTaT7eSgVHwxk5x1ucxBZK6ox9xR1VGt9x0jwI+1ET5Nnh1r2Lva1QY
uJOauVb8PY9vFe4SQTJ/GKwktUfp1ZIL2I6d9ruUDS2wSYg577baXPgO3niStNBHIVos9px+wBMJ
x/NAld19VGrIo1FzryUFwgd1mDIuoCCs7bCMO9NIumYL+Rvz3/853WkBRSwGMke0E5FzholnF+ni
4wQSw84lUbsZXUIA5sU52tmxycFal0wUDw+KSrpUEj+2j1JPmhkbk1QZTiOegKIIkti4pzWGSLGY
ew5C9rwmRFqJiZy4ZhUuKPmj1RAGOO4kQRTeMbilJZEQvLMhvGHtSDIJIojM+oGgYoZeaxD0Kvo/
KpDntQqlCz6sRZgbjd2Tc7pyfQiPt3mIQOGLCKafY05ZIbxgt6leiQKJDXSR63JXp186xDKdLZ79
L77zPT6JhCynlp9d2VFrhEhp1JCIRwED5qTesXegI2MjpzkEY6RTmduHdN3lSk8R18VRfWQdO7BR
dgTbAv+olKLmRzNkGfpoH9hRJR7fhYr485PyS6+Bs9VF7HIhJf8rmgfbcxuRSOmQvS2yHq/1tYYS
rZkehxsP4K8vJLWqoZ5GIhAB/uk3sOadJtKipZ2aXIwayQmwGmLSgr4nYfLl/c0styQG6vEbB/T3
44cTbynusa/doPq5lzHd3fP8Mb+a3/6x+Yx9u04kT3rNSZKBrmX5Pj4oXiETztAdDst6V9RyI1gJ
U2FrPTerD72vs+vz9iQsyFeedtfOOOinuFksQEKAbShYOiAQ4DMDnEcNEBT9byT4O2aCIAR9rVE8
UKLI/eZNndyFn+5+aF2SHFbHha/RpwPm61XnsQQed77mAP0BTLD/gnqJNnsV8+50KOTY7ryKtbL+
1KFMZyYl36RpC3JPaOGra6b3MWuUoqGlo3Nvab20DpdgVtSVW1zNI3/yEIlh27pc4DjTAtf5nWPC
COIQWwa5kvR+ow5YCferlVpAeenOr4lS1lfcjAjlQH1G8F7MHRmf59crdBWMPoJmYZ2gKGqem2AO
LOT0JzbQI9Z1KO03qRW0aslzibfxByc1n/m7PORUIHCC7C4dbgEtvE2hkK0AH+mdRhxWYR4S6fMn
l9Wsk06ofSELLTOAfp85liqxV8mYC8VQRLNw8t4roWg0/GpDoy1M9/PAS5y29/WVDP+PiBJ29SVW
+oyDpxB+ErMxJKxY6wC2s9e41A9CA9PBnZaRI9Tpx/KUeSvFzFczmSgkMnRHPlzbGqDdhNrRhz+j
09GytWQhFpd42UXPfADqHSZ74N/zFPu8TikjYHLJI43uFY8gOxDt6ww5aG66ykBE8TZlJpsUgqDG
esHZvR/iVM+xqakTt0OfkhcmIi7FQrkCbJxo/NHXOJbXlu47x0aiZ9NPA9hcqQqZJOq7URYR8gQo
FGjrKj+lzCo9693Eq2l5GftL3UVX/P3PCaOR4G0XKzhWoYgKomRZBscOvhgqfY1YnqhVeE/bTB3m
wx8Dl/U9zUSvXJmx5rqMyXXWXyHVQoe18u50eYFc2I2OX5ifAqye3UR+7q9xcWFUZ10vaOt8lPWP
xxjBXvE5yLjpRZgQy6KXmOlvOYZ8cV7LothG3tIjUGFaSJ+ACtoXZknIcGM5NX3EBTkXEiYXaaU9
/0mvnA3uRmLqbKJL8oT9xbilPWoRejH745Ov5YgusaUlOn4eFwcDRzfPutJD+RxK5Vp21HuJEkQx
s5121SMw4+370mes7L+mp9xhpO9BwH05p8yYKi9wS4hhnd67/M5D9cfRCbERIKX8zRYzEP4+WEjv
D+a8X+HI6xB7XRFJjqiuoswgMMscF0Ti22lqISTqQLsQrlL7RdwdN+MtjP3kwoi6ESF9mYW0IYs9
ktRzkeb7DvkjMdlPBdxq6m03UeEGBgNz1xaXsSvveT6qXlaO0Q8ajHBbE5daWZjUU8YTVw8lE3BA
TyywDMaxX75mZvEMfIsHuCT6cCMDhmBVD/znT6qR8mV/nMNZiyTV7rmmuV5R42/IxJsAHHIOIoV5
GtxlZzWauy/1MkeQ2Pe1EpFjWnS81Z6pOTfc9A89KHFdxEUJFj26/I2wOjTMPJo9VS0QvWjBuacU
wk61zPK/VRgQz/aljy0FMqOrTlehsO0yamDKEH3jaguoFVMCIPElwMEd3hnPI8CwzlZ50Tm18oKm
ju4I8wnc0NtU/hdCj8Z1XFaJQchbwnLESCumUYhUGc4oStmvb8y/x/zCYNh2LYcbsHIHnc6/J/4U
DayaCDbE6QfgznlYSmZViIjMvnAttQPfHjb5wPx1pLNd6QoU0X88q8aLXecMPJyQ3IMiUm3aHx9O
HhL/jSOxbpIJXPnbNqSE0HdWAzr4mPkxSwt9UzDZS3J9XzI2NhfqC9MpflYOnmlh4EmIzujHZrQQ
8O1JDGyIjj2Y5MnzyNBQsEW5P6E6sFyGCh5MiLCYNjils/oKRaDVoujudRhjGVw7ZHni9CQwshDU
mS33+GyM4HjJ05+YkMVdg163V+cgcwve1xiRJOr7NJEsLoStGg2y2XRp7B0345IBI2fXHjGCrzSU
6gYtxx11Wh16nZ+lMsEx9ePPruCdClZlAjOf1smIyi2YjLRuHNR1pLxmRJEPblbJEzmWqvFcqttg
1phZ70Gf6ZoG/2JbSPVwr0ggojKnwdhbftyfZEXBON9mn2n0qzT8lgeXgeoMUOEYfB6iAx0wlvM1
ibDBXsciw4EETGYafhzfCmQmkB2b/uw9PuPr0UC8DdUu53qyr4/bP+2WSh/+4hm6BA5D9CsYWae3
Y+tM8GagJoi+m0Fe/vPZq+dYhfBGGavUXB+6OyAqauSN0zMQimBxNSvn8F7Xde4XilMXaOKB4bTx
soF08MgiMcuTMlQAB9CAJjSyZorPFzf00r+qQ0Nb0fXdw4jxi7XdJz857oBd0SToDa0MxC/2DD/J
CfZHQyb+hmzVZRTpVDrCYDu3apRuFbmrv+Bpb02OBb+4EcnlH2GZHO+qSAhGRoTIyg9g6AWZq99q
fYBW0YwfCN/BTBe4FkxeLR7UZDWLMVlpluXzpTctJmoH4PHHZgsxU7dImOz90niU/7t2guqfUnRm
jQU546y0778Z+JbR4jgXipuutCbIx89b8yHBA3mPKDwhcau1Ed994uPn//uaI4mwsSG8qf7YhE/2
QaxosJXDkhgvviqXQPO9lMlGBMxXEay+yQ233fIwxRF//3mFcXpgaCADB7xtMXTKulNTYCpPGui8
pq+tjo4MBD1sSGhfP781EQDmyWTxLvZ02hIR5qXFJKXYUg4goA==
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
