onerror {exit -code 1}
vlib work
vlog -work work servo2.vo
vlog -work work servo2.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.servo2_vlg_vec_tst -voptargs="+acc"
vcd file -direction servo2.msim.vcd
vcd add -internal servo2_vlg_vec_tst/*
vcd add -internal servo2_vlg_vec_tst/i1/*
run -all
quit -f
