reset_hw_axi [get_hw_axis hw_axi_1]

#reset 
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800040 -data {0000000A} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 100
#clr fifo and en dev
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800100 -data {00000003} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 10
#set RX fifo to 
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800120 -data {00000009} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 1
create_hw_axi_txn read_txn [get_hw_axis hw_axi_1] -address 40800100 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn]
delete_hw_axi_txn read_txn

after 1
create_hw_axi_txn read_txn [get_hw_axis hw_axi_1] -address 40800120 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn]
delete_hw_axi_txn read_txn

after 1
create_hw_axi_txn read_txn [get_hw_axis hw_axi_1] -address 40800104 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn]
delete_hw_axi_txn read_txn

after 10
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800108 -data {00000042} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 10
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800100 -data {0000001D} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1


after 10
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800108 -data {00000012} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 10
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800108 -data {00000004} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1

after 10
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 40800100 -data {0000001D} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
delete_hw_axi_txn write_txn1


