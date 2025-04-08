library verilog;
use verilog.vl_types.all;
entity rom_program is
    port(
        clk             : in     vl_logic;
        en_write        : in     vl_logic;
        addr            : in     vl_logic_vector(8 downto 0);
        wdata           : in     vl_logic_vector(8 downto 0);
        rdata           : out    vl_logic_vector(8 downto 0)
    );
end rom_program;
