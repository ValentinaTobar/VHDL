LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity RAM is

	port
	(
		-- Input ports
		clock, WE      : in std_logic;
		address	    : in  std_logic_vector(3 downto 0);
		data_in		 : in  std_logic_vector(7 downto 0);
		
		-- Output ports
		
		data_out	: out std_logic_vector(7 downto 0)
	);
end RAM;

architecture arch_RAM of RAM is
	
	type RAM_type is array (0 to 15) of std_logic_vector(7 downto 0);
	signal RAM: RAM_type;
	
begin
	MEMORY: process (clock)
		begin 
			if (clock'event and clock= '1') then
				if (WE= '1')then
					RAM(to_integer(unsigned(address))) <= data_in;
				else
					data_out <= RAM(to_integer(unsigned(address)));
				end if;
			end if;
	end process;

end arch_RAM;
