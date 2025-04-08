library verilog;
use verilog.vl_types.all;
entity bin2bcd is
    port(
        bin             : in     vl_logic_vector(15 downto 0);
        thousands       : out    vl_logic_vector(3 downto 0);
        hundreds        : out    vl_logic_vector(3 downto 0);
        tens            : out    vl_logic_vector(3 downto 0);
        ones            : out    vl_logic_vector(3 downto 0)
    );
end bin2bcd;
