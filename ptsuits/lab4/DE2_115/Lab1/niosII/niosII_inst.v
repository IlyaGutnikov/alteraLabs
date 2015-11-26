	niosII u0 (
		.clk_clk                          (<connected-to-clk_clk>),                          //       clk.clk
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //     reset.reset_n
		.ram_bus_tcm_address_out          (<connected-to-ram_bus_tcm_address_out>),          //   ram_bus.tcm_address_out
		.ram_bus_tcm_outputenable_n_out   (<connected-to-ram_bus_tcm_outputenable_n_out>),   //          .tcm_outputenable_n_out
		.ram_bus_tcm_byteenable_n_out     (<connected-to-ram_bus_tcm_byteenable_n_out>),     //          .tcm_byteenable_n_out
		.ram_bus_tcm_write_n_out          (<connected-to-ram_bus_tcm_write_n_out>),          //          .tcm_write_n_out
		.ram_bus_tcm_data_out             (<connected-to-ram_bus_tcm_data_out>),             //          .tcm_data_out
		.ram_bus_tcm_chipselect_n_out     (<connected-to-ram_bus_tcm_chipselect_n_out>),     //          .tcm_chipselect_n_out
		.flash_bus_tcm_address_out        (<connected-to-flash_bus_tcm_address_out>),        // flash_bus.tcm_address_out
		.flash_bus_tcm_outputenable_n_out (<connected-to-flash_bus_tcm_outputenable_n_out>), //          .tcm_outputenable_n_out
		.flash_bus_tcm_reset_n_out        (<connected-to-flash_bus_tcm_reset_n_out>),        //          .tcm_reset_n_out
		.flash_bus_tcm_write_n_out        (<connected-to-flash_bus_tcm_write_n_out>),        //          .tcm_write_n_out
		.flash_bus_tcm_data_out           (<connected-to-flash_bus_tcm_data_out>),           //          .tcm_data_out
		.flash_bus_tcm_chipselect_n_out   (<connected-to-flash_bus_tcm_chipselect_n_out>),   //          .tcm_chipselect_n_out
		.hex_export                       (<connected-to-hex_export>),                       //       hex.export
		.btn_export                       (<connected-to-btn_export>),                       //       btn.export
		.pwm_export                       (<connected-to-pwm_export>),                       //       pwm.export
		.gen_export                       (<connected-to-gen_export>)                        //       gen.export
	);

