onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+blk_mem_RAM -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blk_mem_RAM xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {blk_mem_RAM.udo}

run -all

endsim

quit -force
