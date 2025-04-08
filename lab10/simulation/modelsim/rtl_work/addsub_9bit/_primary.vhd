library verilog;
use verilog.vl_types.all;
entity addsub_9bit is
    port(
        A               : in     vl_logic_vector(8 downto 0);
        B               : in     vl_logic_vector(8 downto 0);
        sub_mode        : in     vl_logic;
        result          : out    vl_logic_vector(8 downto 0)
    );
end addsub_9bit;
