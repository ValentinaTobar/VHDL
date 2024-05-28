library verilog;
use verilog.vl_types.all;
entity ROM_128X8_SYNC_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ROM_128X8_SYNC_vlg_sample_tst;
