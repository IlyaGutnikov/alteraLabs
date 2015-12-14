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
		#160 rst = 1;
		#160 rst = 0;
		#160 rx = 1; //start
		#160 rx = 0; //start
		#160 rx = 1; //старший бит
		#160 rx = 0; //младший бит
		#160 rx = 1; //бит четности
		#160 rx = 1; //стоп бит
		#3000;
		
		#160 rst = 1;
		#160 rst = 0;
		#160 rx = 1; //start
		#160 rx = 0;
		#160 rx = 1;
		#160 rx = 1;
		#160 rx = 0;
		#160 rx = 1;
		#3000;
		
		#160 rst = 1;
		#160 rst = 0;
		#160 rx = 1; //start
		#160 rx = 0;
		#160 rx = 0;
		#160 rx = 1;
		#160 rx = 0;
		#160 rx = 1;
		#3000;
		
		#160 rst = 1;
		#160 rst = 0;
		#160 rx = 1; //start
		#160 rx = 0;
		#160 rx = 0;
		#160 rx = 1;
		#160 rx = 1;
		#160 rx = 1;
		#3000;
		$stop;
	end

endmodule
