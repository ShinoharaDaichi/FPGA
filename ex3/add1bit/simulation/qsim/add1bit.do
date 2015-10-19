onerror {quit -f}
vlib work
vlog -work work add1bit.vo
vlog -work work add1bit.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.add1bit_vlg_vec_tst
vcd file -direction add1bit.msim.vcd
vcd add -internal add1bit_vlg_vec_tst/*
vcd add -internal add1bit_vlg_vec_tst/i1/*
add wave /*
run -all
