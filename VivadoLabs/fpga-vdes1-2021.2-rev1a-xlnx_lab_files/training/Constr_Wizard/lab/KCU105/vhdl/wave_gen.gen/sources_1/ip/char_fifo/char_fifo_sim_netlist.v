// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 26 17:53:19 2022
// Host        : KfirLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/FPGA-Learning/VivadoLabs/fpga-vdes1-2021.2-rev1a-xlnx_lab_files/training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku025-ffva1156-1-c
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
