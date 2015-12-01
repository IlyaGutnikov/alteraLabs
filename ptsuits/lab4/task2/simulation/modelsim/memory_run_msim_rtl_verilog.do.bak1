transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/alteraLabs/ptsuits/lab4/task2 {E:/alteraLabs/ptsuits/lab4/task2/memory.v}

vlog -vlog01compat -work work +incdir+E:/alteraLabs/ptsuits/lab4/task2 {E:/alteraLabs/ptsuits/lab4/task2/memory_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  memory_vlg_tst

add wave *
view structure
view signals
run -all
