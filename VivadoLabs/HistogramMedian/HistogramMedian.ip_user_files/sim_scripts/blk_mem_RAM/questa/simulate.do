onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib blk_mem_RAM_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {blk_mem_RAM.udo}

run -all

quit -force
