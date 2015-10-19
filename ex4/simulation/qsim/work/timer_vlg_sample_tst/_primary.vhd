library verilog;
use verilog.vl_types.all;
entity timer_vlg_sample_tst is
    port(
        en              : in     vl_logic;
        fin             : in     vl_logic_vector(8 downto 0);
        hor             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end timer_vlg_sample_tst;
