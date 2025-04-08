library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        Clk             : in     vl_logic;
        nRst            : in     vl_logic;
        out_clk         : out    vl_logic
    );
end timer;
