create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name char_fifo
set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} CONFIG.Performance_Options {First_Word_Fall_Through} CONFIG.Input_Data_Width {8} CONFIG.Input_Depth {2048} CONFIG.Output_Data_Width {8} CONFIG.Output_Depth {2048} CONFIG.Full_Flags_Reset_Value {0} CONFIG.Use_Dout_Reset {false} CONFIG.Data_Count_Width {11} CONFIG.Write_Data_Count_Width {11} CONFIG.Read_Data_Count_Width {11} CONFIG.Full_Threshold_Assert_Value {2041} CONFIG.Full_Threshold_Negate_Value {2040} CONFIG.Empty_Threshold_Assert_Value {6} CONFIG.Empty_Threshold_Negate_Value {7}] [get_ips char_fifo] 
generate_target all [get_files char_fifo.xci] 
create_ip_run [get_files char_fifo.xci] 
