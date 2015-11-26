	component niosII is
		port (
			btn_export                       : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			clk_clk                          : in    std_logic                     := 'X';             -- clk
			flash_bus_tcm_address_out        : out   std_logic_vector(22 downto 0);                    -- tcm_address_out
			flash_bus_tcm_outputenable_n_out : out   std_logic_vector(0 downto 0);                     -- tcm_outputenable_n_out
			flash_bus_tcm_read_n_out         : out   std_logic_vector(0 downto 0);                     -- tcm_read_n_out
			flash_bus_tcm_reset_n_out        : out   std_logic_vector(0 downto 0);                     -- tcm_reset_n_out
			flash_bus_tcm_write_n_out        : out   std_logic_vector(0 downto 0);                     -- tcm_write_n_out
			flash_bus_tcm_data_out           : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- tcm_data_out
			flash_bus_tcm_chipselect_n_out   : out   std_logic_vector(0 downto 0);                     -- tcm_chipselect_n_out
			hex_export                       : out   std_logic_vector(31 downto 0);                    -- export
			pwm_readdata                     : out   std_logic_vector(7 downto 0);                     -- readdata
			ram_bus_tcm_address_out          : out   std_logic_vector(20 downto 0);                    -- tcm_address_out
			ram_bus_tcm_byteenable_n_out     : out   std_logic_vector(1 downto 0);                     -- tcm_byteenable_n_out
			ram_bus_tcm_outputenable_n_out   : out   std_logic_vector(0 downto 0);                     -- tcm_outputenable_n_out
			ram_bus_tcm_write_n_out          : out   std_logic_vector(0 downto 0);                     -- tcm_write_n_out
			ram_bus_tcm_data_out             : inout std_logic_vector(15 downto 0) := (others => 'X'); -- tcm_data_out
			ram_bus_tcm_chipselect_n_out     : out   std_logic_vector(0 downto 0);                     -- tcm_chipselect_n_out
			reset_reset_n                    : in    std_logic                     := 'X'              -- reset_n
		);
	end component niosII;

	u0 : component niosII
		port map (
			btn_export                       => CONNECTED_TO_btn_export,                       --       btn.export
			clk_clk                          => CONNECTED_TO_clk_clk,                          --       clk.clk
			flash_bus_tcm_address_out        => CONNECTED_TO_flash_bus_tcm_address_out,        -- flash_bus.tcm_address_out
			flash_bus_tcm_outputenable_n_out => CONNECTED_TO_flash_bus_tcm_outputenable_n_out, --          .tcm_outputenable_n_out
			flash_bus_tcm_read_n_out         => CONNECTED_TO_flash_bus_tcm_read_n_out,         --          .tcm_read_n_out
			flash_bus_tcm_reset_n_out        => CONNECTED_TO_flash_bus_tcm_reset_n_out,        --          .tcm_reset_n_out
			flash_bus_tcm_write_n_out        => CONNECTED_TO_flash_bus_tcm_write_n_out,        --          .tcm_write_n_out
			flash_bus_tcm_data_out           => CONNECTED_TO_flash_bus_tcm_data_out,           --          .tcm_data_out
			flash_bus_tcm_chipselect_n_out   => CONNECTED_TO_flash_bus_tcm_chipselect_n_out,   --          .tcm_chipselect_n_out
			hex_export                       => CONNECTED_TO_hex_export,                       --       hex.export
			pwm_readdata                     => CONNECTED_TO_pwm_readdata,                     --       pwm.readdata
			ram_bus_tcm_address_out          => CONNECTED_TO_ram_bus_tcm_address_out,          --   ram_bus.tcm_address_out
			ram_bus_tcm_byteenable_n_out     => CONNECTED_TO_ram_bus_tcm_byteenable_n_out,     --          .tcm_byteenable_n_out
			ram_bus_tcm_outputenable_n_out   => CONNECTED_TO_ram_bus_tcm_outputenable_n_out,   --          .tcm_outputenable_n_out
			ram_bus_tcm_write_n_out          => CONNECTED_TO_ram_bus_tcm_write_n_out,          --          .tcm_write_n_out
			ram_bus_tcm_data_out             => CONNECTED_TO_ram_bus_tcm_data_out,             --          .tcm_data_out
			ram_bus_tcm_chipselect_n_out     => CONNECTED_TO_ram_bus_tcm_chipselect_n_out,     --          .tcm_chipselect_n_out
			reset_reset_n                    => CONNECTED_TO_reset_reset_n                     --     reset.reset_n
		);

