reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn [get_hw_axis hw_axi_1] -address C0000004 -data {11111141} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn]

