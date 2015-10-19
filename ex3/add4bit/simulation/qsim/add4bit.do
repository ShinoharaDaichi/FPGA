onerror {quit -f}
vlib work
vlog -work work add4bit.vo
vlog -work work add4bit.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.add4bit_vlg_vec_tst
vcd file -direction add4bit.msim.vcd
vcd add -internal add4bit_vlg_vec_tst/*
vcd add -internal add4bit_vlg_vec_tst/i1/*
add wave /*
run -all
