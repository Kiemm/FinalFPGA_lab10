library verilog;
use verilog.vl_types.all;
entity double_dabble_stage is
    port(
        \in\            : in     vl_logic_vector(27 downto 0);
        \out\           : out    vl_logic_vector(27 downto 0)
    );
end double_dabble_stage;
