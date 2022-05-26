-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../wave_gen.gen/sources_1/ip/clk_core/clk_core_clk_wiz.v" \
  "../../../../wave_gen.gen/sources_1/ip/clk_core/clk_core.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

