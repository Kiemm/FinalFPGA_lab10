library verilog;
use verilog.vl_types.all;
entity register_9bit is
    port(
        d               : in     vl_logic_vector(8 downto 0);
        clk             : in     vl_logic;
        en              : in     vl_logic;
        re              : in     vl_logic;
        q               : out    vl_logic_vector(8 downto 0)
    );
end register_9bit;
