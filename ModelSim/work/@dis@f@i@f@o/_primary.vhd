library verilog;
use verilog.vl_types.all;
entity DisFIFO is
    port(
        clkr            : in     vl_logic;
        clkw            : in     vl_logic;
        di              : in     vl_logic_vector(7 downto 0);
        re              : in     vl_logic;
        rst             : in     vl_logic;
        we              : in     vl_logic;
        do              : out    vl_logic_vector(15 downto 0);
        empty_flag      : out    vl_logic;
        full_flag       : out    vl_logic
    );
end DisFIFO;
