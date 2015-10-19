transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Daichi/hubiC/ELN/FPGA/Projects/ex4/timer.vhd}

