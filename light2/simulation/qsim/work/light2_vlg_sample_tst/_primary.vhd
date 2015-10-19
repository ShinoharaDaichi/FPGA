library verilog;
use verilog.vl_types.all;
entity light2_vlg_sample_tst is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end light2_vlg_sample_tst;
