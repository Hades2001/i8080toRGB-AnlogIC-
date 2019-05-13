library verilog;
use verilog.vl_types.all;
entity CLK_MOD is
    port(
        CLK             : in     vl_logic;
        RSTn            : in     vl_logic;
        CLK_OUT         : out    vl_logic;
        Count_REG       : in     vl_logic_vector(31 downto 0)
    );
end CLK_MOD;
