library verilog;
use verilog.vl_types.all;
entity add4bit_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        somme           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end add4bit_vlg_check_tst;
