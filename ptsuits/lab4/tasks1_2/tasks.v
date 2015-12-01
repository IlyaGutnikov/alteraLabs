module tasks (phinc,clk,clrn,q);
input [7:0]phinc; //величина приращения фазы за один период тактового сигнала
input clk, clrn; //clk – тактовый сигнал
				 //clrn – вход асинхронного сброса
output	[7:0]  q;
wire [7:0] phase;

phase_acc pa(.phinc(phinc), .clk(clk), .clrn(clrn), .phase(phase));

memory m(.address(phase), .clock(clk), .q(q));

endmodule
