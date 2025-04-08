library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        run             : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        IR              : in     vl_logic_vector(8 downto 0);
        flag            : in     vl_logic_vector(8 downto 0);
        mux_sel         : out    vl_logic_vector(3 downto 0);
        en_reg          : out    vl_logic_vector(15 downto 0);
        incr_pc         : out    vl_logic;
        addsub_sel      : out    vl_logic;
        W               : out    vl_logic;
        step            : out    vl_logic_vector(2 downto 0);
        IR_process      : out    vl_logic_vector(8 downto 0)
    );
end control_unit;
