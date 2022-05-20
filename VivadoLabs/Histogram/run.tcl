add_force {/Histogram/clock} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force reset 1
run 100 ns
add_force reset 0
run 28 us