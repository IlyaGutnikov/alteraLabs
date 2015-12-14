module tasks (phinc,clk,clrn,daco);
input [7:0]phinc; //величина приращения фазы за один период тактового сигнала
input clk,        //clk – тактовый сигнал
		clrn;       //clrn – вход асинхронного сброса		 
output daco;      //daco – выход модулятора	

wire   [7:0] phase;
wire   [7:0] q;

phase_acc pa(.phinc(phinc), .clk(clk), .clrn(clrn), .phase(phase));

memory m(.address(phase), .clock(clk), .q(q));

modulator mod(.val(q), .clk(clk), .clrn(clrn), .daco(daco));

endmodule
