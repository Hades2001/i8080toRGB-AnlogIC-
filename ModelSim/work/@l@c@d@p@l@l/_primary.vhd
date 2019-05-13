library verilog;
use verilog.vl_types.all;
entity LCDPLL is
    port(
        refclk          : in     vl_logic;
        reset           : in     vl_logic;
        clk0_out        : out    vl_logic;
        clk1_out        : out    vl_logic;
        clk2_out        : out    vl_logic;
        clk3_out        : out    vl_logic
    );
end LCDPLL;
