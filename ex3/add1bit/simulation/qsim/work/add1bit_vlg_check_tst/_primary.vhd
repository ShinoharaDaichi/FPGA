library verilog;
use verilog.vl_types.all;
entity add1bit_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        somme           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end add1bit_vlg_check_tst;
