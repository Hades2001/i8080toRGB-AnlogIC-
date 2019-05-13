library verilog;
use verilog.vl_types.all;
entity reg_sr_as_w1 is
    generic(
        REGSET          : string  := "RESET"
    );
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        en              : in     vl_logic;
        reset           : in     vl_logic;
        set             : in     vl_logic;
        q               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REGSET : constant is 1;
end reg_sr_as_w1;
