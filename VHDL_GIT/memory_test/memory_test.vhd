LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity memory_test is
	
	port
	(
		-- Input ports
		address					  : in  std_logic_vector(7 downto 0);
		data_in	 				  : in  std_logic_vector(7 downto 0);
		clock, writen, reset   : in std_logic;
		port_in_00, port_in_01 : in std_logic_vector(7 downto 0);

		-- Output ports
		data_out_1, data_out_2      : out std_logic_vector(6 downto 0);
		sal_address_1, sal_address_2: out std_logic_vector(6 downto 0);
		port_out_00, port_out_01    : out std_logic_vector(7 downto 0)
	);
end memory_test;

architecture arch_memory_test of memory_test is
	
	Component memory
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
end Component;
	
	Component BCD7Seg2
	port
	(
		-- Input ports
		IA,IB, IC, ID : in std_logic;
		-- Output ports
		F : out std_logic_vector (6 downto 0)
		
	);
	end Component;

	signal rom_data_out, rw_data_out:  std_logic_vector(7 downto 0);
	signal data_out : std_logic_vector(7 downto 0);
begin
		
		-- Bcd Salida
	BCD_1 : BCD7Seg2 port map (data_out(7), data_out(6), data_out(5), data_out(4), data_out_1); --Dec
	BCD_2 : BCD7Seg2 port map (data_out(3), data_out(2), data_out(1), data_out(0), data_out_2); --Un
	
		-- Bcd Dirección
	BCD_3 : BCD7Seg2 port map (address(7), address(6), address(5), address(4), sal_address_1); --Dec
	BCD_4 : BCD7Seg2 port map (address(3), address(2), address(1), address(0), sal_address_2); --Un
	
	MEM : memory port map (address, data_in, clock, writen, reset, port_in_00, port_in_01, data_out, port_out_00, port_out_01);
	
	
	
end arch_memory_test;
