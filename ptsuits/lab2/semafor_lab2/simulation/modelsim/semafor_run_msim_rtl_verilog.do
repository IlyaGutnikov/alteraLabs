transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab2/semafor_lab2 {C:/git/alteralabs/ptsuits/lab2/semafor_lab2/uart.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab2/semafor_lab2 {C:/git/alteralabs/ptsuits/lab2/semafor_lab2/semafor.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab2/semafor_lab2 {C:/git/alteralabs/ptsuits/lab2/semafor_lab2/periodrom.v}
vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab2/semafor_lab2 {C:/git/alteralabs/ptsuits/lab2/semafor_lab2/lab2.v}

vlog -vlog01compat -work work +incdir+C:/git/alteralabs/ptsuits/lab2/semafor_lab2 {C:/git/alteralabs/ptsuits/lab2/semafor_lab2/uart_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  uart_tb

add wave *
view structure
view signals
run -all
