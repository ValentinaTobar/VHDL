library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        clock           : in     vl_logic;
        WE              : in     vl_logic;
        address         : in     vl_logic_vector(3 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end RAM;
