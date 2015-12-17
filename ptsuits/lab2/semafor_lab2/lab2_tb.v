`timescale 1 ns/1 ns

module lab2_tb();

	// Wires and variables to connect to UUT (unit under test)
	reg clk, rx, clr;
	reg train;
	reg [1:0] div;
	wire r, y, g;
	
	// Instantiate UUT
	lab2 lab2_my(.clk(clk), .train(train),
	.rx(rx), .clr_uart(clr),
		.r(r), .y(y), .g(g));
		
	// Clock definition
	initial begin
		clk = 0;
		clr = 0;
		forever #10 clk = ~clk;
	end
	
	// Strob and divisor definition
	initial begin
		div = 0;
		repeat (4)
		begin
			#20 clr = 1;
			#20 clr = 0;
			
			#160 rx = 0;
			#160 rx = div[1];
			#160 rx = div[0];
			#160 rx = 1;
			#160 rx = 1;
			#20 train = 1;
			#20 train = 0;
			wait ({r,y,g}==3'b001);
			#160 div=div+1;
		end
		$stop;
	end
	
endmodule
