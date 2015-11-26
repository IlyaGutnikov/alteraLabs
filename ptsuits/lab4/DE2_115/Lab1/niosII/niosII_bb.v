
module niosII (
	clk_clk,
	reset_reset_n,
	ram_bus_tcm_address_out,
	ram_bus_tcm_outputenable_n_out,
	ram_bus_tcm_byteenable_n_out,
	ram_bus_tcm_write_n_out,
	ram_bus_tcm_data_out,
	ram_bus_tcm_chipselect_n_out,
	flash_bus_tcm_address_out,
	flash_bus_tcm_outputenable_n_out,
	flash_bus_tcm_reset_n_out,
	flash_bus_tcm_write_n_out,
	flash_bus_tcm_data_out,
	flash_bus_tcm_chipselect_n_out,
	hex_export,
	btn_export,
	pwm_export,
	gen_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[20:0]	ram_bus_tcm_address_out;
	output	[0:0]	ram_bus_tcm_outputenable_n_out;
	output	[1:0]	ram_bus_tcm_byteenable_n_out;
	output	[0:0]	ram_bus_tcm_write_n_out;
	inout	[15:0]	ram_bus_tcm_data_out;
	output	[0:0]	ram_bus_tcm_chipselect_n_out;
	output	[22:0]	flash_bus_tcm_address_out;
	output	[0:0]	flash_bus_tcm_outputenable_n_out;
	output	[0:0]	flash_bus_tcm_reset_n_out;
	output	[0:0]	flash_bus_tcm_write_n_out;
	inout	[7:0]	flash_bus_tcm_data_out;
	output	[0:0]	flash_bus_tcm_chipselect_n_out;
	output	[31:0]	hex_export;
	input	[3:0]	btn_export;
	output	[7:0]	pwm_export;
	output		gen_export;
endmodule
