library verilog;
use verilog.vl_types.all;
entity TOP is
    port(
        clk             : in     vl_logic;
        nRST            : in     vl_logic;
        LED             : out    vl_logic_vector(1 downto 0);
        LCDBK           : out    vl_logic;
        LCD_CLK         : out    vl_logic;
        LCD_HYNC        : out    vl_logic;
        LCD_SYNC        : out    vl_logic;
        LCD_DEN         : out    vl_logic;
        LCD_R           : out    vl_logic_vector(7 downto 0);
        LCD_G           : out    vl_logic_vector(7 downto 0);
        LCD_B           : out    vl_logic_vector(7 downto 0)
    );
end TOP;
