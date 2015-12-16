transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/sigmadelta {C:/Users/Ilya/Desktop/DE2_115/Lab1/sigmadelta/sigmadelta.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1 {C:/Users/Ilya/Desktop/DE2_115/Lab1/lab1.v}
vlib niosII
vmap niosII niosII
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/niosII.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_1.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter_012.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter_011.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_customins_master_translator.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_sysid.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_sys_clk_timer.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/sigmadelta.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/phase_acc.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/memory.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/modulator.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_seven_seg.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_performance_counter_0.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/avalon_pwm.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_jtag_uart.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_instruction_tcm.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_high_res_timer.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_ext_ram_ctl.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_ext_flash_ctl.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/countones.v}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_buttons.v}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_irq_mapper.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter_012_error_adapter_0.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter_011_error_adapter_0.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_width_adapter.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_rsp_demux_005.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_cmd_mux_005.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_burst_adapter_uncmpr.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router_014.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router_013.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router_007.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router_002.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router_001.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_mm_interconnect_0_router.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_customins_slave_translator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_cpu_custom_instruction_master_comb_xconnect.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_tristate_controller_aggregator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/altera_tristate_controller_translator.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_ext_ram_bus.sv}
vlog -sv -work niosII +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules {C:/Users/Ilya/Desktop/DE2_115/Lab1/niosII/synthesis/submodules/niosII_ext_flash_bus.sv}

vlog -vlog01compat -work work +incdir+C:/Users/Ilya/Desktop/DE2_115/Lab1/sigmadelta {C:/Users/Ilya/Desktop/DE2_115/Lab1/sigmadelta/tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L niosII -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
