library verilog;
use verilog.vl_types.all;
entity LCD8080Ctrl is
    generic(
        A_Res           : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0);
        A_CTRL          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        A_Pix           : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        A_BL            : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi1);
        A_Test          : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi0)
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        HSYNC           : in     vl_logic;
        VSYNC           : in     vl_logic;
        J80_CLK         : in     vl_logic;
        J80_RS          : in     vl_logic;
        J80_We          : in     vl_logic;
        J80_Re          : out    vl_logic;
        J80_Data        : in     vl_logic_vector(7 downto 0);
        FIFOWe          : out    vl_logic;
        FIFO_WClk       : out    vl_logic;
        LCD_BL          : out    vl_logic;
        FrameCtrl       : out    vl_logic;
        RGBData         : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of A_Res : constant is 2;
    attribute mti_svvh_generic_type of A_CTRL : constant is 2;
    attribute mti_svvh_generic_type of A_Pix : constant is 2;
    attribute mti_svvh_generic_type of A_BL : constant is 2;
    attribute mti_svvh_generic_type of A_Test : constant is 2;
end LCD8080Ctrl;
