library verilog;
use verilog.vl_types.all;
entity bintobcd_9bit is
    port(
        in_Bin          : in     vl_logic_vector(8 downto 0);
        out_thousand    : out    vl_logic_vector(3 downto 0);
        out_hundred     : out    vl_logic_vector(3 downto 0);
        out_dozens      : out    vl_logic_vector(3 downto 0);
        out_unit        : out    vl_logic_vector(3 downto 0)
    );
end bintobcd_9bit;
