LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity memory is
	
	port
	(
		-- Input ports
		address					  : in  std_logic_vector(7 downto 0);
		data_in	 				  : in  std_logic_vector(7 downto 0);
		clock, writen, reset   : in std_logic;
		port_in_00, port_in_01 : in std_logic_vector(7 downto 0);

		-- Output ports
		data_out	: out std_logic_vector(7 downto 0);
		port_out_00, port_out_01: out std_logic_vector(7 downto 0)
	);
end memory;

architecture arch_memory of memory is
	
	component ROM_128X8_SYNC 
		port
		(
			-- Input ports
			address	: in  std_logic_vector(7 downto 0);
			clock    : in std_logic;
			-- Output ports
		
			data_out	: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component rw_96x8_sync 
		port
		(
			-- Input ports
			clock, writen : in std_logic;
			address	     : in  std_logic_vector(7 downto 0);
			data_in		  : in  std_logic_vector(7 downto 0);
			
			-- Output ports
			
			data_out	: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component output_ports_16 
		port
		(
			-- Input ports
			clock, writen, reset: in std_logic;
			address	     		  : in  std_logic_vector(7 downto 0);
			data_in		  	  	  : in  std_logic_vector(7 downto 0);
			
			-- Output ports
			
			port_out_00, port_out_01: out std_logic_vector(7 downto 0)
		);
	end component;

	signal rom_data_out, rw_data_out:  std_logic_vector(7 downto 0);

begin

	MUX1 : process (address, rom_data_out, rw_data_out, port_in_00, port_in_01)

		begin
			if ( (to_integer(unsigned(address)) >= 0) and(to_integer(unsigned(address)) <= 127)) then
				data_out <= rom_data_out;
				
			elsif ( (to_integer(unsigned(address)) >= 128) and(to_integer(unsigned(address)) <= 223)) then
				data_out <= rw_data_out;
				
			elsif (address = x"F0") then data_out <= port_in_00;
			
			elsif (address = x"F1") then data_out <= port_in_01;
			
			else data_out <= x"00";
			
			end if;
		end process;
		
		-- Señal Rom
	S_ROM : ROM_128X8_SYNC port map  (address, clock, rom_data_out);
		-- Señal Ram
	S_RAM : rw_96x8_sync port map  (clock, writen, address, data_in, rw_data_out);
		-- Señal outputs
	OUT_S : output_ports_16 port map  (clock, writen, reset, address, data_in, port_out_00, port_out_01);

end arch_memory;
