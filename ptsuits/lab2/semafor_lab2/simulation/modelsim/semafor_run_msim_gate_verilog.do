transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {semafor_7_1200mv_125c_slow.vo}

vlog -vlog01compat -work work +incdir+Y:/Yandex.Disk/9term/fedorov/lab2/semafor_lab2 {Y:/Yandex.Disk/9term/fedorov/lab2/semafor_lab2/lab2_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  lab2_tb

add wave *
view structure
view signals
run -all