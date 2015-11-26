module countones(din,ones); 
	
	input [31:0] din; 
	output reg [31:0] ones; 
	reg [7:0] temp;
	
	reg [7:0]w [3:0];
	 
	
	
	integer i,j; 
 
	always @(*) 
	begin 
	{w[0],w[1],w[2],w[3]}=din; 
	for (i=3;i>0;i=i-1)
		for (j=0;j<i;j=j+1)
			begin
				if(w[j]>w[j+1])
				begin
				temp = w[j];
				w[j]=w[j+1];
				w[j+1]=temp;
				end 
			end
	ones={w[0],w[1],w[2],w[3]};
	end 

endmodule
