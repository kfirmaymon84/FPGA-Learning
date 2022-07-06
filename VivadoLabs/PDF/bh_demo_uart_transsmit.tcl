reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn [get_hw_axis hw_axi_1] -address 00000004 -data {11111141} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn]
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 00000004 -data {11111142} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
create_hw_axi_txn write_txn2 [get_hw_axis hw_axi_1] -address 00000004 -data {11111143} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn2]
create_hw_axi_txn write_txn3 [get_hw_axis hw_axi_1] -address 00000004 -data {11111144} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn3]
create_hw_axi_txn write_txn4 [get_hw_axis hw_axi_1] -address 00000004 -data {11111145} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn4]
create_hw_axi_txn write_txn5 [get_hw_axis hw_axi_1] -address 00000004 -data {11111146} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn5]
