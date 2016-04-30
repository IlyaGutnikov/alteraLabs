module countones(din,result); 
	
	input [31:0] din; 
	output reg [31:0] result; 
	
	reg [31:0] a;
	reg [31:0] b;

	integer i;

	always @(*) 
	begin 
	
		a = din[31:0];
		
		for (i = 0; i<31; i=i+1) 
		begin
			b[31-i] = a[i];
		end
		
		result = b;
		
	end 
	
endmodule
