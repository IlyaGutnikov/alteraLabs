module phase_acc (phinc,clk,clrn,phase);
input [7:0]phinc;
input clk, clrn;
output [7:0] phase;
parameter WIDTH =14;
reg [WIDTH-1:0] phasereg;


always @(posedge clk or negedge clrn)
begin
	if(!clrn) phasereg<=0;
	else
		begin
			phasereg<=phasereg+phinc;
		end


end
assign phase[7] = phasereg[WIDTH-1];
assign phase[6] = phasereg[WIDTH-2];
assign phase[5] = phasereg[WIDTH-3];
assign phase[4] = phasereg[WIDTH-4];
assign phase[3] = phasereg[WIDTH-5];
assign phase[2] = phasereg[WIDTH-6];
assign phase[1] = phasereg[WIDTH-7];
assign phase[0] = phasereg[WIDTH-8];
endmodule
