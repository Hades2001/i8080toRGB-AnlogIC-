library verilog;
use verilog.vl_types.all;
entity AL_DFF is
    generic(
        INI             : vl_logic := Hi0
    );
    port(
        reset           : in     vl_logic;
        set             : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INI : constant is 1;
end AL_DFF;
