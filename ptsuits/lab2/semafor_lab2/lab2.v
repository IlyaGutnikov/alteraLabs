module lab2 (
	clk,
	train,
	rx,
	clr_uart,
	r,
	y,
	g
);

input wire	clk;
input wire	train;
input wire	rx; 
input wire	clr_uart;
output wire	r;
output wire	y;
output wire	g;

wire [1:0] rx_data;

semafor my_sem(.clk(clk), .clr(train), .divider(rx_data),
	.red(r), .yellow(y), .green(g));

uart uart_rx(.reset(clr_uart), .rxclk(clk), 
	.rx_data(rx_data), .rx_in(rx));
	
endmodule
