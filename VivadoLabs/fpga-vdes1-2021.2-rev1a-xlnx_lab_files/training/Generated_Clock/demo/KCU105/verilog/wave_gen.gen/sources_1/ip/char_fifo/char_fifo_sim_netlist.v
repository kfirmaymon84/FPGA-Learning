// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Dec  4 19:28:07 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Generated_Clock/demo/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
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
