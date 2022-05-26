
# Global timing constraints
create_clock -period 8 -name clk_pin_p [get_ports clk_pin_p]

set_input_delay  -clock clk_pin_p       1.2   [get_ports {rst_pin}]
set_input_delay  -clock clk_pin_p  -min 1.0   [get_ports {rst_pin}]
set_input_delay  -clock clk_pin_p       0.2   [get_ports {rxd_pin}]
set_input_delay  -clock clk_pin_p  -min -0.2   [get_ports {rxd_pin}]

create_clock -period 8.258 -name clk_tx_virtual
set_input_delay  -clock clk_tx_virtual      1   [get_ports {lb_sel_pin}]
set_input_delay  -clock clk_tx_virtual -min 1.0 [get_ports {lb_sel_pin}]
set_output_delay -clock clk_tx_virtual      0.2 [get_ports {txd_pin spi_clk_pin led_pins[*]} ]

# Path specific timing constraints
set_output_delay -clock clk_tx_virtual -clock_fall 1.2 [get_ports spi_clk_pin] -add_delay
#set_false_path -rise_from clk_tx -through [get_ports spi_clk_pin] -fall_to [get_clocks clk_tx_virtual]
#set_false_path -fall_from clk_tx -through [get_ports spi_clk_pin] -rise_to [get_clocks clk_tx_virtual]
set_false_path -from [get_clocks clk_out1_clk_core] -to [get_clocks clk_out2_clk_core]

create_generated_clock -name spi_clk -source [get_pins dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst/C] -divide_by 1 -invert [get_ports spi_clk_pin]
set_output_delay -clock [get_clocks spi_clk] -max  1.2 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]
set_output_delay -clock [get_clocks spi_clk] -min 0.8 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]

set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 2
set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] -hold 1

set_multicycle_path -from [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] 108 
set_multicycle_path -from [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_rx_i0/uart_rx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -hold 107 

set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] 108 
set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL == 1}] -hold 107 

create_generated_clock -name clk_samp -source [get_pins {clk_gen_i0/BUFHCE_clk_samp_i0/I}] -divide_by 32 [get_pins {clk_gen_i0/BUFHCE_clk_samp_i0/O}]

set_max_delay -from clkx_nsamp_i0/meta_harden_bus_new_i0/signal_meta_reg            -to clkx_nsamp_i0/meta_harden_bus_new_i0/signal_dst_reg 2 
set_max_delay -from clkx_pre_i0/meta_harden_bus_new_i0/signal_meta_reg              -to clkx_pre_i0/meta_harden_bus_new_i0/signal_dst_reg 2 
set_max_delay -from clkx_spd_i0/meta_harden_bus_new_i0/signal_meta_reg              -to clkx_spd_i0/meta_harden_bus_new_i0/signal_dst_reg 2 
set_max_delay -from lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_meta_reg -to lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_dst_reg 2 
set_max_delay -from samp_gen_i0/meta_harden_samp_gen_go_i0/signal_meta_reg          -to samp_gen_i0/meta_harden_samp_gen_go_i0/signal_dst_reg 2 
set_max_delay -from uart_rx_i0/meta_harden_rxd_i0/signal_meta_reg                   -to uart_rx_i0/meta_harden_rxd_i0/signal_dst_reg 2 

set_max_delay -from rst_gen_i0/reset_bridge_clk_rx_i0/rst_meta_reg                  -to rst_gen_i0/reset_bridge_clk_rx_i0/rst_dst_reg 2 
set_max_delay -from rst_gen_i0/reset_bridge_clk_tx_i0/rst_meta_reg                  -to rst_gen_i0/reset_bridge_clk_tx_i0/rst_dst_reg 2 
set_max_delay -from rst_gen_i0/reset_bridge_clk_samp_i0/rst_meta_reg                -to rst_gen_i0/reset_bridge_clk_samp_i0/rst_dst_reg 2 

set_false_path -from [get_ports rst_pin]

#set_clock_groups -name async_debug -asynchronous -group [get_clocks clk_out1_clk_core] -group [get_clocks clk_out2_clk_core]
#set_clock_groups -name async_debug -asynchronous -group [get_clocks clk_rx] -group [get_clocks clk_tx]