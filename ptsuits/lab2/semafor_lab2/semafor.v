module semafor (
	clk,
	clr,
	divider,
	red,
	yellow,
	green
);
	input wire	clk;
	input wire	clr;
	input wire	[1:0] divider; 
	output wire	red;
	output wire	yellow;
	output wire	green;
	
	reg [1:0] contr;
	wire	[7:0] memory_data; 
	wire	[3:0] memory_address;
	assign	memory_address = {divider[1:0],contr[1:0]};
	
	reg [2:0] colors;
	reg [7:0] cntdiv;
	reg enacnt;
	
	assign {red, yellow, green} = colors;
	
	periodrom	b2v_inst2(
		.clock(clk),
		.address(memory_address),
		.q(memory_data));

	always @ (posedge clk or posedge clr)
	begin
		if (clr) cntdiv<=0;
		else
		begin
			if (cntdiv==memory_data) cntdiv<=0;
			else cntdiv<=cntdiv+1;
		end
	end
	
	always @ (*)
	begin
		enacnt=(cntdiv==memory_data);
	end
	
	always @ (posedge clk or posedge clr)
	begin
		if (clr) contr<=0;
		else
		begin
			if (enacnt)
			begin
				if (contr!=3) contr<=contr+1;
			end
		end
	end
	
	always @ (posedge clk or posedge clr)
	begin
		if (clr) colors<=3'b100;
		else
		begin
			if (enacnt)
				begin
					case (colors) 
					3'b100: begin colors <= 3'b010; end
					3'b010: begin colors <= 3'b011; end
					3'b011: begin colors <= 3'b001; end
					endcase
				end
		end
	end
endmodule