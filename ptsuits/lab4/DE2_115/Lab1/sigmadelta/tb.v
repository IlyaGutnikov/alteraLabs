

`timescale 1 ns/1 ns


module tb;

	// Parameters
	localparam CLK_PRD = 20;
	localparam SAMPLES_PRD = 256;
	
	// Wires and variables to connect to UUT (unit under test)
	reg clk, clrn;	
	reg [7:0] data;	
	wire daco;		
	
	sigmadelta test(.clk(clk), .clrn(clrn), .data(data), .daco(daco));	

	// Clock definition
	initial begin
		clk = 0;
		data = 16;
		forever #(CLK_PRD/2) clk = ~clk;		
	end
	
	initial begin	
		clrn = 0;
		#(CLK_PRD*5) clrn = 1;
		#25000 $stop;
	end
	
endmodule



