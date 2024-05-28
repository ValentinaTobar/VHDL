LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity rw_96x8_sync is

	port
	(
		-- Input ports
		clock, writen : in std_logic;
		address	     : in  std_logic_vector(7 downto 0);
		data_in		  : in  std_logic_vector(7 downto 0);
		
		-- Output ports
		
		data_out	: out std_logic_vector(7 downto 0)
	);
end rw_96x8_sync;

architecture arch_rw_96x8_sync of rw_96x8_sync is
	
	type rw_96x8_sync_type is array (128 to 223) of std_logic_vector(7 downto 0);
	signal RW : rw_96x8_sync_type;
	signal EN : std_logic;
	
begin
	enable : process (address)
		begin
			if ( (to_integer(unsigned(address)) >= 128) and
				(to_integer(unsigned(address)) <= 223)) then
					EN <= '1';
			else
					EN <= '0';
			end if;
		end process;
		
	memory : process (clock)
		begin
			if (clock'event and clock='1') then
				if (EN='1' and writen='1') then
					RW(to_integer(unsigned(address))) <= data_in;
				elsif (EN='1' and writen='0') then
					data_out <= RW(to_integer(unsigned(address)));
				end if;
			end if;
	end process;

end arch_rw_96x8_sync;
