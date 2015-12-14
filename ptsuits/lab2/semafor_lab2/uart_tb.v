`timescale 1 ns/1 ns

module uart_tb();
	
	reg clk, rst, rx; 

	wire [1:0] rx_data; 
		
	uart uartrx(.reset(rst), .rxclk(clk), 
		.rx_data(rx_data), .rx_in(rx)
	);

	// Clock definition
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end
	
	initial begin
		#320 rst = 1;
		#320 rst = 0;
		#320 rx = 0;
		#320 rx = 1;
		#320 rx = 0;
		#320 rx = 1;
		#320 rx = 1;
		#800;
		#320 rst = 1;
		#320 rst = 0;
		#320 rx = 0;
		#320 rx = 1;
		#320 rx = 1;
		#320 rx = 1;
		#320 rx = 1;
		#800;
		#320 rst = 1;
		#320 rst = 0;
		#320 rx = 0;
		#320 rx = 1;
		#320 rx = 1;
		#320 rx = 1;
		#320 rx = 0;
		#800;
		$stop;
	end

endmodule
