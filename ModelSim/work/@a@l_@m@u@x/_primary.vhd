library verilog;
use verilog.vl_types.all;
entity AL_MUX is
    port(
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        sel             : in     vl_logic;
        o               : out    vl_logic
    );
end AL_MUX;
