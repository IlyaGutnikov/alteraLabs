module countones(din,ones); 
	
	input [31:0] din; 
	output reg [31:0] ones; 
	
	integer i; 
 
	always @(*) 
	begin 
		ones=0; 
		for (i = 0; i<32; i=i+1) 
		begin 
			if (din[i]) ones=ones+1; 
		end 
	end 
	
endmodule
