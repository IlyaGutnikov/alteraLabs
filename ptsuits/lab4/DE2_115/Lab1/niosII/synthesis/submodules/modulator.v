module modulator (val,clk,clrn,daco);
input [7:0] val;
input clk, clrn;
output reg daco;

parameter MAX=9'b001111111, MIN=9'b110000000;

reg [8:0] err,int,dac,lval;



always@(*)
		begin
		if (val[7]==0) lval[8]<=0; else lval[8]=1;
		lval[7:0]<=val;
		
		if(int[8]==0) 
			begin daco<=1; dac=MAX; end
		else 
			begin daco<=0; dac=MIN; end
			
		err<=lval-dac;
		end
		
always@(posedge clk or negedge clrn)
begin 
	if(!clrn)
		int<=0;
	else 
	int=int+err;
end

endmodule
		