transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Daichi/hubiC/ELN/FPGA/Projects/segment7/segment7.vhd}
vcom -93 -work work {C:/Users/Daichi/hubiC/ELN/FPGA/Projects/PWM/pwm.vhd}
vcom -93 -work work {C:/Users/Daichi/hubiC/ELN/FPGA/Projects/quad_segment7/quad_segment7.vhd}
vcom -93 -work work {C:/Users/Daichi/hubiC/ELN/FPGA/Projects/Servo/servo.vhd}

