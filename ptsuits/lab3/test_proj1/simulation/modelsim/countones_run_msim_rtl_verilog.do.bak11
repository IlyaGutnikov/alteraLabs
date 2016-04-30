transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/alteraLabs/ptsuits/lab3/test_proj1 {E:/alteraLabs/ptsuits/lab3/test_proj1/countones.v}

vlog -vlog01compat -work work +incdir+E:/alteraLabs/ptsuits/lab3/test_proj1/simulation/modelsim {E:/alteraLabs/ptsuits/lab3/test_proj1/simulation/modelsim/countones.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  countones_vlg_tst

add wave *
view structure
view signals
run -all
