library verilog;
use verilog.vl_types.all;
entity register_1bit is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        re              : in     vl_logic;
        q               : out    vl_logic
    );
end register_1bit;
