
module Lab1(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// LED //////////
	LEDG,
	LEDR,
	FOUTA,
	//////////// KEY //////////
	KEY,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,

	//////////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_N,
	SRAM_DQ,
	SRAM_LB_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_WE_N,

	//////////// Flash //////////
	FL_ADDR,
	FL_CE_N,
	FL_DQ,
	FL_OE_N,
	FL_RST_N,
	FL_RY,
	FL_WE_N,
	FL_WP_N 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input 		     [3:0]		KEY;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//////////// SRAM //////////
output		    [19:0]		SRAM_ADDR;
output		          		SRAM_CE_N;
inout 		    [15:0]		SRAM_DQ;
output		          		SRAM_LB_N;
output		          		SRAM_OE_N;
output		          		SRAM_UB_N;
output		          		SRAM_WE_N;

//////////// Flash //////////
output		    [22:0]		FL_ADDR;
output		          		FL_CE_N;
inout 		     [7:0]		FL_DQ;
output		          		FL_OE_N;
output		          		FL_RST_N;
input 		          		FL_RY;
output		          		FL_WE_N;
output		          		FL_WP_N;

output FOUTA;
//=======================================================
//  REG/WIRE declarations
//=======================================================


wire [31:0] hex_wire;

//=======================================================
//  Structural coding
//=======================================================


 niosII u0 (
	  .clk_clk                          (CLOCK_50), 
	  .reset_reset_n                    (1'b1),     
	  .ram_bus_tcm_address_out          ({SRAM_ADDR,1'bz}),
	  .ram_bus_tcm_outputenable_n_out   (SRAM_OE_N),
	  .ram_bus_tcm_byteenable_n_out     ({SRAM_UB_N,SRAM_LB_N}),
	  .ram_bus_tcm_write_n_out          (SRAM_WE_N),
	  .ram_bus_tcm_data_out             (SRAM_DQ),
	  .ram_bus_tcm_chipselect_n_out     (SRAM_CE_N),
	  .flash_bus_tcm_address_out        (FL_ADDR),
	  .flash_bus_tcm_outputenable_n_out (FL_OE_N),
	  .flash_bus_tcm_reset_n_out        (FL_RST_N),
	  .flash_bus_tcm_write_n_out        (FL_WE_N),
	  .flash_bus_tcm_data_out           (FL_DQ),
	  .flash_bus_tcm_chipselect_n_out   (FL_CE_N),
	  .hex_export                       (hex_wire),
	  .pwm_export                       ({LEDG[7:1], 1'bz}),
	  .gen_export                       (LEDG[0]),
	  .btn_export                       (KEY)
 );
 
 assign FL_WP_N = 1'b1;
 assign HEX0 = hex_wire[6:0];
 assign HEX1 = hex_wire[14:8];
 assign HEX2 = hex_wire[22:16];
 assign HEX3 = hex_wire[30:24];
 assign HEX4 = 7'h7F;
 assign HEX5 = 7'h7F;
 assign HEX6 = 7'h7F;
 assign HEX7 = 7'h7F;
 assign LEDR = 0;
 assign FOUTA = LEDG[0];


endmodule
