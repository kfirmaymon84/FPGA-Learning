// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Dec  4 19:00:13 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/ClkConstr_Intro/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
