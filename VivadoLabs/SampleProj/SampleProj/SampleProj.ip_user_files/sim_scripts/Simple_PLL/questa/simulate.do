onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Simple_PLL_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Simple_PLL.udo}

run -all

quit -force
