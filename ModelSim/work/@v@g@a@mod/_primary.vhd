library verilog;
use verilog.vl_types.all;
entity VGAMod is
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        PixelClk        : in     vl_logic;
        FrameCtrl       : in     vl_logic;
        LCD_DE          : out    vl_logic;
        LCD_HSYNC       : out    vl_logic;
        LCD_VSYNC       : out    vl_logic;
        LCD_B           : out    vl_logic_vector(7 downto 0);
        LCD_G           : out    vl_logic_vector(7 downto 0);
        LCD_R           : out    vl_logic_vector(7 downto 0);
        FIFO_RST        : out    vl_logic;
        FIFO_CLK        : out    vl_logic;
        FIFO_RE         : out    vl_logic;
        FIFO_Empty      : in     vl_logic;
        FIFO_Data       : in     vl_logic_vector(15 downto 0)
    );
end VGAMod;
