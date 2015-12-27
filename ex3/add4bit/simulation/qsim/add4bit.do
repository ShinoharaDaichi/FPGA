onerror {exit -code 1}
vlib work
vlog -work work add4bit.vo
vlog -work work add4bit.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.add4bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction add4bit.msim.vcd
vcd add -internal add4bit_vlg_vec_tst/*
vcd add -internal add4bit_vlg_vec_tst/i1/*
run -all
quit -f
