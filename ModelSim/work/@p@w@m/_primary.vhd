library verilog;
use verilog.vl_types.all;
entity PWM is
    generic(
        PWMWidth        : integer := 16
    );
    port(
        CLK             : in     vl_logic;
        nRST            : in     vl_logic;
        \OUT\           : out    vl_logic;
        PWMUpData       : in     vl_logic_vector;
        PWMConData      : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PWMWidth : constant is 1;
end PWM;
