library verilog;
use verilog.vl_types.all;
entity ex1I_vlg_sample_tst is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ex1I_vlg_sample_tst;
