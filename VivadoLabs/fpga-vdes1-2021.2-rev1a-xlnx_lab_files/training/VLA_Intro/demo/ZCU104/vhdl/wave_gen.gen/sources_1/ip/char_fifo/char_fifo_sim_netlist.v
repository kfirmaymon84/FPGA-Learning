// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Dec 10 20:37:47 2021
// Host        : xilinx running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/VLA_Intro/demo/ZCU104/vhdl/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module char_fifo
   (rst,
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
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
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
  wire rst;
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
  wire [0:0]NLW_U0_m_axis_tdata_UNCONNECTED;
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
  (* C_AXIS_TDATA_WIDTH = "1" *) 
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
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
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
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
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
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
  (* C_USE_EMBEDDED_REG = "0" *) 
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
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[0]),
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
        .rst(rst),
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
        .s_axis_tdata(1'b0),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module char_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module char_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module char_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module char_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module char_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module char_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 104112)
`pragma protect data_block
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
`pragma protect end_protected
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25856)
`pragma protect data_block
zoiISIElkvFGOLzuOY1OvEstPdlTwxOHLZBDf0m3mSLfJwPMoFgwzEzQDRhPVpxNwtVeVgaJmZCr
HlKcrH2/yKOWNnIryE59to639ROcfz1+0PC1OQVrarJ/Ig7048BZVA0Q2K4HFlCELbvyVPWPmGoJ
Jw7zE4lG0VWC/MQPsZ0p3HBiaFqv8AZGb5+L/eKIHukcr02ogbAgmrnRpXYJo+m9g+Z6dqObcyVY
B+nx4CUm4zphxnFEPGx0vFUiBhOPnjd7QTwX+DL4VZXbPbqIX10xA29TODFrYDa+cdAtuB/2co8O
8/KKjguR7+0vNU7g7eKQWTqn9mSrsx8J/rbxk53LESFzDPi4UqwW/mJwpnx9tDMiN7xF/GagCxMG
LilZgbWacickQz0ihL8skh57Dbv2sqFvFn4wusab+ZhF5jPxyB7xBmOrALSSexLTWnCU/0fhE/o7
lE5R2F47KNRK1SbRrRLNaXljTgneGXxKVx+gIFOYEJSbCpKJI9akOjhufG090LrT521BmTi0AEs4
g2s/GDhPj+rh0qkeE9t/LA9q8eOEOO9eH4EGe0lJZ8ReePjftACOfB5fZFO1KEx6A0y67rK1Ohqo
F6y481CQymO9WXfCcy3STrdlifrQ686NqDfRF2EV3rtCYBcoJRoIoV/6L8+y0z6qBJJhRLHhtM5K
bx0W0qLGzzp9Un3Y4Tk5HyreffJ63q94pzZQu93OgbkCJyoxp2COo+LI7ekivyaaw8Vik4OeDCAa
dHOlerHHhxx23Bcyv8g5WgHg6yRZNwIn+LD9wiBRjcN0CRvK/JXnssuQrnpKSjq9AoPNt4boJOhv
sYYyPsRWgUWvz9HwAKvIYyBNvlW2+R7WiPP3QiM9Lf7mKwhHAwZPkaZORtqG2v5FtnGKbXTwRdcW
GDveP2mFivaETw5YjrLHQavKWAg1aYcPbrewKu/SHZ0xSm9r7H+yidGX9kiWyY/PMBjAgWftXHwq
AA0HHBNjdxw5c2rX2s4F5qkg/39Xqu1X1ZCJyVcWR/XTcIhPjxBXu26qAK8wE/8SkmLbmJI0sZ58
p6joY2DbovvkYlaEQeQqF+ne/eHHValEgIYrgO36q9XLPaxdbOdO9zRfGcSDu1IsI0Y+npjAGVGT
kfVG2FgrJw3tF8UUB3Fz41h0iJ1DXgHNZ16Byvc4wWbwf8n+/h70xMpEFVODS/7A4xRCxfTFdD5h
5oOUhguMsjIBLZ7aeDidEVOEpe6I/Ch1de0S3rXaL5whV55HCxckQ0qWX65hQ78NhHSa/sHwsoa1
TFi7qkc2t0qo+pvoGMtZ9pfAb6O3TYv2QHFAKUZaRZUCPcPDbsGy4FxKFxbNJd23NOfvWyQVRupB
3oul7dBAra2UEeh4JQS1GPJghIwDHftTMS9mA33DQc6fLysVgYCrVvLtrMeVYrklCXdpDcV8Lce0
foY14WQRWony++iuj54bbTqwxEVAU4fLgPDeHPxdq7JKjepUj8xJUCcuPT/+Pyhc6dB+sYSQ7mNC
PUOHLonZlfMvMgbqZQJVd+ElVCiqHHMyTcoH5SOu9o/sa1CrbmZj81gPrVLzxYyTyql+2lrZGp/w
4ucS+XaBUmTgmqPu4VWDYUqXnddNBKWTUYQi5uHC/5hYKVm5x6NEJiucwk34tSXlBX0EoId5NUPS
aPcDVbxe6YkV0sGEKl+9GBWh5Dpnw/90qOrY+cy1NW1Bvv/ZGGiqCvTmnX5lr0IwcwqiEH2DWwdQ
2kJ4M1DGlIfDeMBpNXPywXZ/RQiH7bWKGeKTko+XHgYdnH6mM7+UDnlDdEqc/lcw2w817QRw+Mlz
S8jIaqhpIt5hWu62HhHU4fr7oNvyC5CO/mn5r4X2w8dTnOXxZ48KSedgeC6DQchYxCe3MgmzZsyP
geTBR1C4gd1wrLgdVCDfvkOq3lLoUYZ0WuX0LSL8Mq44QgaYUvq+OzwSdx5BuFt2rF+UnLVDdyEp
1DaWOhLDbynfFCRn4RJwXkn3tZisQhLsb+l6kDw8myefEV3TsCeeofSF9t/VN0YdO6X5/Bptq0TZ
vwOsKzhgxqvaMHjsWICSbhI0KbUDTtUREUmeW3FPG6Hzs7MZ9178HtfzLVI8xysfwmkv2+QYbkDo
JjzJ/KvLjAfUwVu+tqhGz0I3TMVidymFdVBCDvpmwfPuQil2G6E7NVVB9xP6RjTA+uL7g3/qN+Pe
gqasD+F4fC04i87lNQ3TSJ/RZinLtcX4H+xNGVROuTHmsawd2rF6xLm3dCWb0AlpqaLpUKBmwkvh
17ioyfoYGtzaKd4RobQeAHNalES1/+pMdOBcbyk8GpEQx5/vxV+MtVwQKGi++iB6p+cFH9yv5Z56
Xph+wg/kHuhx4Fnp+Saox0SGQJz/IK/Eq+IYQihQLIja7jur9Tw8pZbhPdJ8uy97S3ul1w5MSImt
vvy+5SHMOaBXM4P88CsxTwDPOOFSr2AWlJUwsGIZAmeJRYtDrvT98wQ8fA8h4Jzwyswd/zx4M/NC
vwUH44pUBHksi7I66Z8fJYZcb1xIZio7ckMJZtLymgS72xFYuyw3YZ67WleAaptSfNTZcXwm8hwP
vNAWITdLo8E6Z+w+PZNXmvXjWFMUpy+yMzWqvzxFkFQVMFm50Y0hv0fauMmbjczeKH8DDCuSsUg1
lGWQw0yGT6uRko4MmN2izEORvGv0dR3+WSTuODY/YtIP2WmI483uO5iRZYna5YKdt3FSTnzThzVO
f+Oe4ZA5AgFGd3qk8pwSLpyfemFx7X80IMPlSJQCRTl2fi/81efd/Z8WDpYJ7FM9wqdPWBB2CbWG
bLD4gC7wBUFKlVX9Q1Ir2PwA40bjtZwC+9QfHzXTTG/69I7wNONXMcFvzU3713smpyaZkaqR/ZfF
cJuzZFVby9orTb84L85RzmWLP5Eo9Gu2kXQcql7jwj67iVnYVbyTx8jnIJDGJz6L3qFngsVgzHFj
bK2d1IfNSh/JkodCEluv1O69+JeLCebLHh1mHCBw+O11jIrA/Dwup2rdbJzkycsjUyWbDVJA7t96
LOEU7R1xwCCM9b4r/jMseZBDd1Yfcy3NjE0T1E5O6UEbEwJOrd+Hyzn/BiSrIYgswIHbTqoTTv2S
s+B3LlQv7btI9ozEEOieg9dY31xo4FflKSAHkZDi1IOxe693xwg3jcA37I6oxu9byJiDhIlA9IoS
7IGgrSLs973bF0BvxSjXMYByBbkFtYyn7+rY4wJf7Bf1pnhO4BeBBVqY/xrpjCQeo2Ax+ZYVADIz
devVgNmDkQESCMVlSsfIfL5yoqOwkcHj2YUcZBuf3LV3H8jdpkVwyUprVLanWa1PB8BU3OpcQ7jT
imJxS7W76sbedJ82rl37nLRSh9cWfxtLAeIvGqMT+RMmxfXcivzQoPH4rzzH5VGdCXRIdXGpOaF7
3W1MFepOHF/RldB14OBWgsqKMMHqPi/09CxX2Gp1OwYeXoNPkr+3ABi/k+McFM/t3VjteULfC8e/
q2eJSbl1UgiPa+L6LQsJokuV3P5kOuiTdlmPdhWiYgLRTi4gUvcyZm4T0xFBEo4BhGREjGYNYcMM
Q6tgElEsUQEZCuMTmoeeziuzFxPj++LYsDUBzB+4KPW/G1odhgXz3awmTRs2nFdEyd8/y43TjCpQ
lIH3g7TBb1f03SQn+Pai3zY0R3a6x5k5RZJi7l16DstwZu3K+SmRrX4Yc4crYOWb1UPAfA/fvOXD
Cte8Knj3kqtN/OkpE8e3j/T0Kua6xvTlPAUXFtVuI4I5/8u3PToQ7TYz4Jz5J4aQy+cKpeAiu3Rw
IF3iohpFBufbD7dXbg3FUJsiD68Bsx/krPGT1/bk9gveRbJLN7pu7UhcbbBTwpZzlI85Jv/3fkrU
uUyDYqT0rwH6zcQNyFvYSdB47pmUNBNb5nnE/b+s6QYYVwYe12ZeM22Uy3AVcAGcZ4NLAC2/NTZD
4jaebgY5dtHyvO0cNni1zwFtGv1cx9QGmP6zBkQadUCHHlLOpTllaq3ImrAn88euDfXdcf1FWc8W
MbJXkSsuodz3kFGo/OYLuGmh49G6yO0EqMX3G1B3QH+xVm2X7Veefzy3oYNtzwVDj7pUn/i5ux6s
zF4NkeOE9ROW/tbPXK39tDe5BuTTuhnZOS3UVwiIRgOPn69weWM6qxMp6l4AaD3s3BgVec8LNexP
8l55Iw/hnpPs8bPIlKJdwO7qoE4/hDVAMgV7fgk1pj+lstxnxGBK30wuQ1hvTRNiueqni6Qo4rQY
zYLAfX3MJXfMrlI34F55q4cONjjRmo7e5MSO+LmbtzxZCyFMfv5/SEt979I+jze96W1Zb0/OjfSx
ggaHdrcWKnCfPLTvky5cbCLZ91+gc2aL4L5a7cLpoxkNq2hksxuxhht1fuSSV/Z+Uod689z5Xqqh
yACpV6/EuWIUcH2eB6njYvnUka4fdbGoUnckoeZw4/EbBx2aN5sw70tK+xefWxduUnbDuCEWEHOa
5mV/jy3TpPvT6GCn52mLKw0YO0FOy8ckSoOpkLlJsCmetMBIsakBnKP6tuQBSVVFBjK2gPlyYR5T
w00qQ1jvH7PpvWsuv2CjTORCVCBOIuqbgBtPJ8YyHPL8tcpJCP0rTRkWmQyEnXXdKUD4BCi94n4d
a0DDLMLdwQ3ZdEJFOmFWK1XBPNWOWf8P7ZsJwn25JtFaIGRv3xIO43mHvJ9yvAs24l3uw3mhS16G
vD7LqaMdY2lCJDmgZ+BKO7CGNgarcoBsSaGQpuFnXjQfas1lhztgDi43ooxi62A5B//3KY7u1NQj
KzgdLT32rie24HMHMeb4kuxya2VAWVX+7dPrklfjXgO8mjMrQfBRG7Pi0Bg3RFFshUnTRzNmKy2z
19kiCqrzVgL2vPlk/+yzAZXZZkwkbrqe4MFYPl8Q4oRC964W+WEVeYUprMtcF9XIuc/9ZoDknSls
bQAN60o9LGn1dmBrKMn7dYNz+GYIURVf/Uns/3UNW/9zF3k/VoXZ7kKmwqaVU82qvasrRGQoryf3
mSiUn7bhJFCUV+mbyQhvBVNHu6asVR7uYvauXdHpq0tzyHucYCVsSndOcbwBwej6O10lPsbrvtmM
a+882MUhPNtq/f7nOOBvcZ5TOlYTeMEg0QyCf9clfBGyuwGW6I2QLNBU46DUzjAv6/xseaLxQTZd
ZqfcWGm1SmtPHsuJuLYAjE1qW93m14ekVz1NZRnc9uEGW9AxBRACvk+sf+LEe424sDYPdJmhnJMJ
kFIs0beMUERb7Ihbi3xKaqHByHT+k97/UWzvueVoEQhK2W779j38EDw09rG/96zhMnnwH7Hq7ygW
OabLtwNyjFjWYTWrf8Onk4TTJDKRZ8zkilgV6+UU0pwA39SME35V3J8dergrdR7CT9COtk+Aqn+I
YFUxYAXHvl44cN91pDEBl8QxaI3hwdmbu0ASufyOyc+HeUHEnwFf9n+oezRrfScGilqGyYmqeucx
RzLxIIX2Al396UE/NjsPTT/j8Xp8ElO8XA+LEZT3Cz+idGjLlir5B+KKhQn++JDfxx721rzLtj8r
TRT8DZU5UEmp63K4jM7CNHsDrAHL/P354Rhzg4wdSwTDR5spQ7KbaCXIsQMtAGQ20KgtKN72Ztc2
zGRXVKrIxJc/1304Q2CK0uXbThMqUOKEZiaTOOLdhc2kfz8zqFIFq8YvPlVxYdGYGyXB2a/GevfI
vSJSA0/ungCtVwenfTLPMB8McWHPe59sa7+oTv9nz9QDvU4aHXf7TyQUKqgdbWG0s9y9svguNGK8
wCSbAGwhMTNEAeHEMvYTa34eEtHiAPuUV8ySsw8Zy9pi8pkdcKxWRR/5Ni6M9ogy7t/lDgS9ztz6
NE6jqt1lMOkfZ7scSOP12b2QwK2zhwx1uCjdL3aEgbFd4/7xF6yHF6uamuzlYAQm+6Daxhfg3O7+
9RO1PYZR8bZ+pAX9Wz388oo5tA31CK1iGxiE0d+lQ1995GAaGePFKYPm7UXOYjJoOjch6WYIMMZR
b+mHNzg8T4EcG+N+gNMxexp5TVn/bl5gBkdNM+tww68ealFYqWE6BM9xGMUYXsJ4syX4dzSOKrCW
2kMxFvumy0G8db+mRh5629d4jlhMsRBNtaHSihNdWZkANH3VofB7H/oeohQFeCx5Di48GFj7heCW
LSl7KL10M18+tMNWmh7sAAYS4cdONM+MkdiNfr22PCUyaDrmMYe075b4Bmb0wjHt8Pi0izWjd49o
ZLKT0Iu5i2F97mR/xlfYWObqqWNRQmC3i/mu/HzujWAFyxlsa4slqF0BSrK8qnvn5eRq4zMKIPDy
/peq6WkUbLRDxhc8PDW6TWNDoNUHuX4vnYy0QofY52eggEjvDq0fgKhwbTm3wEdd8BVB9AITSZoV
B8b4VU33MkfADon1rZtuyMcXVP19gPZBjL7csn0/ue7DehLHSHnsGm0Bc/kL5Wd/jwZ9x0hfQChT
trGvXz5jOHeOxMtTMUckKgKNnovFA92mV9ZT9MtwOt7tvrEFfbte2x0hFtHZWY/WbwT5Vfl8jTjL
iVIYDEV9kpODrlmnp0ytDGbME9zLPQA24GKpwe2UY8I5TicPgn38CYJfElphI5X85iX1ex1yhJ6s
FItYDfhLH7y6Myr668mWIw87BqfrDPCbl+qKjhBdO7QTCgr7L9r5n8q4i8n5sS5DsmOs0d/8tdQ5
uzKHq+R1XlzBH9W8dSF4ztjPgfrGmgtY6KzNRJp5eSzfV/qduYomSHDvCPJxGx5je2iYrHjmTOxK
oC7gmm7nsOCkaIDgwzp4tr3xmNiebE9Bq4Rm5N0oJbSsIPwjtr4lhR5d+Bk1WMlx1apfw/9AexXI
SygIh/JG+h/hECddOSKEXBk87sK468cK/aPirJEU+y9XnezYvBdJIgXQMxgHZey/NV4Np0ONiB/r
8EIvChO/2Cb8CmIXxAB3UxA1uJ6otGzi33f9uHfRXA4yuqm9riEZ3CTXcRaiFq41OVtKeygv5eSC
DqSHcIapeZIuAgd3luKdUj8fbLuVz87dwQZJsDvfPCDBLTp3Z5yjK3YtqPSP8aBKCytOTeonJl1G
ll+Qt27PZns9vaZOSU2HaaP2pRhhAUtlH1eIWYzYbv6X/icszUaF45fzF54V2cuz16ZD9xMftoHH
XsDiy6+msyEh3cFxBvr/1xenrRuugiYgqg3ZwJmOwCjjpGB2A185kv+pyHUQM4xWmcf1kfErpA2u
PmwJspMa4neiVMseBb39Xr6x26Z67C9tVBDP/jZ/hdnrMr8M1lpKrf9PqzXCP3QS1/2orJpGEHlK
uv+hjjfHVzPxXMiUzzsGbmCnL1gfzEhwxZYX9Re7wC+H/l818Z+z9LXzu7JiDZAXgJWDJwsGoo18
BnouXgj7T9hxJZUG3A20oyPu9x85PtBHAsTcHStSEn4j+ga9ngSmqQP0ARvRVsC17pSeP6ifzPCu
Be0tzdSvZaDxYeMG4/1ipKdY9Ee4Pgdui/76AaII7GVLEmA8Qy78l0xG3cmEe4Uwsvqt3qk3jSCR
mz/k1+UKvAxjpCLmBjVGyg9Hd7KoLPYyvoOx8IVlHBjVWXiA3FJb0wAoxA3ovvA7Cgtv3o3U7f0b
nA4/gYx6bHa/j1d9qJkFDpqU6K6tHdogkoii7JMn1vk+E8bBHNMX4XR2mKwj3YKocRdGobpWoHpt
ZJzalvG/9KluUHcfLPhuDHlBTwn5ZYzxxbpVVOydJezmTKbXi7++TbVN6zvl98dOvwLDcxv0HFs3
s6mDvdcpUffOcD5t85HIfk1DiwVD7mLcPX4fNTZEfKnIY5Tda5MIUpC3LriXtfDWvVHX7gaifuBy
KPylWyWEpnpscgwjGexw4+rVTCGkTLc1uk1y1CirsAVvGBY9TQC5+31zbbh9O26u7ooLAl/TCPzD
25qzjqgvflm+L/VPbNtQN02c3+rawZh/+9vWjwxCGJAJ72Ky91yOahAL6KcrdwN3khNQ6dxMHiwy
6ECdvQCUkOSVCOnIybbpWBlWVpH41Kho9ii2/uLLJwyt/feqWsANI6p8KQMeA+MDDi3RiNp8YuhV
8cw076lLqkaXffp3sXX4EVQb+zldYPt/X+6hbRmRbzie4zdxKLvMjIvjTcFnsEAB4yAbppA9wwQs
L8v+rgJp0sGHEhape9u1CqxYrtGyu3GwMPvo6ZqvGMwKZsHgxd65Mljs8P2Mh03nBXgD3/QzfBNX
Y4QTaOH5zai4XeCHYRdk4+NoxEQQM59H0z21rSckmmiKqM+g2HGmSh+M5Wbv8jISWPEctDS5FnOj
d8uyk0felr8CcUey/bP6usEgF7YIvyCYzXCEpEYxklVwedjjkxztEEyqlxIg39GHSo7hpoLxKRsj
MAcMUikR+elTKxoFMZfEJGLja/yey9ZMQScHid09H1QlfroeiBHV1fFbGm9bF2LB4M3eANPv8tPK
5lKJn1qwChXqom6lWFxu8dUyPdkK6tNxEgmSObaqrJ6/Zaz4EAngQLqqHUEQL3nozy7stz8MjbI5
M6yqbeKjclKyWLBoZ/pXe9FpcCj69jBhIiX5MG8buIBYK8KOwgNGgHNEVF88BvrL2TQxXQnGbdKS
Enef0wRMUJ3PaH3Z3upLauk7VLmzhGDW9zsioNWm0Mae6oboeF+EIQT+mtS/uXiWsnzXpaYVeoe1
WtKExIFS6MefuOuw3kGyST9p1H1sYgsdAJl546RKpMXqwLQ9P/7PLKhN9Kh9XyXAcuFLe/rKkndk
K2x4xLdHMcFcsWpxfRQeIa58E22ra9sb/pTu9t4bg9zHBEtlUZBnsF9eOkaxAJx2tYfHqEDjPPRx
smMzvYDl4vfyjafWcghxtS4dVR484SAW6lowosqzzUPji324XarXi9j4sodpFyy/w0Xv5dx5w9uc
gX5vUBNZPO+B57cyToKiIIu+FZNJr/6AT7g0uCBXUiWETbfRKMLVRF313Z0ZNW2nj1aHz0ptMXxM
zVGvHcyB/8dU69cECMysk5BIe6uTGQC0JQzuZnewXCPLAZv0nTqu7SYxo3Zg04AyGvAIF0zQaDoi
vdofhMV4l1MO+MKQoJlGjYKWrnefG7oSg+wsqryX/kRRZtNjlkz1rIVQeGD/Z5tz6xEBbbfMMyKx
gOCXs3y9MBDlCTzh0TH4QCxtstxu2KgGHdpgnuzIsCArzvuOce+iX6ymaPqTY8oN8xi7+wTvvg5P
dG59y+1k/HvShv4EUz3BHxV/0OhweeKZTNL5qIqu/b7D+6Pd82ojE5U6Z2Cg/VaPFy1TUHk/NMkG
bBbCN83y3+hXxVTVVc0x3XlwpET29oV5K+GDbJFstKnM5bWqgj68KrM3bY/PTtgmIQiZjweMhb4m
ANqFpRXaY1Zazd1wAYqJxyjznO7UUq6wIKo/Ubjn6v/w0vvwWVbAMsW1CMQrph9waX+0g5IJM3+x
ianc7aapfcx9bemxHnH9cKi9uDTU+nD+zU9zf6c5xy2LjnVy78q3uBoi3xb6eyTWgBs9ZWcEjhJI
iVnXyEF6YgBDS5eSK2dvF7vfMxnBegmnsES7E8jkQjoZiqyOcrSwIl56EeWCTuXDmo8gpsivzUNC
Emuwhoc/2Asd00psdTE82HwWo6Kgf82QZY1zFyO0/Zy0MqOmsMPPiuXZ7nQznrU6i9ap1goXqUkv
Prvye30e/+xDoo/nQ81gBddALquYzFPArd9PAX6ovabjaoo10dL3fHluOV6xZvproO8/2GhXlaJl
uVNa6JdB1KMc8NjAKr7vhbWj3SpdevgqtxwcCYKhDfMstnrs2PS7pcGL6VE0l4w9jcK0N4yyGLsV
2qkhWXnN6NU6wNZ2yJPxc2APY75sLxIntNEO1rJc+UCfQkYIlMnOvvFH/VFxal3Mf7N1BnrU1qhz
Dvm6yPVK9CW2efAEB5Fp+4eZwEMh2HfZsNCO9ImbDxPlkQiKRvnZa5q3inzB7txzo6QxsOyL6u61
cm+ik1nGqzr8UkDl1R2NvDoKOVd98yMvTtx9+2RwbUqWif+c7SRzVJYKwYKJE29PCJId4OGnQtCU
rqExpWEXcsB+SPJt9xMgeghEW91BgSqAqoOibDtDF0Hl1or5wcyi75FOGbPYE0RYU9+uykFtPPca
98Gm7r1LUEqZQrg5h2QFwxMQuo7QiMBLhT5XSxHngDhkJT6RzUJPpXU8L3WUyfeS6SwToS/YqXa3
twSLVOAhSL9hqT0SECx/1fqoLTq1S2oWS9znHUTPKc6Z8IFA690nxeoUaulS3WVPM5ogZrxKRERC
5aC+HEbEDIN1ocE00t91hERz5PNhHypXc14BxJojrOPSc+Zqi7ea32JGuJn207UsidS0LAUJbtcp
xj7talJvvP664a4sMrfWQShJRPS21GWfyOwQgEriV1iMZOx272pgJzGvvcoPfgYrn9hh9/qYUxT9
PSW1uTCxUoSyWL3oKJPsnufJMhfxcbgQ2T/vUDru1k9tOoefrFkZywSHLujUPmEFhgXBq6+ARpqL
wJXxPSqNPlRO5ssry85ZAXcVCUxDgr4btAG1c2jhDaePRmS6Kr6w01cFmNoQbHxT7D8xtY/aid//
MNK8hJ/bvNpMYiOEkuHPHg/g6mwCt7C9NonlTxIyNTAu/zq8p/feVJeX2Y/DBudLYS/ivRxycnXT
hvsXAo3onpskpEV8BMmeiOg1XdM+7VR8+nkC9/vuOjlBuEH5SURsrZ6VufAPnFohmYiWWDzo9b7u
xJnTh39NYxNeP0jAaMxA+oK7ApgwiXCJhfDTvBdkm/tl4/mG5KW6OrhcEB/K+nCbUCCJZr7Zu9Kd
j8GTTroz4Z2AQKsuYjkL/mqSJMacuIbq7SxClz1uv5WDFxbl7YBfJvAZiB/J7DFyOWuEs98NgDWH
eDU4jKO9D7fzDRI2k0xvwAc6KRGaiDLJzI8afKYcmSj5D9AjzQL8MKvBYxz5lx/geiikOGgKhXXR
QO9m7hYUy7Cap/U8ccyzYx4MLEYgLXzrgd2f8GWq4OP0Ivwr3i+L1r1XVUfx0yQTMp7bUuWPsTJg
JRFUNf0579MxNfy+TN/wO0gUrCSx5QJ0L1dloEIpoXNsP/oTnF1C+ikm7osalrLVo5E5DjeOUZgm
BkTSnq5L5X2P4I+JMLIISwTQJu+fa0szaIopIT6+UiF1Ha2R2seWsu71aAqRZPgHTmqe6kvUe5yF
Zqfm/zy960JL+E1iGBAY4Vuqx3MuwyF7HXK9uf3PaNh4f3XI3xfVB17A/UViLEW25mR9Z1/1t30V
WPuPfmv4zG9yWOHxPciZZMwS+vJQEjY24aPlDOa/ZDSnuD4bHr6MFgx7BLSI9rBBl8SnXhyVxfDk
3mjqfidh/83L4rxrBmWwesfEi1irZGC2RMUp3I//YbennYPcjkegI5vtamKWyqL2bQjfME9zkiSo
/WwkCdJHU2aBWQGyZNBekw+p4NYrQnouPCIO8E/3sIuATvSwEjhnpdxc7lt55TzMGS+42D1QxsgG
GUDB6NXKuIZRcbZ+SCvWHxConqw9F6pVQ8338SWsCNLKyJw7xFOTa3rPiB5Dl1mF5z3gGmhrgqUi
E8Ivs7ZsyZs2YBBqcDl7MTeOMA32UEq/rRMdkOqTKLMBOUOJu7laeMnku2CBMEKAb87ZXkD9patV
uk0n/3jhqPbHNI3SW3OvOPi/+h4y7MT3SELZ5pw8RjEP7OtBVs8bDw+LcJJC3A65zrJX1BgwrUcD
QfdBAzbZLy6TNIBBy2ibVA8s8nMqoDZc/TMJexfEAYxM8HexLGQ4xjiBv9XeVcYd7enEleiPxRe5
JqwDqk1yLcAmBKLTgDLKRLlgjxd8CP3JbLd/PVzh8QIulgZBA+xcIDfdD468qwJFl0z6OsNR3r7g
/g+NGIfp7JNKT90CIbRAYeO8bRYH3IGSv3Y7QZmwcQHVyE1tCBKHOuYXpEVnBa6DDJQDpDIfL4MK
pTQHNvpgdx1iQEoXtLI72apOz8cRi6yGdkITYYoXjqa5t/aPHuTojNcAkv0XWlpeA3KWDLbCDpxI
dQcHdt5brDKRX4lA9V/x16n7a5emo6bsFwiQ1tz+nl0k3bpOAL7bJ0cvQ8U/epAAgaa2BAcrEQkc
D2dru6dD3Mu/Iqkf4EiTEvO/FAo5isl9ZQkBMGk3pRJQW7d1SceCpz7kFOFTdIoD4uVxVgC8qXls
rlnCj6H7BT/EsXPeNW/WL10U8kjR325/eq94yrum2/lVg9+OeR4JX0XDTUr04lJbJsgxVGx4VgEz
4hn1z86nqrkWZ3Dk7gXE0wMq5RfPDNJOug5/ewWgXIs/drkjFDF+L1btHfrEegkMWlBXkGKMzE0o
DPQQXFBxRSvBHx5dmnnAskLIkx2UQ6RBiPaMfNe75FK+sJnE+LcOUSkXL5tglE/GwBb7mJ5jjSPu
SUbSFqGbtwJezIoNcphhrlCIMRthzL9pZUNgWRvmiB973WAKvkwfl+S5T6OCzWVj2mDG8C5+6krj
HOD6SwmSNOkADBCWjYllbkfcm/Nt4gCNqhswJ0QpyvKpIGgjJKar0gH/UzcXMMe1M6tNA1P9aDfW
sPSqa7NmzWNqRP0+VZolczatImLN3WaDvVLFl5N67yBDktRbZpvoxC7+r+EdzKEhZxhwfuIU0Obs
YsdR67mkf8dhiIat+eiulrBDctvC2jpiIoJhJKZfjawg7uDiUa3XphJTSzPiTIYzRbpz5mppdjxN
WzrUS2a/flFUf0gJRCPbgmDDJq4EInoUZKFYteJE5uQlU56oh4dmmnXQ8qxAf71YMpOCfdSUZ4yA
PxlRK4N8Ny8bdKq82z8ieRnwjOC2a26gjrxSSzAe+Umv6qVlMNeHd7/VgFKQ/jwwZz1ayrqkvbPb
vEEi8dS35UEWoXNAn2VB9gtkhBd7GAASMTzxO2VzkHHN+9Ra8YfKyrHHlz8gV1ceuATyfVisaX1i
RgU+VezMQvrdBhbWK/I/LrVQVVHnmKHCregyWlz5lN2iE7VGSj/s7/HusCjH5PXBQAtko9ypwqxL
MN0hjsIbU9QCcqBjWrz1a+YDAluu2hdKPQM5gY7+f8oRmTiLRu/2DjcfnrHCWCw+gByzkRDlRSua
En3gkHbmwQE5tuyO8rXF7E3FSdjVe0EqV/epLGb01nIpOBmuIWQ/M1Six+JG7PnMHAOtswIO1lNj
FhMe/1uI6nsk7v/iyg5oza5hE8kItwOBcUq+51y3NVn0tNUCGyywie0u+ZdqH0p6/m5LIOsp2rJO
ieKSpCVJWfF9oIEKLYnDlBr/sS5Bt9EtQG58K77gmUSwrseo4GfbaJBfdOhLoNkh6dWX4fnicWuS
L2sZvbCDF1hNcj1Q7M/cD5NpHjcwZYuz0VLEHW6TPC6wv8UPLTwTGfF5DPnN/GTc3UmjbBXWDGrN
Ej6OFfN0W1pnZBq70r38q5+6jr4L9qIYPEp+G+w42tzlzAQJx5nZfINvcwbGbm1CaiHfnqK6u3PL
GgpP5jf/CMgnKnXQt8/BBPmShseR0fmL//6SPVMssc/DdhOq8mwCZXzgc1/VT7vBPkH99WWamoJb
akG9oIxyX+/OQtGdUQYUfEiLcro3f4MoWIsBeq5bLZrehjnskVuF/l1aloJfoXvlXcXhSJRjQFBM
e6NvrmS6NAEhdRllHGCwHNTm8/XxJ/ipIovNIX/VEwjqwGohm7Nf5XKUE8O/KBajDXBNK+0ouWmW
wCR8W3sae4IuCzKeWjue8yRutH+A4+QjT/zdnsntQywzoZ8YLjp5aLGu68Q2W6u8DhSwQknkob0t
EPCX/NCVnhxJqSAaf3yw74fy36XXnifROa02WIahyJYeUacbVRn/XDuGRwKmCJP/bqM8aBbZ8npQ
uHzcxSj08v+TYvoxwO1qBZxGG0FTnQbw+1LfkW3tHa0kmqiW0Rr+CweESu0D2k/lh6iUfQcrfMwb
mH0FCYEa4bWr750vFLcP7FI66IPl+M/obXVCNcyETtMuom1pn6uV3kyjrgS9PWioYNMcZxFlEJQy
IjHND1rVK0AlsT6wZuurDb7a2x5Hm0BRcQlsBpgd1CKwAIGdcIYlNx/sgG9IfcWeKoNRywIX1M1Z
1c/mmAl2dbfCBdhrLnyM8GsOPMQgbYbaXv0aCeePQEzU/DqwVr9Hrrm9DygFVgniccbJL8XQfldw
FqSb8k7JuQdbgZeV9ExVqWwWWkTsoxHsqruArlLbF/19zxqcmfV6At/kHBUR6zb7b8FT3Oh3oMCb
YBTDK2+as0OBFh9YVn7LR9TTv6nzk+xxWyApdIOm5wnzE44baKncjgwCa5eMOpqLWBegF9FcVJKS
3Vj+Vb7+gGBwqKBYsUrQjqVmuDhsbOx6J8EP+he2b+rEuDHU2mRKMIcYtGxJH02pnFMsjUkGr2Eu
aTjL16UObHPYU5PmGjYKU2oDcmFjvIe0j1WXAfgagyLydIACMzx2SzJJl6yT4IqvCNdOe01fegBQ
0cTL8j5UKPZB5fJzfjnuHBwnfZCyuP0Rd3UFRTh56rHAiThRnmNYxOAOzV6oHJ7kqpsfdXA4MxDg
sNlfuYNlivDWGANPYTIgI8/PmCmk3ZezAhKmux7No4sV9ldrlPBJsxZcAYrOF9cQ6sTd7RiStzOS
x7mIwVCZWuzFZZV503vai4BrGY5K54gCFb1/kPVDyDjZdXzzz9/LPkE4V+SBOE1++PrMeBD6slu8
0lgNxuhAdf41eQIKc/JbnadI11DSnraowq++vuxgwga5woIFwUNzepTphS6dKNU+uVTsKxCmzYRv
ZPLFWM74ag5EeiKf4d7/Yj6kOz6ljg6Tr8dcQqIbnoCsz1jrPu5i41O7fv5gnySRiLQjt/hDp8CH
UVatLy/k+YG6z9vjEMJTFV0pE+YB6b6WZnBE6DBWu/vbW7CL2lmaKUTUEFyoTluPFi9ZrP9WUVmP
v3VvviE89fA3EZbebGOhkxnFH9UlUlxGfdtvQoE68iOxABB/BAu5wz836NSm1fozv1Wijuvfgt/I
gGFo3VgNzlONofE60H4Zhu2umnYDjPJIAbMJgoCbQTogULgBzHZJ1sRWL9cpfli7WfrZRY3WSQJp
ovloOblNHjgv0D+ylLW+yy6cUm95R1jYBmVaHL2n1hL4fR+wtJ4+XIYwje7e2AtpnQ996SE8IpKz
4vhA/+lgGkV+uhEutNpiMzUEyh0YVrCf3q0dm4EmRavtXDbcLw/vnaO3NpXJVsKCH9yaSAMEXyi7
ViCdROr8bTWoYoQ6EgGuIFRXpjOGnbq/AjzRZBUd0MffvGO0IHl/oAjo2d0P0gYs3prNdFqI+/1O
z3p8KV7N8ObOzaJAjksMw8UwWM+Gu2ii5mhdfWazqZmNmUNbwqXbHAToGNI1MuMBpgGU+IeRcC7V
49d+O1a3q8WtvRNb+bGfoS7gN28aVCuCeSB2bPH1zhTcW+gf3Gdke3JprFw/j+X2+aUDXklzKObJ
S5UFK6rYhw9l6vFUvSW67lMxtGnWPenI9q2tbXdd++NuW+g4x6bWl62pt+0KqG2Z9MWVMPHZOGa9
bap+QOQ1fl4iaASrA5M/1iN38V894v+kkvY6wEh1Fn9vN3mfKpK0wEq3YvmX75q1nUsKJ+8DW+rc
J0xigPO42xO7bxe+Ry8cHuWX5qCwu1kJQLgG3q43dTpiOkqEAD5TkeaCu3LLsqJ/xiAOORe5lfng
CvjowribIXrR6sxAl2WXdeKT/W8wPsdD2UZsAQkymjl17CrjeOeVf5pNib0O/YBLEkIm44AKGAl6
bZyTpj4Zc4FRPPU/U2S/UJRxbHJZZ9hjacAiSGKzHLycS9XwsfpExOO8dT9oMStk8jWoxPd5QLeF
tLZqO0aeTsVDR9Ex2JGjkTHWrD/eUOO6g2JjglhIXaMMA95mTacW7PrgtQDHGXYEPzQzfurjWwYC
FG6nbx8TMugWYnnhIBzU5rS+ymqERSYdXKJy77MmCAfcUWy4F7zSvFuLFES0yzvtghl2vxzcLqmV
f/fUaorZyA+YaSPb3rixTR1O3AXhspJ8LeDqJsPgFAzL/A4AgUUiQtbYF554eGDQ1VPbPkUZaRTO
mTxCAwZ8CsrcdTNerZp15gi3eATgzXQ2yrCCWeIMRQyXkhrejJi61Uu1jbSeOHlUtRbfQRFhXUQx
sk0A5CDxC3+bMBXSqBz44qBY4yyARoX8xiQOzoWa+eL0+ObiHjdQRWe+XnepFtvXbZq3C5TZ6xGe
fu80d4sV31a2RkB0plCy0CldJ8QNSbT886Tehemu5jrghy93Jgitkg7NEwc92fxXrK6OPyk6Lk3U
NWgZ6klpVDOBDY4HE/wA+/t8rnhZbAXfRScTqI/tjPMc4O3kjtJx88J6rMYnNzz0FEtDrnREZR5R
tdJUwTQTJpSlyG+Y0hfXKzXT+2LP8NGuNqim5BLi5ewAtSGKq7/qOwXGZWPTlXNvql4ECO8D8HV8
G1s5gBc5jpDBRKugbMfuYT4dwQXBd7M0b4m39Kn2FCBJoRImbH4QKccz93OzK2kFlU2GGQzaepAX
XZBElVo19QwKUz7/xGFRTVRyOrwDq3ZhYg4oDhWnh7BimmscQZ3ew0C2xR+MHyh1KuaNeTIAdJx+
Nc8WrfgVj+ZAFHdznG1P2tREUqSIQmTAVqd6GF8aktDr0j8NxgeL3aqw5POp+fhDVE+cwVZ6O38S
k/akjXMjEeLus38HrwlSFeMwSahhZQgwWVZpXLKmgw4GGRpIJWOMPz6KSQ37CKwQ7Oq1J1Es5G/O
jrnvXMdXN0D+VjRKxHOymT2rwKik9tjV4lf1+XU2WdWr/ruCzszU9vpoeWCGm8UJBUPuZXs9bHe8
SJ5wbPTcwsSAroCdIvVdmntYCw7euDEjl3DWYD+35otYRSChqiL3CPy8656Rzn+pbosJkBKKjoQR
F/qXz0LDKKy4L8WdoMQ12rd1CbSvdnysKFeUjXDSkxf9C+YgTwic6NQpVNIoHLEbrGkEUftxzVeD
ZvlSBL0CC3CHYRVpCtSeJEIGlXvNutdv0x9wJlHjoMSKtbfF83Y8LX1KFE+gKC7XEDSNcrEVm66T
HpuUaKklu035mKP3/L9EF7UV1J3PWU69qWg2RimtOdvZtQWkJ18OA1ZZq+oAaUk7ALACszV2XOTG
JbPiVhr0BdLoi5uToRB0hAUvvWehZRY0uakupCnLZTcOqJMjSqhitUrzI+UubzUkq29UqAaO612U
yPVCNkUgq3AKuYQz/yF7e/agBaPboWm+eO2Yp6MiNAfjOtdFM7aK6HDGCcCBhM9JADM/uonnzEKd
bu7egx+JJHjicsKd8rr4bDb3MLGSHrMUzKz/gxZYoYMnXqVcI2U8DCxGIazsWf/DMN6VkeqijcYG
CQ/UXolVsogowztMYjYNApCtJ1Np8vCZM2EQ/fhHdFOruv6OGpW3wrZ0gj5N4UzzqWvL7kOhF76W
vFbWpO/Y1oMJrOB4lU39aRcWvheZjlVh0OUYJoBBZFERwQFR7D5Lk90qzKpbCMLC66i7XFpHArY8
1XE6XRQKdTSRs3lSTztoollchuyn5PY1QgxafAmTiGaSkDSUGS25WdR5PTZrt2dJSACDLTdTSDky
rE0VQCm/aMSMdlr6EccLX51wjFILMTyMs0V8wU/7zLtCLRWSc7VpdrLfmGC+gZ2/SMjX2lkFBMqD
sbBRmb8VeAIsiGCh2xqIaYqeSKjBVLOSUi/FoN6NiGb/M4ER9Ca+W/Xseti9knRwVW76wC+dprJp
ye7E8EjK377y37NGaMu7ZyauqCETrD2677YmpjLM70te7usFSK70a1v2D+wvvYq61B5vCQf8mUqB
b9opYmieIjJUesptFOB9ExCwieRHcb6c15KiRqdfdVIWPfglMZnGZSxzJJ75Yctr2gIeJxJtgc41
PhAbOByIReq3DwgSiiajXwV0RsCovgZ/se7wpP8x0Hs0JoZaa3tshvFMbGMLCxW57P0HmzgmsJZk
Atvu2bnApIb0Uqeu+CpUg6jQHR/rqTCvbtgFjUmMywCZw3g5beB4FdNBkC/skCtK4jzVzk78QFkG
dkoNANNPPXNJlGXL4aR7ISHvdfIecbRNdOFc5OGUpEMR/FhVb1MSADrRcBU5RBnsFEOJS3jBWlV3
EwPujkqmR8EQad99J0p/SSwnmYQhKRnef45cD/Fmx/xyA+Y7sPqMAhVN+K4xfXm5vM8Dw9gXjebA
QsVoUbhuVUXr1JowKSNkynIu8WvDMjNECeECPhdEJJRhXQvXhrGUAiaIOBpzW9GnVlWDS+X6Ze7w
ZbrLnluy+6GUOz0eVJKx4i8O6B8GoO/29VLHa8Io0o5PWwyWquNWAJHdGXzwzL9fykjmrsuS/3p5
+HRQNFfBiT3euI4lWcX1lhDswnP/dfTiI8peJyKZiI/lbUnVhePnSgGxef8jI2nqDDY1wHF0D5wl
pLLJ0r0Abu25QYnXBUW7XBGSTSAUdZEEjBdq09kOiqAZ4BQQZuP4pzzx+QRoFK8VnZtjPEc8AIpn
rxXJz5rHR6bVWnBS2CENWAeVE7+ZTf9ifd0Il0jS98Jv0afdgxoG5P5hJTRjn8U7V+x1N+1oqADs
LqJL80T1jk8T2SUmaUOhDc3YAADh8qFwOzbJW5nC3PUVpD1lnMDZ5snj0kFCZX48YquOMxkZQNKp
I/wtOZFZc5FwCIq7ORBqJBYYe+7fFsUray0V/t3X9ToQ8v2ShdMZX2ReM6gk4xPbnGIJ7jgxW9Mb
snOXtpTsLCfSqm1Pd0l+LJiA0jDKU1dPONTbBZiQNS1EV3qBizKuGvxWFzCXbUEHiLRIvEcjjWSM
ju/TzgOXwaOxLvvXZJ3TKMaNqvC2CBKLVKe9tkRcSy9vF+hsphpDfOsmPveZmx8kKIbTrqZuN3HP
H4kg24uaZ4DNGj9qsWEYz1DkqleFFFEt5w2NhJKlUteUO0COzWx26vYNRlIXdwzB6cpuQjCkAv/I
oipTUGirBBrbwWRCZbil9t7MXPMySsTNFBaaD2JyLj3uWr+eswHoO3yMbjWsS3As08ULedeI10Ha
QtmMWKJ9GOQg1vCdTs2zgiPEfJPLFn+5YHeNevrW6S5/2dWR3z5X/VeTmfKTcQyxe7/YHT8A+va1
YK25EyCs5XFwMYUju+LVryHSrN7OUieKYtUi06NtdhgWV9x4/oSfxuGtRZnuLjcn2cN3DcaPEuO8
i2/YM5PYYs13DNXqmwVTfgGrztfLmKUVgW68SfzczXEU/axXbwQ28rBCYNT4M107zBHJc7VDYIeW
XPNdLskyiOD5sJXYdl1l+OZpY7kBLD9jNv/9i61naFOVi07G/m6mgBiSdYsed+ivNMzRPXLB3wel
w5CmzNrXIUwp3PCFh82I0p7OYhR9y4hIfx8Xkd7EJfehyybKeN21bbcXHQRyq8SOYx49f6BsOYNC
8G6elxrKJqUjS207bmd3eF1JcFUKZ9m7MptcoZcsELkUhApnyZOVFFmmjtaOC3uqI4Iq7u8YzB0J
6EO0/w9RcIEdFSHi/ed1bhhtlXt4FGlYI3FGQMv9rYrPame0YtXUTjtM8XOirW4Z3fr9xSjjo4QV
OeO3Q6jXHfFMLnWzEhgWvw0knAAbCLDHGkJm22McEpoCqs5zlKq+6/lbOfY2cmAIb3mWoJOUoEKw
TNoawodvKMAY8M4kGkeyASV55dKMaPvH2s8WiP8/SOGJTj6ofh8NY/zSBwR8O1DDI/BO//fDREYW
OK9BzuP9nrv0hcIL7WD/mfcv4C2FzkOfXvcYLWRYJ9YLb8ei6AY8sjnh+RDxUyCIN8bzmuIQDZ0N
FUcjwyD3pU0OybPXzVjaII3zaCk8K0fk6rIPO82MyUs9EW0ahUX1UEncxj/ojbS0WJPliTXD+Bma
Q3jeiE7Ze7K07MJlGjsTfhna5HCX6DpXo1sDiNBRqF9DwNWWGeO973dKg8DNujtTsV1aL2jsO5A6
ltGvm5JoOT3G8/WF0Q3POG7cDacYYfnUCPe0GEotI5vtD9iIFXQ9n6n5HyDUsb4URGHJlhBm4cmG
fxWnKhsL6Lfu10oTriZdEHxkIoVsLBAhHNu5TXtTqraTU7Z8KsfbVskWSbCFCV8wHcIZxybNLrNI
ev/gq93Y5/JN3tVNPkQVBDkH/unVG9GqqJicaT5Qp6XZaRQZbQNXalGusR2IoGHWZL/N/t/nGmNv
og0cAubRAWt0K+WPJYju1j6YZVAdrWU4MrdIqPwq/amkkJB0FtNTacIaB5YDr4yN0F8q89cPuQlE
efdTvT+iXh76nRiqks2Gr1mUEeeF3S4wl5ayszdpUWFyf34Gw23ze3tH4hbbv+Vqx6RZ46lqWn40
YL1UFvJf+8MWX2iFL+p8B4yniyNCnp6743JlFg/8Svi/i0QZf93GDL/trI6MZphnpe78F8JkaiNi
eDQeX8Dzh4qy07Hjgd2lYD+RBA1r5YZ5OorHvBCLo/UtieK6hgEpOsm9okA1H9BlMoUfB0whjwdq
Bf8LyEUHhlYPVhKnlJB1X9aCNUg/61g7Laqe7RAJSYCP6KyNRlJopxDu4nZsgGy7k5NJVV2KX+qz
gV36Slk+p4lD415IBA/ebOBtYeGcLI3QcvdE8YduiIhmw62nLCgpc1OJ5LoW/EJDgxZIpsmnQSW4
Rd/suOVB0n+MPsSKBIpnDzXW5wnXDYCuqkUvGYZZi65j+kOyOKkXjFewehWTJaYzm7ZYoPgoOGkt
UOhAdDbnBofTaI5gsobZ/7gUr6cueXJj7ORTJUtuv46GXuONscu+YdX6s6HqL+EeLv5hQVfc/jmI
ADASkAhMoY+7SL3l4c+GCBffN8ocFOKu6QNvuy5UJYXIj1/OOLFFBxO0JiaJNZw+tafYiwm7LMcF
v6eytPIPcWoD1ZVjZ2rG5zwoe8Dg7ZeAkK5kP9TEO2H5oWFjgvDjqlhk7BrL0HuazpBqsuXXNutd
pwaYQTuDASgUWEWiPfK/uAB/MJunBGqA0gQWBGkByTdAekQn76+E5DwKjlPIvSAvwFF4ADkK34E4
imfJc9avbD4/ZTOyuCZHzs409YMMxsPFyrLITbBkq5ZBkDFsKe4rTXeusIMUhp4yGf6SBpkOfVoT
42RGEdlWGIUS2K/5yTACNkreD1P0ePSeawYglJ6etmyp/AysVm93gUNmLIBo+QbtxC9yciEmUjTS
ZHItdkmzQCUMSLhW3QRKbE9+okTK1vEUb76HTKzqlMigNpk6nXdLR0IBCykN7bB6BbNmVfQoEdWm
Ayjq3vQ9ZphVV4eWH6PxB5JyWRQ9AQjn75uO2p+BJAQslhZhv6uqlXTYnKVpxl6QbYHMBB2QCNuD
C24cnvOUiAequwAaHHD9X5JNly4dK7RfCh7PS8bx68x13/x1DMPRps8QBfl4nd2XISAkznFrC8/o
xk9qWrGT1HQiBp7FNEd9Pk5rIKyZsA82ymI63EOlTUJtuhSeMmSV9INKOYxo8mb6u4hxrCZHPvij
zYDIYBO+Gf70WjUQZzESLGJYyDZeyUpJIeWY8f4mF2jIgq9ad5MLturHL2Rt4FCh/8GhpO2Ziy7c
Z+Wd8MwiDo8gEXkPTJpVuMGbzuMwTT3eVJqXM4Tava6DDeLpcOP9AiIy0U4jzbQ21zE5pP1YW33j
rKuIqAltrzob+ltoHYZTapzSlInLJcv2ONeCmWGGb18OGGjCNFhEujM2is04vXQ66J35NgpXy3/S
D/LTZlmGDT9v6mIX1e8SbLCnqAEC7fPPkp4e3+blZRLMNbzEbUVmxnaSwf1tiWWVzg8cSz7IYMGt
4vxhaZig9trtBDFLD736u086XK118RnEanVuvrTfhg+Q4rZo/ZlbUKIJZXU9chp+vi8IqXVoDmQ6
k5rO2T3lbCAA7zfXtzA4kIJscnR+tnurMnN9yB0QhpvhjStaZhzziwECh+pOBix3EcaoBD3WPeGb
O70Q3GfuybK628VO/jgPsHehChPp3k7MxHVRciNz+uE6+Dcdz6AKVLR5jgWBBNTkET4yZTYiUYx/
Ok961fAPw5tI7gvFIbVBzC1TxHT2UZQKAT2SfTbs2g3ZVJHAg8hyIadQPNEzFkI+N1QiSIn1Kt0k
vpfS4TONAYAz8cvHOegA3wTCH8s6aLvNcmei9hxPO3C7y8tnxpgqmwDW2Vewd2l/idfGzxx2m6bR
a3lOct4AG5QkOKvRQEfo55Nz9hHu1kblGpe4Ymr7oEvD3H4bIBAVlRh89CqATZq6XjvYA9UKj7XR
beEPzRo5ed8XG95b2Q13GdnjEFvS8o9vTx4cS3Qj7nQ5vibf4wgDIeVZCeJkjOm/bmdc6eVVF+1k
fPEF2UDMoHxorAyuTsxvELRf4Pq9w5xXj/ueLmjzRJ9akLTt1anbkohzFLen9RMU/e2zGDwS56yO
16SlaFyTHYi9H8Mj7DbFWom2ObTQxCDUzRwIF8G4fOIm3LoQVr4nh6Xb0wCTJ1x0cojvPURfn8+3
p4wC6BBhdYWJplqdTa4hEhXeMdSca4vAIJhS+wU1Yh8BIe6VKTTpNJiKaymdknTd0uGq7+uWky1c
G5kDJGEs/1sUdlocwKHPOmuDnFiSVVgMfhN9BR3LZNeraHWOBZjVFccV+mEL+y2+vHKtwBnBZ3jK
Xx4JAQCt4C03fi4WCVK4bLFnXJm7RsPPFomwfmz7mDU0NaRHqyqLtOzqLegXq4lZM0vbODQr4R51
1capejQJMgg0Hz1uoAmmWgBNFcBy0IRqdTl6+SZhb25uiXdhDIhYdoJ+OLhvdy1ggcV/TUuNeXkz
bXsLftnnOS+ZL8MMMhBOTUTJ15AgO0AJa3A36niG8vq3BAmsMSM3oP7Wvm/yNhpshKX4e5mm3hie
JM360CymPSzqT1vf4rVRow3aLer3xmvrHp9uEPRIEzCMiFMPgQnKWmaN8FG2IFKDQJ2nCajUKjLF
1UlbqnoUTdsOn4QUXGZnnbVEWqE1H6mDiOmuW7vGmOrsFcgwCSavymoUhGAJ/DNVUPhR07B25DFm
t1oG2i9vYBKOF48flN2zZ3j0mgRHYIWoZqTXN8aw/d1wYCt3u2qSo3PxjBhrk0Trrx37OwMEaQzz
obXiqxeFryQb3cATV4ziScl9dHuriAFRy30sYsevtIHNCmHCBvcNpZyst21Zazo95MujXWatlljR
NLZjvhmlp5Mt4MTUkXQDN0Fr0epxlg+V3Uaj30u9NAV0JS/d9BncI3oDbmh7i/k24zvNdxTisByX
5L8ZGSIX41VrELDyco/aaMMICwIt7r/A//9k5fTEJPqNj70mJQyUVlm4HCy5BY/gyiHp5PJuSMfO
eRajOXQFOHu0qxUHY7oDiREPpGOMb4RYCc9YbS/TrwkRGzdKh96nEDKkpP5ofCWUKamewEMaABEO
QWhZNH/fmCIul7Gv8zh97zr4c3SMwrjZv2/RobYTX/x6Qrd89sEifJm2iR8566ElZItAm+7DPJTl
ssPrzotEp5fxP/sqnCWONYfzUrdefIyjIwcMc1W+otVzXnILb5Yxf8OKEApkNj3oSLrTGOCs9cx2
/oIJwXUvuJoIKXHT7sW4cvUBlGWkmJkOo6uHq3bS0bf2Y0/WF8pA+hzSRpfaNBlJhU9fhOzN+BXR
bAFg5H00Frr1we0VC1hmhL7qhceXrvXSyxErtHsb7HGra7MBo/rKSQPmN8Vs3hf7mcTBKE8eFDcU
qRIkRDLbCNE7QQYVmHXZ+jC9vcf1NGKcJKi2GJmE4EOo+iEv9ZdlFKFWCI56sXAACnpV93CxzB8I
3gDEd+6RPqU9POvJLl005XUjOqhjR9D7nni1TX0ATHPvpaA4X/bLzbNvmERnS254jEE9dT5Srkq+
bdyt5N49WUdBkRijERQhBPz6vescbriOyDGJlWbOwL72xYKF36dJUBB7sBWru4FDRRAdrFVS99jl
UdsJXWt+Qk7+ul0MgFAGjikPM9y23w9pAE1F1AxdpwzFnJMX7VS3M/wgYHR7s8k/vxkxg1zZ260j
E1n5io5Or5/cG+mur80+ZnRjMhiRDTYDSVAM8R8I4fcctNtEY3F/+gG8M5n/Hnx6IE8XsV7XLOQM
uQG07VR8ag77l7aiUfFnMHAnyfW48p+PVnDKpSJdFixtXuyiIrprENezTqTaX9LRKQEDO1ipTQaX
yB936s+vXG/t/45TWgk2bAGtKT0K8MPFMRIn2rsTamUSzGzRYJ0EctNX/oqPFBXvuOmsgupdVqGm
Vb3YeFrU3+2ywJewBrQuHhzLR67Z/dQF4ydRkFmr9Bd4fqw4WbEljOrweJJQC9oncxoZxY3Ztzg/
rbYZ/CEOMMdsN5pCCTo5CyprzJuCouuVrHK7qZdR89QQK7u4D/t04ZIyqhnblMeEjI0V8+AL1wXZ
uSSMR9xnzjPHRKkqouTklDRwsB09s+fcEWVjv5+ZNYJORji6qVaHU8B7gPSJEFOvmF7Xwa9l+uyA
wMBEn9f75bGxkzFATtCySvLa1HjjqG3MEzoa8Dv+mPDe7fyTVTEuSBruDE4vN8W1dKN3KQOHycGM
lovHb6yM1GkoVPEpgd+VUYCY7AyyV+AIqzARVitIUoi1QqWkPWh4F91SihZ7sVnT5hBdJdDoUkxk
bCWW306oLdlaoPiKRKOAQTpwBUrb395uWe7jT/BjjqFT9cYZQW4Frw8Q/lgY+8s5F9McRG6VG5wd
hpvk9s38dWMZoBvPJdeniaPxy3x1fCRiM1ErxeCOsZewGIZBHxSftMwbxzy5oNa+AYMXXAYjbGNa
3NGVsD0sw7eA0NGSJzlRkxArZcFpgFcftzX13c2SFDZVo0EdMQwgLMi1AT6FSEoOTyk+Uaeopue1
Ix1nj3ayu/wNqxrG+C09hQSaVq0xh0WFGkkHHPfYGjfrc3XFvWLluoZ47/mjNmYJILYvOFuWGW/e
PtDBMgS7Ukq9fQzA2Fypm98P6Rr7n1ridyaZ4b8sJHMRL3iarz54nocTN7QMfO+NvTq4f1GpGKSP
FdWxOBwbin/mq5u+fSc17ga6V1utlCpXQArBicqCq45WUrOiYfw5yN4VOfvAEZtX3kYkU77EJZsm
4sTVgqf71vEIOH7pnbBSG6jO0AZuknfXaSc0BkETt2wMjlDSx0u8l0t4dfVdc1d14Gx/ki0Dm6Qe
tnmG2HF3CJlAMTe78FYcB7vyLRKoTXOOR6S4Rm+S9YfQwIXyNqePZqBmNnQitS61KcJHxgoGHiJC
x790RBZYz/9TPU0efAqKA4UGHp4kpmBcJAof6wWrknTsVhgsEDxiId1dnSbQEfkhYcmleTFcVlE0
I5qNOHS0iIwA+YXpp2HPSnDUfV44cslhs2KApjv+Ua85gF5Gcy8Lik/qVjDoQ/+IPQBvCqlkODr4
PML7Bab9TH860c+hD3z3Ev90/rmKCxwj5kK7oCeqn1BGVc/pnPb1ONFiF5nlXiAz4Su9yFEZw9ST
d3k2hzYLhthMTvtEL04hTTzOJrPPCeGW8nPWa96U9ChMJDmEH+0/BM06GrXACmiM18ROY12wEkos
Uuycu0DJAIxXOX0qktLyXiAJqc6fMq4NeY6WELReBGIhIi6Y3qefgMESbmVRbvUYqY5BvpIMiB8f
AIVdo04nuIu1SPZ4kFSb3Z86CkBNFViJc3SI9gGoVTGwSEmA1mG44bkpcHr/w5ImFigGX5RnWfkL
Sv87uBep4ZYSMIBovUf31rCMOUlcXdhem1RqiTViZvPz/iMvsWP/HWXTO2HLfo/GK2yaxeW51hlX
Pg+xbmWeTyNNp7Vqk6z7ROQqWPPY8FNcp8M10/80rwxgflhOJ2+C9wD48J22AxE13d69HNPgO3MR
Yo3YhpNmVj4ZB/hppjO2yd50sVKLnKxLAiWU6NsChoA2mDcWQLHoF6mKPR1PCBU3lEYOa2gUyytI
MIk+xtRndl6S8x8NtxJCN1JeU2IwQPRUVRLQzXccB6AY9TSYia5Mx/z9/2NQA10NTM5XSnkRAcVm
KwymI2oz7ccl9qiZ21ts5rbK5mLWx76e0O0PBEg4YA4HACNNXBZA3gIE25UP1J/RrCTmSWW+EUuM
ChSVE5TyW7k3tNsLEECuQwzHZD08pMLUCstMccbgb34EOtVdQZN5dVTj32tGJ28Ow9qCvbDu4pvC
2SKrLfd4efbtH+uEpSvvmdmr/dUSMn+58YMK1gQ9NCEh7ZN16shwnbrt+XQxq8ce3m1nRk2fJ4db
p0rIrOF+HIQD+0b3hwkvqYY0C/KDaokMlJIjKPguet9o/eTx/aW0+q0cDAwWg/7ALsNmO4HKpkB/
wd8xCMqpt4wa4doxMnYQjLhDa/z+JsnWTd+nv3IGVF6BhXVo1ICgoAlPhjHl4Dr3wylFuMPIFx0e
x8+kvNSXL6p3L+cZ7dSoXf28Z7iVuX000d0eoraXS0noCFO05B0B0oGulYyVJ4saNIfdieYzzWRG
A+pNAWPc/XWTXKhZoqBikXMTocRbDXl4iItOMYQ5pYFLsw/lW9FlNDRKuqcaYxSuM08Yt+g/VnPU
Se1jQwP8NdO4Qlb4tGGiP1mnM6XFOA3EGW4OLp3d3PU+AyOY9RzKKu3qj0FV39y9gn2lUmhfrId3
mCDBHlm/DD26yaXZ0cyMUVI9LRnxtlgQlYYjZdDFFdEhSgkYqSztFcpXkiJQJ14KAOJ3ImelErc0
Fi/UuvdI22PG3ZracDYkgVIYVTgqpNFb8+cr4E4RMhKm8db0tsNMSRtOB32XljyLK3x9LBxNM//j
EKHVwevfASm3lXebY0+ze/kt/pzXkDHw+4qTHBFQ4SV/fvq/N2Yt6Pf3LaY+7Kwt9dmt1EuxtQU+
qQQ0VLL4aqX8x6unvlv2NvxruLDUUTrEWDn+tdcAJcRKntcDQgpy+SYFghM9ryuY1EOrk8L0xUgW
OlvG3HMzgAdxe4imwlKFpkFcMrT0RkDQ3hGG6o7Np+KFaeyIZO/hDSDCEmzW9J/hiHAd53T0WN2x
tGdoSO+Y0iSYXDvxuK2hKd8kk+/Ys0FslXyQQ0bSO+4VWpkXtj1FpmR81XP1tQtK0r3Bbzs4UjfG
ovn0721oM2Voe6SDvMxmchF6xEZfznvaGq8UO5jhC2kas2PEbD2JzsSUeu+DwGTL5xNmAI38OTr2
0GsQQVTvJWIxQZgWu/miAA5kLeNyXEb7dy0xpsMfZjavb9XA39SB78CafMEr9S0yxXxGo5LHuxfa
oSGsfagL/+whzM/J2X2hMMLpys4HgFA094Ssj+BxXYCEqYJnd4iO7pSIYUsaKPMX9Ytszgeq/eyN
AQBLsJuVFsRtEF8btTMPpf2q70k2zGj03vPUw+pqxhTcqG4LZvAIa/M8Fcyw6TZdsirPAkhHVx/C
7J3/u+zbjcCPmXGtHEHOAAu9OgLWYiGfHTbsr1MABmery2GNFta2bhHbnuQbQlvr3/X8QoD3SJB5
PrWg2NNU9Ju25026EJu4SdWi4Q9MB7KoVcmezidtcmGGrM2BhOpY1Od483nLzwaFC3nh6Tzzmoms
b9rkJ2YwQunDrJNQ9yeuGHWgdEaPjPA94S+lYQZ9otyGSkuZpF1LUd2ukeh1No6Zb4BZUiJA4NcL
YP3DItDcLK186J4L4HC+SaMX7KWw6K5zosDQb41JdKBBivSJgzp9To9eUH9cJHTfjD1oyrmb5qEm
3Ux4dhE74yhU3ek9miwrG1WfMMOzXDauCj44GZirqjZkk5w2YGkl/l2ngqyiYBFIymSmqHV3/X5y
lYaJ+N6H7ux0P/PlxhifL4fheT0qZpNFu4dECRRJVRcxpSj5K9xhthNI0fgxi1hK4XdY/GvtUJXT
YpqFg4KQ469IGoJkyKfzLU/Tth8k3DoR2UFMgL8SSEJ1wQ8WFfrPRTbUxKWrp1JHw+iGMmaHdWFq
57Zu5akFkO5dRSVnOcKf/Bts51K9rOzhoK+lxBC3yqalQPOhOBE6U4P8prptmvxRO+aVq0Ker48v
g5P8t78hOsgU3G0WATvY2CYr0TQfdGJqEX1QECz6prFwKdQ/Ei5Ty7TulOZnSFM38fp42+sicemr
ltY3bDURuuUg20Yne6/tdL1Y1xDNk2dFaEth07Ytan6lg2Z3fBRPlnjZTNZFJdJW0cM861h8gGkg
iMD92oGtnhZ7FCTYlvuPF/13exC4puyrAY+NghF2CXYvPm96ekG5J6Dm/wxFpt0Kb8nEk2vfjiB0
qQll/8ocPlGvJ3nDy16Pz0FGlX3a4c6k824CPxrqRau2d9HCwOZFcNKHxVre7C/NVjeLrBjlUvuL
cpVkmcSfU2+eG78J0fLTSS05QWph5EV1kM0HsShKxlE9/0JdjO58y+rlGnYjfEhvQctJ5ls9e8MO
NLWetbxCN3Qp0F+j+pEX6TZkzS2ackQypE+oQgAMTmblIsroKIVGiExczYE9jZysXYSsAMd91F4n
MORZhQ3kPyl+tQWKihU54OLbPJ/tB3eFVT8MXfonsLSjmhwHjiIYTAiAOkLYH9EO+QV3mUvM8QXx
k9+fl9gKr90EdFzAfxXM6RMHjISsVD4ywbfxJSyY+Od852LNfD1MBc9hdBgxnyDNlu/BzR1wUSkz
HEUrrZuhlFETTGHjQoh06cc7A+/Jcr3zMM2LSPQeAgG29vuBetIOsCCdU3+jaGMjenacv2CL7FAa
XyQXaDMV5p7TeMZ5qS7GM6vbywIhDn1b0C7LpIpxXm3kOUbMlq64OwlSnnJsWE0OYcLTEvOAhmBr
zujWHKNlF7c/6wDoBj+GNDadKeCvKv6Xa0+Z9kwPyTxu73Q38gdf/4sRiv//46oepUy9immyvs9m
i8Q2FU/eaI9q+a4eYXB6J+tt3POtFV1yxZFeI2EorCCVBcX6UfO+JPXXEelFJTrDRYFD2P76XPak
/f4OaS4R2SpZv7RJK1s0/kqMfc9oVDvhQyESosBV9PrE663TPZWs2NTELdhKoteeLFTuwflCdTSo
P7zbfEkR6BiqccHle1fMEQBmkrlv2Uc/1Tu8mZH9SRXpYJBlLb42r3r36iTY+7hSPgJNWZbQyE6C
0IZlVQoyG7IHwaRi15R5cwlcbwPbMCg9eHb7SJdXJZoseCV4xYfEmhJ2IFETJ+LOXMMbZ3FeaBBY
h4n5HTzh4IvCdsCAtYIUOZtEnJOQ5AP4q0v/6LygazSmYHu+ikKR+4X8WTZegM/gpOXMwO4U/vRl
CYKWLl9JRxTqzr4fuH/82RxEa7vbYVXziuKGMeN09wbKPewNk0OMmCxoPnx8JdGu6VRE1XfXWlYX
QMVypTAGkVGpSI7dN1nD59VE/2cLUzxTf0Xnj/ofaCT9ecPIKxFFgcwIF7ZaSxfUjjt/5YUUuTyl
esoRsAK/VJtG5Khn1dBkO7fwOuSqhs90ZKcv6IdF1cyfwRAd4GHHf1WhwwI4w72WCxWFBw3IxTnr
dh1VeU4y3PC+7Mwnig0FNYc/T5uIaJPwc+H+2JagacJLFJzALBpYSHa8NcaxMQepEJ6ggYSVp9Dx
tI4d5yUUtwDxsXG5YOU8ZzgA6mTG+TRLPPYcfbd6RASqi1CyMu0SFhBpwRMSwcBjVzmvKwsdYOZI
Dw3ztIrqxyo3Q1HWW98bA1RS2kNZ2utFgcxQAkXSi2Hvrai5nAWMiDuNIQx03VCQyUKDOimO8eBt
mhqt3xhBkjYnL8d8MVeweUi4AFpdj9F+7tVB9Sr7Q464vqgkzUKkTnbW43hKRbbe9QFgZYRXEEMf
kYrVsr1H49o1iML+LLfnJpX+/B4nO+dg0sGoYK41XMXJfEaW0vzyjDS4538YFNBKL4TGAD3aJJ5c
wVfQ5F3N1KbhA/dMkk2MDh4rBuRHSrSTz6Hv/vlJSpYnl3JmBmP8mDI1iAMQGlWAf35CEzNZ3BS8
4AeXLLa2aqF+/96dnpgGmY1MjX0VPNheZ0P4FuUMqcTKLJcgDip5U06BD7uiBKkB93QKRynX7n1D
orrkBdcrxtzP6XniPMVADuvUQVCpjN7Q9FtOu6Hx72mblu2ROReUl/qn8SZzCoKHiywMWX+xCwP3
ZA8Vo0pPGmKhjkVnxPwg+yDnE4LzLDtFRTTgLcqXzS3feIm2OJlc+qpcBjrYvPC/RuQmHNA3mUcE
dcblVMuQD4u8L05e3w8jk9nM5hsD5xfnKa2UWRHUkHNsAcULOK8YOmaJyLksyrv8ms4Yujnru8MD
O2mgMnKcEOmr6Am0PzeePUrlnqeU4HGVKQ9MN1zclhh9pN6865q8Ms6SwLbkiOgNgMwfHN/GUeNN
aAJrwDweS7L3UZ1vzQSpCtz7hUW8MdOHu1Pr2Vdmp7RMotL9RjQTmaNEldq5DX24ahdVHcMgHxW7
ag6EHPuUwXJ6pcnXtX6Pt38BXJR8nf3BXuaOdTz7dZNXV+HuugNOCRErdsZZjv+JDTl00C7TyEwY
5ROJqmN7rjyy/1zrrmp/FqAfeh1J9LpLR40gaQtG+Zvr4Ol9zHDEbk7D+wSh5reVrJa1BGQJeU5u
/Wd3Zyi8LXU4cSxjVQ1qF1UO48WSAm3r8lbgQImt/Adfr6h6A+47DiLGQzQvb0/OgYxQmVDNu1le
v51IfrL9m4rN+gmwCYP4isSlhYtmwQ2UNXJmqs+JIzUK1+BLC4JAgd1q7t/WSK7I7Z/N+Jd2w/sv
5oGBntm3CvPwGmBeVs5ep5IkvlQzBNlrFeYvycBb7P0sHLe6Icwwt8cug6J3fRp4ctZ27ZLNGWrr
heM/2TeM5I/S2IStJaUPCWv6F0El2EI8rxX94jkDUKp/dp0OYL82fokl8xjeTuP0aPcO4veHwcJe
lVEelDbkX/Tyewd0wOZPjFypHv75Dbtn1/m5euCMABxEdWGh8yxo0s4jpXQFGBD0KJW5Cl4Ex2ZO
j7t0Amw1lOmJTVysZOhwk55uM4f7EictsvQkinAP7LJAz9VzCcUyoR92etSM6U5A0TPsx1mGd9Oo
krSfMtH0gD7bJUq09+c7mGZ7ua/wrP9mYrHtuB4x0IN2r9G1p9VADYm2eQLFkwWZszK1Js45+qen
RMJG8bD5NjpIHRtiii8UcaXMpcEEIs6raYt/KV4zVZQpY+6DLOMh56jysvQDgJTAT11+PTKpTUOO
dkTEkevwYGvD3OMNIKZjt4gaZEWTrPE+VzNDqjxVyhxjPZUFvNaC9sCdocPp5mRbklVYQiCEWF1e
kKBbj6hZFLYyggHR/04TnuhT2RuAKQQjxnjRu43UPQ0gTOcKuKDI0SNgppeu5ehFDuwdOd0a6Ryy
mu0T3vayFdb6EdMh9YbNjlmg6ihsdBPApbU7g+8V/t7klRzFE8vOymP3CUhcbOMDKD1EovVI9VDd
MLJollMo7rvqEQYlzpBRDhLVt8QQ6nOmC7/YouViNrM/6KRRwpjLt2G8pRygZEadNLMpjIXG92ZK
nsLGj+Sh/r16dcTEZwvp6cYhCq+cVxXlZ1FAvIfGQGVPfrHbwS4tHlOBY67HLaNzUNd/+8FQ6Hx9
i9GNfgd2PSCkn78m/up3YRKt4qLJzDbCe4OaGXXbQU8hP+43a/Mi7UnmMOBePnL8VAv8PEmOQy3o
KvL2ribVyA/JFjT+VuaoSMae1NUBLPiQyM/WxUkFyi2PHOK4FS4ujG8p84W7zh7RExGj2z86a81N
0vPcM2lVMkWBj9Cwm8xuhZByoJCUXOgTTYNv5i6j1VBkp+DZzozbezpL79Hs0VIJs8r0RF0h69kF
XaQsFtQmu1t3bmzSaYWTUfTFMWxDo6lWxu/yGRv599zRqUbRC9GBHvJ1VTG+XVYar6/PnuOgtZoO
QycKJq99Ce6T/5yywfOJc5yB8OdzV+M0HsMUaOjcK6fDQGGu2epfEWuwzBhWutyJYYTZZNOrN8GW
CI8YCXNdHaRm/jZJUWZvRfYzsbGuVb2vP1AioZ9+Omg4Y3cvIoM+zYxL5Zk54x7niSb4saNRfmw7
Yjahw+6T0OzeIRl2eoY5DcX0QcK75hlORHcyKMN1hnPG4pv5KfW2OMgRFS1FLFX4vg95co0aYH91
WOF6pphhQJgRoi/bBxbdIxshIo1tuQHa5gl+R8coUyHAgUqJ4j+24AWfBLhD7JKLy3H4wX6ayb+L
wlX/SB8WOg7uGVFOlVnQLb5ooBZr2KHgzYLGFzlw1x+naM8UU6dvjHdjQzkiyZLILh4xPmk/28f5
O3uNDC5RIQFU2WwFgBUyI845wuOO2f13L6xJVgsrGtVm6Nj1Vnl6zrKzN4tCuBCaykCU7Bhna7sF
sTvG/D2r+YL0WtbpSRkKsfAa+jVOu/2nG7Ps/XORGRq3h37j6j/MAPPYSzUqlTLB/Vg+kEif3FXS
/PU84Uo3UPgDDzbxIQ1zZxVUK0SpCVxlExOuQXf8yi5u+f6yZmR/QSmoE1tBXO6v2aluPcU17cf2
s/ZI8a1nuuNDM03kqazS4TUU2FdhYx8ZQubCcHxz5WwDs2mMVnqddjGknAMlmzafDeEks7+D8I74
LwrKNGhnnvocIyahoEgGa5aRzsdrlA3RQ0sJJDRWW3URpiyPBlrpYT74IB4hcpBbNcECQTdbzdRU
sgv2pjqvZhHiQqgFq8HObAdfTbq2lcvg/cJNOFwHaTMKa3L5SV/7ptJStyNEvxRAKAZ+q6FTLxM/
xz3y5vwK2oF8LVJ1op6jhs/SrkjBHPzGSZUxr0P6oIxqOHjYV77Kpccuuw5RdtfOrsUFTeGjMCuO
2T23mAAJx5Grby9+exFuxqvCxzkempDqVP7MHGHdZCdN2iynlkGkdNEGzFUqQaxldJV6DdmtmM3B
vzP6m29/cOLxUHXXiU0knP16cqFMs4B/95EJo2Y8+qkcnYjfzcbd6PsiMhRi8zliD2tETCKM8LNN
EuPoRE1QyHNonZLjHYZHwwBDC2i0k/vilQjNTpdP5GjfQXeaLNIxyG5qaD1alLTn/OYpXhekWwhO
6DZ3li3bH5j8s31qGx1VYWF9GYQhbw8fptqGS0KQeqK/IiITNHzlm4JPS4ghTlrcA2B8/2Xc/gZM
sLkEXtLKyG78uAEBAQVwHM4rgrUvSNZvaajnLg4vamNNYTP5ob5q0u4CGyi4rCRz0usUJpamCELH
TTzQ4WU7ol0I4Czg1n57t03ZU00rJI1d9IoZ4xWyiYcf18J6iKcYkax3R4aCwed3S4kHaPbo53w1
Dghrg06//Cnu9iR071vTt3eRXRD/OZlyk/hPs7NxDVBxc51Af3fOpRAkWOQT9cjxm/ruLTz84gyb
Ey39piaNE9sXx3zKycjobZnzzbVKkRAN+dT4tIzWMIQw0ouTb4DYqAnyP09L/2Yc7+bwyJHzm/Ry
vvrwlbGOCh/yYovwe2mdfmt1O4R79sFfpJR8PTeIYbvT7JZX/OI9bK20iPWdgiZGg26ISxq44z8+
TF2nzXOu1hWyVekI2wMhnHkckLiNtJDaCkYi4Ot4yxKo/ppluJOk98IT9SUSKu/Z0nqwscfK6hz2
Zwj+ruBWLX4RkXNiJNgF8p+w2Wyz2tPUCxq/5j5nMrT42AL1OJ5gn4T19ySq/UYnjoVhMapWOEqq
BMt1Ba3owm6HWjcdL4xA0y3WEm5iHbj93vxd9Yrn9VSo6+Qg3E2HiGI70W7JF7XPZRCWy0DtIgUM
wh9I+F3h9G+2HmnL3WMTzmRx1xIwXmPUPdFgLkaBw0N8ODEVqrwc3Lffu03zI+raueN/+yZYM2V9
+R5TRM2VZpapFxNs9V9y33cNIoc2XtB5McE06KZVzdOw7LCqJKIgCCN5o0EtqGbnKi/m13oyIczf
FVQ28AqCpg8AEiozIu4ErLVW0zGo8lwEwFDCBI/TWJ212XsIhR/QiTpNARdcv39kgui9YCLyXvjR
bTS95bFEPVy2Z1/6V2EG+PO0/rpSDAx/N7VNaVJ9QogB+cozOOX2dfSiru6YVHjJB7CwITb9Q97D
kUUB8ZMQj8Cnqp2vut3A4Ohyp6KQ1Ap8OZOalnFagJldhMavw+QClmG06xXtWLtsYbbTbKoaJjQe
78uBfJIMbfD/rW/M+UmV4lM9SjHbkElaYJxnAcR9mX1BF+dBqTZt5mEpnQZ3DNXZfQRWurMxQ2v2
rHW76gzWyZIatlv5b3ZW5BqXgZdyE1t5c3sDxcf+g/u/9rUXaapOAlpGa3tQ2Mlm8RXwYswY906T
E5T5sagStfMQayAIVzGUGLVTmmbdaoT3uuYWPo7azl2aPAXkhC9ohxmkuezm1KZq+b/r1jkP7P/L
CvkYnLsJic9+7gGU1iGkDhy44ZBZHg0Z9ITl+4yX5hHx86iNHiazaoqp3vZqOcdqdfhrNum5h/Hn
o/7xDow40/Urcme3DoNm/iuJ4twxiQzh/ENGMaMbiDnvat4aj+AtLue8GtRvNwifpvg2Xz9u+a4k
RJ7/KkI9jNVU4KDzHhtyktayvYDqxHn37V9VbUpZqI6BByNKBvTVrw4k3jtRmJGV8nlsfyahrKuE
mAb5KP79gc1oNz1h/omxmbtPIspCLN7NcSWj2u4E7nK0V8pkStYSZu4HIuCAxvqGnPPuKQagrcwR
uRI6oDEiWXkl+WmxdS+bIWG/fcRAm8ycNpoeBMAu1a/Hvr0=
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
