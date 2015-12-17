//-----------------------------------------------------
// Design Name : uart 
// File Name   : uart.v
// Function    : Simple UART
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module uart (
reset          ,
rxclk          ,
rx_data        ,
rx_in       
);
// Port declarations
input        reset          ;
input        rxclk          ;
output [1:0] rx_data        ;
input        rx_in          ;

// Internal Variables 
reg [1:0]    rx_reg         ;
reg [1:0]    rx_data        ;
reg [2:0]    rx_sample_cnt  ;
reg [2:0]    rx_cnt         ;  
reg          rx_frame_err   ;
reg          rx_over_run    ;
reg          rx_empty       ;
reg          rx_d1          ;
reg          rx_d2          ;
reg          rx_d3          ;
reg          rx_busy        ;
reg        	 uld_rx_data = 0;
reg 	       rx_enable = 1;
reg 			 xor_bit  	;


// UART RX Logic
always @ (posedge rxclk or posedge reset)
if (reset) 
  begin
    rx_reg        <= 0;
	//rx_data 		<= 0;
    rx_sample_cnt <= 0;
    rx_cnt        <= 0;
    rx_frame_err  <= 0;
    rx_over_run   <= 0;
    rx_empty      <= 1;
    rx_d1         <= 1;
    rx_d2         <= 1;
    rx_busy       <= 0;
	 uld_rx_data 	<= 0;
  end 
else 
  begin
    // Synchronize the asynch signal
    rx_d1 <= rx_in;
    rx_d2 <= rx_d1;
    // Uload the rx data
    if (uld_rx_data) 
      begin
        rx_data  <= rx_reg;
        rx_empty <= 1;
        uld_rx_data <= 0;
      end
    // Receive data only when rx is enabled
    if (rx_enable) 
      begin
        // Check if just received start of frame
        if (!rx_busy && !rx_d2) 
          begin
            rx_busy       <= 1;
            rx_sample_cnt <= 1;
            rx_cnt        <= 0;
          end
        // Start of frame detected, Proceed with rest of data
        if (rx_busy) 
          begin
            rx_sample_cnt <= rx_sample_cnt + 1;
            // Logic to sample at middle of data
            if (rx_sample_cnt == 3)//скорость передачи 
              begin
                if ((rx_d2 == 1) && (rx_cnt == 0)) 
                  begin
                    rx_busy <= 0;
                  end 
                else 
                  begin
                    rx_cnt <= rx_cnt + 1; 
                    // Start storing the rx data
                    if (rx_cnt > 0 && rx_cnt < 3) 
                      begin
                        rx_reg[2 - rx_cnt] <= rx_d2;//старший бит
                      end
                    if (rx_cnt == 4) 
                      begin
                        rx_busy <= 0;
						xor_bit = rx_reg[0] ^ rx_reg[1]; //вычисляем бит проверки на четность\нечетность
                        // Check if End of frame received correctly
								if (!(rx_d2 && rx_d3 && xor_bit))
                          begin
                            rx_frame_err <= 1;
                          end 
                        else 
                          begin
                            //rx_empty     <= 0;
                            rx_frame_err <= 0;
                            // Check if last rx data was not unloaded,
                            rx_over_run  <= (rx_empty) ? 0 : 1;
                            //write to output register
                            rx_data  <= rx_reg;
									 //uld_rx_data <= 1;
                          end
                      end
                  end
                 rx_d3 <= rx_d2;
              end 
          end 
      end
    if (!rx_enable) 
      begin
        rx_busy <= 0;
      end
  end

endmodule
