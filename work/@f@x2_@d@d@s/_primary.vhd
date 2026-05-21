library verilog;
use verilog.vl_types.all;
entity FX2_DDS is
    port(
        FX2_CLK         : in     vl_logic;
        FX2_FD          : inout  vl_logic_vector(7 downto 0);
        FX2_SLRD        : out    vl_logic;
        FX2_SLWR        : out    vl_logic;
        FX2_flags       : in     vl_logic_vector(2 downto 0);
        FX2_PA_2        : out    vl_logic;
        FX2_PA_3        : out    vl_logic;
        FX2_PA_4        : out    vl_logic;
        FX2_PA_5        : out    vl_logic;
        FX2_PA_6        : out    vl_logic;
        FX2_PA_7        : in     vl_logic;
        DAC_clk_in      : in     vl_logic;
        DAC_clk_out     : out    vl_logic;
        DAC_data_out_1  : out    vl_logic_vector(9 downto 0);
        DAC_data_out_2  : out    vl_logic_vector(9 downto 0)
    );
end FX2_DDS;
