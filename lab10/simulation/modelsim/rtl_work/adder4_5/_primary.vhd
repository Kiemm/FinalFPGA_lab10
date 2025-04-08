library verilog;
use verilog.vl_types.all;
entity adder4_5 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sum             : out    vl_logic_vector(4 downto 0)
    );
end adder4_5;
