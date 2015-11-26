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
	reg [31:0]	dt;
	reg [31:0] counter;
	reg offchet;
	reg offnechet;
	reg [31:0] rd_data;
	wire div_en, duty_en;

	/////////////////////////////////////////////////////////////////////
	// Avalon slave interface
	
	//chip select and address decoder
	
	//register write
	always @(posedge clk or negedge clr_n)
	begin
		if (clr_n == 0)
		begin
			div <= 0;
			duty <= 0;
			dt<=0;
		end
		else
		begin
		if(cs&!wr_n)
			begin
			case(addr)
			2'b00: div <= wr_data;
			2'b01: duty <= wr_data;
			2'b10: dt <= wr_data;
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
		2'b10: rd_data = dt;
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
		if (clr_n == 0)
			begin
				offchet <= 0;
				offnechet <= 1;
			end
		else
		case(counter)
		0:
			begin
				offchet <= 0;
				offnechet <= 1;
			end
		duty: offchet <= 1;
		(duty+dt): offnechet <= 0;
		default:
			begin
				offchet <= offchet;
				offnechet <= offnechet;
			end
		endcase
	end

	assign pwm_out = {!offnechet,!offchet,!offnechet,!offchet,!offnechet,!offchet,!offnechet,!offchet};
	
endmodule
