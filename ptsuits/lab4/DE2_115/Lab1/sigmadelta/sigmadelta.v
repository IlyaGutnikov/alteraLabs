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

wire	[7:0] wire1;
wire	[7:0] wire2;
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



memory	mem(
	.clock(clk),
	.address(wire1),
	.q(wire2));


modulator	mod(
	.clk(clk),
	.clrn(clrn),
	.val(wire2),
	.daco(daco));
	defparam	mod.MAX = 127;
	defparam	mod.MIN = -128;


phase_acc	phac(
	.clk(clk),
	.clrn(clrn),
	.phinc(data),
	.phase(wire1));
	defparam	phac.WIDTH = 27;


endmodule
