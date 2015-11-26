// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Thu Dec 05 15:03:21 2013"

module sigmadelta(
	clk,
	clrn,
	cs,
	wr_data,
	wr_n,
	daco
);


input wire	clk;
input wire	clrn;
input [31:0] wr_data;
input cs;
input wr_n;
output wire	daco;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
reg [7:0] data;

always @(posedge clk or negedge clrn)
begin
		if (clrn == 0)
		begin
			data <= 0;
		end
		else
		begin
		if(cs&!wr_n)
			begin
			data <= wr_data[7:0];
			end
		end		
	end



memory	b2v_inst(
	.clock(clk),
	.address(SYNTHESIZED_WIRE_0),
	.q(SYNTHESIZED_WIRE_1));


modulator	b2v_inst1(
	.clk(clk),
	.clrn(clrn),
	.val(SYNTHESIZED_WIRE_1),
	.daco(daco));
	defparam	b2v_inst1.MAX = 127;
	defparam	b2v_inst1.MIN = -128;


phase_acc	b2v_inst2(
	.clk(clk),
	.clrn(clrn),
	.phinc(data),
	.phase(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst2.WIDTH = 14;


endmodule
