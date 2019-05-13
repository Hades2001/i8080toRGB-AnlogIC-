library verilog;
use verilog.vl_types.all;
entity ImgROM is
    port(
        addra           : in     vl_logic_vector(14 downto 0);
        clka            : in     vl_logic;
        rsta            : in     vl_logic;
        doa             : out    vl_logic_vector(7 downto 0)
    );
end ImgROM;
