library verilog;
use verilog.vl_types.all;
entity ROM_128X8_SYNC is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end ROM_128X8_SYNC;
