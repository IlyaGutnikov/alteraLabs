// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "12/01/2015 15:29:42"
                                                                                
// Verilog Test Bench template for design : phase_acc
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ps/ 1 ps
module phase_acc_vlg_tst();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg clk;
reg clrn;
reg [7:0] phinc;
// wires                                               
wire [7:0]  phase;

// assign statements (if any)                          
phase_acc i1 (
// port map - connection between master ports and signals/registers   
	.clk(clk),
	.clrn(clrn),
	.phase(phase),
	.phinc(phinc)
);

initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
	clk = 0;

	forever #10 clk = ~clk;
	
	// --> end                                             
$display("Running testbench");                       
end

initial
begin

	phinc = 255;
	
	forever #10 phinc = phinc + 220;

end

initial
begin

	#10 clrn = 0;
	#10 clrn = 1;

end
                                                  
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
                                                       
@eachvec;                                              
// --> end                                             
end                                                    
endmodule
