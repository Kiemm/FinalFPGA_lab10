library verilog;
use verilog.vl_types.all;
entity counter_9bit is
    port(
        clk             : in     vl_logic;
        re              : in     vl_logic;
        en_write        : in     vl_logic;
        incr_pc         : in     vl_logic;
        d               : in     vl_logic_vector(8 downto 0);
        q               : out    vl_logic_vector(8 downto 0)
    );
end counter_9bit;
