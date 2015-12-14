transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab3/pwm {C:/git/alteralabs/ptsuits/lab3/pwm/avalon_pwm.v}

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab3/pwm/simulation/modelsim {C:/git/alteralabs/ptsuits/lab3/pwm/simulation/modelsim/avalon_pwm.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  avalon_pwm_vlg_tst

add wave *
view structure
view signals
run -all
