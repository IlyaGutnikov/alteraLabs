module phase_acc (phinc,clk,clrn,phase);
input [7:0]phinc; //величина приращения фазы за один период тактового сигнала
input clk, clrn; //clk – тактовый сигнал
				 //clrn – вход асинхронного сброса

output [7:0] phase; // 8 старших значащих битов выхода накопителя
parameter WIDTH =14; //разрядность накопителя фазы (значение по умолчанию – 14)
reg [WIDTH-1:0] phasereg;

always @(posedge clk or negedge clrn)
begin
	if(clrn == 0) phasereg<=0;
	else
		begin
			phasereg<=phasereg+phinc;
		end


end
//...на выход поступают старшие 8 разрядов аккумулятора...
assign phase[7] = phasereg[WIDTH-1];
assign phase[6] = phasereg[WIDTH-2];
assign phase[5] = phasereg[WIDTH-3];
assign phase[4] = phasereg[WIDTH-4];
assign phase[3] = phasereg[WIDTH-5];
assign phase[2] = phasereg[WIDTH-6];
assign phase[1] = phasereg[WIDTH-7];
assign phase[0] = phasereg[WIDTH-8];
endmodule
