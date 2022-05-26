create_clock -period 3.333 -name clk_pin_p -waveform {0.000 1.666} [get_ports clk_pin_p]
set_input_jitter [get_clocks clk_pin_p] 0.00
create_generated_clock -name spi_clk -source [get_pins dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst/C] -divide_by 1 -invert [get_ports spi_clk_pin]
create_generated_clock -name clk_samp -source [get_pins {clk_gen_i0/BUFGCE_clk_samp_i0/I}] -divide_by 32 [get_pins {clk_gen_i0/BUFGCE_clk_samp_i0/O}]
set_clock_groups -asynchronous -group [get_clocks -filter { NAME =~  "*clk_out1*" }] -group [get_clocks -filter { NAME =~  "*clk_out2*" }]
