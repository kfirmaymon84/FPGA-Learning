-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ip/Simple_PLL/Simple_PLL_clk_wiz.v" \
  "../../../ip/Simple_PLL/Simple_PLL.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

