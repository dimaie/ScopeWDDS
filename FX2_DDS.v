// Sample code for FX2 USB-2 interface
// (c) fpga4fun.com KNJN LLC - 2008

// This example shows how to create a DDS (direct digital synthesizer) controlled from USB-2

module FX2_DDS(
	FX2_CLK, FX2_FD, FX2_SLRD, FX2_SLWR, FX2_flags, 
	FX2_PA_2, FX2_PA_3, FX2_PA_4, FX2_PA_5, FX2_PA_6, FX2_PA_7,

	DAC_clk_in, DAC_clk_out, DAC_data_out_1, DAC_data_out_2, LED
);

input FX2_CLK;
inout [7:0] FX2_FD;
input [2:0] FX2_flags;
output FX2_SLRD, FX2_SLWR;

//output FX2_PA_0;
//output FX2_PA_1;
output FX2_PA_2;
output FX2_PA_3;
output FX2_PA_4;
output FX2_PA_5;
output FX2_PA_6;
input FX2_PA_7;

input DAC_clk_in;
output DAC_clk_out;
output [9:0] DAC_data_out_1;
output [9:0] DAC_data_out_2;
output LED;

////////////////////////////////////////////////////////////////////////////////
// Rename "FX2" ports into "FIFO" ports, to give them more meaningful names
// FX2 USB signals are active low, take care of them now
// Note: You probably don't need to change anything in this section

// FX2 outputs
wire FIFO_CLK = FX2_CLK;

wire FIFO2_empty = ~FX2_flags[0];	wire FIFO2_data_available = ~FIFO2_empty;
wire FIFO3_empty = ~FX2_flags[1];	wire FIFO3_data_available = ~FIFO3_empty;
wire FIFO4_full = ~FX2_flags[2];	wire FIFO4_ready_to_accept_data = ~FIFO4_full;
wire FIFO5_full = ~FX2_PA_7;		wire FIFO5_ready_to_accept_data = ~FIFO5_full;
//assign FX2_PA_0 = 1'b1;
//assign FX2_PA_1 = 1'b1;
assign FX2_PA_3 = 1'b1;

// FX2 inputs
wire FIFO_RD, FIFO_WR, FIFO_PKTEND, FIFO_DATAIN_OE, FIFO_DATAOUT_OE;
wire FX2_SLRD = ~FIFO_RD;
wire FX2_SLWR = ~FIFO_WR;
assign FX2_PA_2 = ~FIFO_DATAIN_OE;
assign FX2_PA_6 = ~FIFO_PKTEND;

wire [1:0] FIFO_FIFOADR;
assign {FX2_PA_5, FX2_PA_4} = FIFO_FIFOADR;

// FX2 bidirectional data bus
wire [7:0] FIFO_DATAIN = FX2_FD;
wire [7:0] FIFO_DATAOUT;
assign FX2_FD = FIFO_DATAOUT_OE ? FIFO_DATAOUT : 8'hZZ;

////////////////////////////////////////////////////////////////////////////////
// So now everything is in positive logic
//	FIFO_RD, FIFO_WR, FIFO_DATAIN, FIFO_DATAOUT, FIFO_DATAIN_OE, FIFO_DATAOUT_OE, FIFO_PKTEND, FIFO_FIFOADR
//	FIFO2_empty, FIFO2_data_available
//	FIFO3_empty, FIFO3_data_available
//	FIFO4_full, FIFO4_ready_to_accept_data
//	FIFO5_full, FIFO5_ready_to_accept_data

////////////////////////////////////////////////////////////////////////////////
assign FIFO_FIFOADR = 2'b00;		// select FIFO2
assign FIFO_RD = 1'b1;			// always read
assign FIFO_WR = 1'b0;			// never write
assign FIFO_DATAOUT = 8'h00;	// never write, so this value is not used
assign FIFO_DATAIN_OE = 1'b1;			// always read data
assign FIFO_DATAOUT_OE = 1'b0;			// never output data
assign FIFO_PKTEND = 1'b0;

// We completely remove the timeout logic because USB gaps break it.
// Instead, we strictly count exactly 24 valid bytes.
reg [191:0] FIFO_value;
reg [4:0] byte_count;
reg packet_ready;

