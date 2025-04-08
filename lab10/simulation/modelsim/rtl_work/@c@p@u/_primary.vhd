library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        in_Din          : in     vl_logic_vector(8 downto 0);
        in_clk          : in     vl_logic;
        in_re           : in     vl_logic;
        in_run          : in     vl_logic;
        out_Addr        : out    vl_logic_vector(8 downto 0);
        out_Dout        : out    vl_logic_vector(8 downto 0);
        out_W           : out    vl_logic;
        step            : out    vl_logic_vector(2 downto 0);
        IR_process      : out    vl_logic_vector(8 downto 0);
        IR              : out    vl_logic_vector(8 downto 0);
        R0              : out    vl_logic_vector(8 downto 0);
        R1              : out    vl_logic_vector(8 downto 0);
        R2              : out    vl_logic_vector(8 downto 0);
        R3              : out    vl_logic_vector(8 downto 0);
        R4              : out    vl_logic_vector(8 downto 0);
        R5              : out    vl_logic_vector(8 downto 0);
        R6              : out    vl_logic_vector(8 downto 0);
        R7              : out    vl_logic_vector(8 downto 0);
        A               : out    vl_logic_vector(8 downto 0);
        G               : out    vl_logic_vector(8 downto 0);
        addsub          : out    vl_logic_vector(8 downto 0);
        Mux_out         : out    vl_logic_vector(3 downto 0);
        en_reg          : out    vl_logic_vector(15 downto 0)
    );
end CPU;
