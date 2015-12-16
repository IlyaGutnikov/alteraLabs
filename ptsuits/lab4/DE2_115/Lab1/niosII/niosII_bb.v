
module niosII (
	btn_export,
	clk_clk,
	flash_bus_tcm_address_out,
	flash_bus_tcm_outputenable_n_out,
	flash_bus_tcm_reset_n_out,
	flash_bus_tcm_write_n_out,
	flash_bus_tcm_data_out,
	flash_bus_tcm_chipselect_n_out,
	gen_export,
	hex_export,
	led_export,
	ram_bus_tcm_address_out,
	ram_bus_tcm_byteenable_n_out,
	ram_bus_tcm_outputenable_n_out,
	ram_bus_tcm_write_n_out,
	ram_bus_tcm_data_out,
	ram_bus_tcm_chipselect_n_out,
	reset_reset_n);	

	input	[3:0]	btn_export;
	input		clk_clk;
	output	[22:0]	flash_bus_tcm_address_out;
	output	[0:0]	flash_bus_tcm_outputenable_n_out;
	output	[0:0]	flash_bus_tcm_reset_n_out;
	output	[0:0]	flash_bus_tcm_write_n_out;
	inout	[7:0]	flash_bus_tcm_data_out;
	output	[0:0]	flash_bus_tcm_chipselect_n_out;
	output		gen_export;
	output	[31:0]	hex_export;
	output	[7:0]	led_export;
	output	[20:0]	ram_bus_tcm_address_out;
	output	[1:0]	ram_bus_tcm_byteenable_n_out;
	output	[0:0]	ram_bus_tcm_outputenable_n_out;
	output	[0:0]	ram_bus_tcm_write_n_out;
	inout	[15:0]	ram_bus_tcm_data_out;
	output	[0:0]	ram_bus_tcm_chipselect_n_out;
	input		reset_reset_n;
endmodule
