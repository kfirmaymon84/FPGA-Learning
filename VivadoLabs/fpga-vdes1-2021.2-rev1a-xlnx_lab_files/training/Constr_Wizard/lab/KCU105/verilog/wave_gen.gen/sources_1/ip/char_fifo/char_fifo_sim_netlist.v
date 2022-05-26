// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 13 08:57:37 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Constr_Wizard/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
