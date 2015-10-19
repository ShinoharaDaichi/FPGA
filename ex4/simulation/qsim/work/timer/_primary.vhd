library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        hor             : in     vl_logic;
        en              : in     vl_logic;
        fin             : in     vl_logic_vector(8 downto 0);
        hordiv          : out    vl_logic
    );
end timer;
