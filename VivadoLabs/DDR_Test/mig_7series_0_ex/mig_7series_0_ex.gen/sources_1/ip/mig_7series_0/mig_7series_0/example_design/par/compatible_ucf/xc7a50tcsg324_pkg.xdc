##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Fri Jun 24 14:19:55 2022

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.sd
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A50TCSG324_PKG
##                    Speedgrade:        -1
##                    Design Entry:      VERILOG
##                    Frequency:         324.99000000000001 MHz
##                    Time Period:       3077 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR2_SDRAM->Components->MT47H64M16HR-25E
## Data Width: 16
## Time Period: 3077
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr2_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr2_ck_p[*]} ]
          
create_clock -period 10 [get_ports sys_clk_i]
          
#create_clock -period 5 [get_ports clk_ref_i]
          # Note: the following CLOCK_DEDICATED_ROUTE constraint will cause a warning in place similar
# to the following:
#   WARNING:Place:1402 - A clock IOB / PLL clock component pair have been found that are not
#   placed at an optimal clock IOB / PLL site pair.
# This warning can be ignored.  See the Users Guide for more information.
# The below constraint is used because the System Clock connecting to the PLL is
# not allocated in the same bank as the PLL itself.
# Please refer to UG 586 for details on clocking resources.
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_i]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_pins -hierarchical *pll*CLKIN1]
          

############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF  0.900 [get_iobanks 34]