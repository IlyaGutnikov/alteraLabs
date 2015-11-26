module task2(din,result); 
	
	input [31:0] din; 
	output reg [31:0] result; 
	
	reg [7:0] a;
	reg [7:0] b;
	reg [7:0] c;
	reg [7:0] d;
	
	integer i;
	integer t;
	
	integer a_int;
	integer b_int;
	integer c_int;
	integer d_int;
	
	integer temp [0:3];
	
	integer avr;
	integer min;
 
	always @(*) 
	begin 
		for (i = 0; i<8; i=i+1) 
		begin 
			a[i] = din[i+24];
			b[i] = din[i+16];
			c[i] = din[i+8];
			d[i] = din[i];
		end
		
		a_int = a;
		b_int = b;
		c_int = c;
		d_int = d;
		
		//average
		avr = a + b + c + d;
		//abs
		temp[0] = (avr - (a_int*4)) * (avr - (a_int*4));
		temp[1] = (avr - (b_int*4)) * (avr - (a_int*4));
		temp[2] = (avr - (c_int*4)) * (avr - (c_int*4));
		temp[3] = (avr - (d_int*4)) * (avr - (d_int*4));
		
		result = 0;
		
		min = temp[3];
		
		for (i = 0; i<4; i=i+1) 
		begin
		if(temp[i] < min)
			begin
			min = temp[i];
			t = i;
			end
		end
		result = t;
	end 
	
endmodule