always @(posedge FIFO_CLK) begin
	packet_ready <= 1'b0;
	if (FIFO2_data_available) begin
		FIFO_value <= {FIFO_DATAIN, FIFO_value[191:8]};
		if (byte_count == 5'd23) begin
			packet_ready <= 1'b1;
			byte_count <= 5'd0;
		end else begin
			byte_count <= byte_count + 5'd1;
		end
	end
end

wire [5:0] pll_clks;
wire clk_151MHz = pll_clks[0];

altpll altpll_component (
	.inclk ({1'b0, DAC_clk_in}),
	.clk (pll_clks)
);
defparam
	altpll_component.operation_mode = "NORMAL",
	altpll_component.inclk0_input_frequency = 13200, // Period in ps for 75.7575 MHz
	altpll_component.clk0_multiply_by = 2,
	altpll_component.clk0_divide_by = 1,
	altpll_component.clk1_multiply_by = 2,
	altpll_component.clk1_divide_by = 1,
	altpll_component.clk1_phase_shift = "3300",      // 180 degrees at 151.515 MHz
	altpll_component.lpm_type = "altpll";

// cross clock domain to DDS
wire new_acc_inc;
Flag_CrossDomain fcdnai(.clkA(FIFO_CLK), .FlagIn_clkA(packet_ready), .clkB(clk_151MHz), .FlagOut_clkB(new_acc_inc));

reg [31:0] DDS1_acc_inc;
reg [31:0] DDS1_phase;
reg [31:0] DDS1_amp;
reg [31:0] DDS2_acc_inc;
reg [31:0] DDS2_phase;
reg [31:0] DDS2_amp;

always @(posedge clk_151MHz) begin
	if(new_acc_inc) begin
		DDS1_acc_inc <= FIFO_value[31:0];
		DDS1_phase   <= FIFO_value[63:32];
		DDS1_amp     <= FIFO_value[95:64];
		DDS2_acc_inc <= FIFO_value[127:96];
		DDS2_phase   <= FIFO_value[159:128];
		DDS2_amp     <= FIFO_value[191:160];
	end
end

assign LED = 1'b1; // Tie LED off (inactive high)

// DDS
assign DAC_clk_out = pll_clks[1];
DDS_sine_lookup_linearinterpolated dds_core1(.clk(clk_151MHz), .acc_inc(DDS1_acc_inc), .phase_offset(DDS1_phase), .amplitude(DDS1_amp[15:0]), .value(DAC_data_out_1));
DDS_sine_lookup_linearinterpolated dds_core2(.clk(clk_151MHz), .acc_inc(DDS2_acc_inc), .phase_offset(DDS2_phase), .amplitude(DDS2_amp[15:0]), .value(DAC_data_out_2));

endmodule

/////////////////////////////////////////////////////
module Flag_CrossDomain(
    clkA, FlagIn_clkA, 
    clkB, FlagOut_clkB);

// clkA domain signals
input clkA, FlagIn_clkA;

// clkB domain signals
input clkB;
output FlagOut_clkB;

reg FlagToggle_clkA;
reg [2:0] SyncA_clkB;

always @(posedge clkA) if(FlagIn_clkA) FlagToggle_clkA <= ~FlagToggle_clkA;  // this changes level when a flag is seen
always @(posedge clkB) SyncA_clkB <= {SyncA_clkB[1:0], FlagToggle_clkA};   // which can then be synched to clkB

assign FlagOut_clkB = (SyncA_clkB[2] ^ SyncA_clkB[1]);  // recreate the flag from the level change
endmodule

/////////////////////////////////////////////////////
module DDS_sine_lookup_linearinterpolated(clk, acc_inc, phase_offset, amplitude, value);
parameter acc_width = 32;
parameter lookup_addr_width = 11;
parameter lookup_value_width = 17;
parameter linearinterpolation_width = 8;
parameter DAC_width = 10;
localparam P = lookup_value_width + linearinterpolation_width;

input clk;
input [acc_width-1:0] acc_inc;
input [acc_width-1:0] phase_offset;
input [15:0] amplitude;
output reg [DAC_width-1:0] value;

reg [acc_width-1:0] acc;
always @(posedge clk) acc <= acc + acc_inc;

reg [acc_width-1:0] acc_shifted;
always @(posedge clk) acc_shifted <= acc + phase_offset;
wire [lookup_value_width-1:0] sine1_lv;  sine_lookup sine1(.clk(clk), .addr(acc_shifted[acc_width-1:acc_width-lookup_addr_width]  ), .value(sine1_lv));
wire [lookup_value_width-1:0] sine2_lv;  sine_lookup sine2(.clk(clk), .addr(acc_shifted[acc_width-1:acc_width-lookup_addr_width]+11'd1), .value(sine2_lv));

reg [linearinterpolation_width-1:0] acc_delayA;  always @(posedge clk) acc_delayA <= acc_shifted[acc_width-lookup_addr_width-1:acc_width-lookup_addr_width-linearinterpolation_width];
reg [linearinterpolation_width-1:0] acc_delayB;  always @(posedge clk) acc_delayB <= acc_delayA;
reg [linearinterpolation_width-1:0] acc_delayC;  always @(posedge clk) acc_delayC <= acc_delayB;

wire [linearinterpolation_width  :0] sine1_mf = (1 << linearinterpolation_width) - acc_delayC;
wire [linearinterpolation_width-1:0] sine2_mf = acc_delayC;
reg [P-1:0] sine_p; always @(posedge clk) sine_p <= sine1_lv*sine1_mf + sine2_lv*sine2_mf;

wire signed [P-1:0] sine_ac = {~sine_p[P-1], sine_p[P-2:0]};
wire signed [16:0] amp_signed = {1'b0, amplitude};
reg signed [P+16:0] sine_ac_amp;
always @(posedge clk) sine_ac_amp <= sine_ac * amp_signed;

always @(posedge clk) value <= {~sine_ac_amp[P+16], sine_ac_amp[P+14 : P+16-DAC_width]};
endmodule

/////////////////////////////////////////////////////
// sine lookup value module
// 3 clock latency
module sine_lookup(clk, addr, value);
input clk;
input [10:0] addr;
output [16:0] value;

wire [15:0] ROM_sine_q;
lpm_ram_dp ROM_sine(
	.wrclock(clk), .data(16'h0), .wraddress(9'h0), .wren(1'b0),
	.rdclock(clk), .q(ROM_sine_q), .rdaddress(addr[9] ? ~addr[8:0] : addr[8:0])
);
defparam ROM_sine.lpm_width = 16;
defparam ROM_sine.lpm_widthad = 9;
defparam ROM_sine.lpm_file = "sine.mif";
defparam ROM_sine.lpm_outdata = "REGISTERED";

reg [1:0] addr_MSBdelay; always @(posedge clk) addr_MSBdelay <= {addr_MSBdelay[0],addr[10]};
reg [16:0] value; always @(posedge clk) value <= addr_MSBdelay[1] ? 17'h0FFFF - ROM_sine_q : 17'h10000 + ROM_sine_q;
endmodule
