library verilog;
use verilog.vl_types.all;
entity LCDCTRL is
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        HSYNC           : in     vl_logic;
        VSYNC           : in     vl_logic;
        FIFOWe          : out    vl_logic;
        RGBData         : out    vl_logic_vector(7 downto 0)
    );
end LCDCTRL;
