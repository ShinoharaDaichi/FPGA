library verilog;
use verilog.vl_types.all;
entity ex2_vlg_sample_tst is
    port(
        x               : in     vl_logic;
        y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ex2_vlg_sample_tst;
