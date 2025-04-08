library verilog;
use verilog.vl_types.all;
entity hexto7seg is
    port(
        C               : in     vl_logic_vector(3 downto 0);
        Dspl            : out    vl_logic_vector(0 to 6)
    );
end hexto7seg;
