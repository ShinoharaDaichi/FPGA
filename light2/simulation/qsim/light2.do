onerror {quit -f}
vlib work
vlog -work work light2.vo
vlog -work work light2.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.light2_vlg_vec_tst
vcd file -direction light2.msim.vcd
vcd add -internal light2_vlg_vec_tst/*
vcd add -internal light2_vlg_vec_tst/i1/*
add wave /*
run -all
