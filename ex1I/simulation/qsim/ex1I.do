onerror {exit -code 1}
vlib work
vlog -work work ex1I.vo
vlog -work work ex1I.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.ex1I_vlg_vec_tst -voptargs="+acc"
vcd file -direction ex1I.msim.vcd
vcd add -internal ex1I_vlg_vec_tst/*
vcd add -internal ex1I_vlg_vec_tst/i1/*
run -all
quit -f
