library verilog;
use verilog.vl_types.all;
entity DDS_sine_lookup_linearinterpolated is
    generic(
        acc_width       : integer := 32;
        lookup_addr_width: integer := 11;
        lookup_value_width: integer := 17;
        linearinterpolation_width: integer := 8;
        DAC_width       : integer := 10
    );
    port(
        clk             : in     vl_logic;
        acc_inc         : in     vl_logic_vector;
        value           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of acc_width : constant is 1;
    attribute mti_svvh_generic_type of lookup_addr_width : constant is 1;
    attribute mti_svvh_generic_type of lookup_value_width : constant is 1;
    attribute mti_svvh_generic_type of linearinterpolation_width : constant is 1;
    attribute mti_svvh_generic_type of DAC_width : constant is 1;
end DDS_sine_lookup_linearinterpolated;
