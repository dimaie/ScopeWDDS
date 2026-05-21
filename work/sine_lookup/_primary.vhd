library verilog;
use verilog.vl_types.all;
entity sine_lookup is
    port(
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector(10 downto 0);
        value           : out    vl_logic_vector(16 downto 0)
    );
end sine_lookup;
