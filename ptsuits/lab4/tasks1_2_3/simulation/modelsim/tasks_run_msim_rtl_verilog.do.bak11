transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab4/tasks1_2_3 {C:/git/alteralabs/ptsuits/lab4/tasks1_2_3/modulator.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab4/tasks1_2_3 {C:/git/alteralabs/ptsuits/lab4/tasks1_2_3/tasks.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab4/tasks1_2_3 {C:/git/alteralabs/ptsuits/lab4/tasks1_2_3/phase_acc.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab4/tasks1_2_3 {C:/git/alteralabs/ptsuits/lab4/tasks1_2_3/memory.v}

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab4/tasks1_2_3 {C:/git/alteralabs/ptsuits/lab4/tasks1_2_3/tasks_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tasks_vlg_tst

add wave *
view structure
view signals
run -all
