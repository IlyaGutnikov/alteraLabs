module avalon_pwm
(
	clk, wr_data, cs, wr_n, addr, clr_n, rd_data, pwm_out
);

	input clk;
	input [31:0] wr_data;
	input cs;
	input wr_n;
	input [1:0]addr;
	input clr_n;
	output [31:0] rd_data;
	output [7:0] pwm_out;

	/////////////////////////////////////////////////////////////////////
	// Registers and wires
	
	reg [31:0]	div;
	reg [31:0]	duty;
	reg [31:0] counter;
	reg [31:0] counter2;
	reg off;
	reg state;
	reg [31:0] rd_data;
	reg [31:0] dither;
	wire div_en, duty_en;

	/////////////////////////////////////////////////////////////////////
	// Avalon slave interface
	
	//chip select and address decoder
	assign div_en = cs & !wr_n & !addr ;
	assign duty_en = cs & !wr_n & addr ;

	//register write
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
		begin
			div <= 0;
			duty <= 0;
			dither<=0;
		end
		else
		begin
		if(cs&!wr_n)
			begin
			case(addr)
			2'b00: div <= wr_data;
			2'b01: duty <= wr_data;
			2'b10: dither <= wr_data;
			endcase
			end
		end		
	end

	//register read
	always @(*)
	begin
		case(addr)
		2'b00: rd_data = div;
		2'b01: rd_data = duty;
		2'b10: rd_data = dither;
		default: rd_data = 0;
		endcase
	end
	
	/////////////////////////////////////////////////////////////////////
	// PWM logic
	
	//PWM counter
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
			counter <= 0;
		else
			if (counter >= div)
				counter <= 0;
			else	
				counter <= counter + 1;
	end
	
	//PWM compare
	always @(posedge clk or negedge clr_n)
	begin
		//clr
		if (clr_n == 0) begin
			off <= 0;
			state <= 1;
				end
		else
		//task1 work
		if (dither == 1) begin
			if (counter >= duty)
					if (state == 1) begin 
						off <= 1;
						state <= 0;	
					end
					else begin
						off <= 0;
						state <= 1;
					end
			else
				off <= 1;
		end
		else begin
		//normal work
		if (counter >= duty)
				off <= 1;
			else
				if (counter == 0)
					off <= 0;
				else
					off <= off;
		end
	end

	assign pwm_out = {8{!off}};
	
endmodule
