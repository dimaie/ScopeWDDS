library verilog;
use verilog.vl_types.all;
entity Flag_CrossDomain is
    port(
        clkA            : in     vl_logic;
        FlagIn_clkA     : in     vl_logic;
        clkB            : in     vl_logic;
        FlagOut_clkB    : out    vl_logic
    );
end Flag_CrossDomain;
