library verilog;
use verilog.vl_types.all;
entity add1bit is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        somme           : out    vl_logic;
        cout            : out    vl_logic
    );
end add1bit;
