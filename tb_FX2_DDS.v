`timescale 1ns / 1ps

module tb_FX2_DDS;

    // Inputs
    reg FX2_CLK;
    reg [2:0] FX2_flags;
    reg FX2_PA_7;
    reg DAC_clk_in;

    // Bidirectionals
    wire [7:0] FX2_FD;
    reg [7:0] fx2_fd_reg;
    assign FX2_FD = fx2_fd_reg;

    // Outputs
    wire FX2_SLRD;
    wire FX2_SLWR;
    wire FX2_PA_2;
    wire FX2_PA_3;
    wire FX2_PA_4;
    wire FX2_PA_5;
    wire FX2_PA_6;
    wire DAC_clk_out;
    wire [9:0] DAC_data_out_1;
    wire [9:0] DAC_data_out_2;

    // Monitor DAC Output Transitions
    integer dac1_transitions = 0;
    integer dac2_transitions = 0;
    reg [9:0] prev_dac1;
    reg [9:0] prev_dac2;

    // Instantiate the Unit Under Test (UUT)
    FX2_DDS uut (
        .FX2_CLK(FX2_CLK), 
        .FX2_FD(FX2_FD), 
        .FX2_SLRD(FX2_SLRD), 
        .FX2_SLWR(FX2_SLWR), 
        .FX2_flags(FX2_flags), 
        .FX2_PA_2(FX2_PA_2), 
        .FX2_PA_3(FX2_PA_3), 
        .FX2_PA_4(FX2_PA_4), 
        .FX2_PA_5(FX2_PA_5), 
        .FX2_PA_6(FX2_PA_6), 
        .FX2_PA_7(FX2_PA_7), 
        .DAC_clk_in(DAC_clk_in), 
        .DAC_clk_out(DAC_clk_out), 
        .DAC_data_out_1(DAC_data_out_1), 
        .DAC_data_out_2(DAC_data_out_2)
    );

    // Clock generation
    initial begin
        FX2_CLK = 0;
        forever #10.41 FX2_CLK = ~FX2_CLK; // ~48 MHz FX2 Clock
    end
    
    initial begin
        DAC_clk_in = 0;
        forever #6.6 DAC_clk_in = ~DAC_clk_in; // ~75.75 MHz DAC Clock
    end

    // Task to simulate the FX2 controller pushing an 8-byte packet
    task send_8byte_payload;
        input [31:0] payload1;
        input [31:0] payload2;
        begin
            // The C# payload array sends the LSB first.
            // FX2_flags[0] == 1 means FIFO2 is NOT empty (data available)
            @(posedge FX2_CLK); #1;
            FX2_flags[0] = 1'b1;
            fx2_fd_reg = payload1[7:0];   // Byte 0
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload1[15:8];  // Byte 1
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload1[23:16]; // Byte 2
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload1[31:24]; // Byte 3
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload2[7:0];   // Byte 4
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload2[15:8];  // Byte 5
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload2[23:16]; // Byte 6
            
            @(posedge FX2_CLK); #1;
            fx2_fd_reg = payload2[31:24]; // Byte 7
            
            @(posedge FX2_CLK); #1;
            FX2_flags[0] = 1'b0;         // End of packet, FIFO empty
            fx2_fd_reg = 8'hZZ;
        end
    endtask

    initial begin
        // Force FPGA power-up state (0) into simulation to prevent 'x' propagation
        uut.fcdnai.FlagToggle_clkA = 0;
        uut.fcdnai.SyncA_clkB = 0;
        uut.dds_core1.acc = 0;
        uut.dds_core2.acc = 0;
        uut.DDS1_acc_inc = 0;
        uut.DDS2_acc_inc = 0;

        // Initialize Inputs
        FX2_flags = 3'b000; // All FIFOs empty initially (active low)
        FX2_PA_7 = 1;
        fx2_fd_reg = 8'hZZ;

        #100; // Wait 100 ns for global reset
        
        // Send Command for both DDSs: DDS 1 = 0x051EB851 (~1 MHz), DDS 2 = 0x028F5C28 (~0.5 MHz)
        $display("Sending command to DDS 1 and DDS 2...");
        send_8byte_payload(32'h051EB851, 32'h028F5C28); // Native 64-bit alignment
        #2000000; // Wait 2 milliseconds to allow the new 16-bit timeout to trigger

        // Verify DDS 1 expectation
        if (uut.DDS1_acc_inc === 32'h051EB851)
            $display("PASS: DDS 1 successfully latched 0x051EB851");
        else
            $display("FAIL: DDS 1 expected 0x051EB851 but got 0x%h", uut.DDS1_acc_inc);

        // Verify DDS 2 expectation and check for corruption
        if (uut.DDS2_acc_inc === 32'h028F5C28)
            $display("PASS: DDS 2 successfully latched 0x028F5C28");
        else
            $display("FAIL: DDS 2 expected 0x028F5C28 but got 0x%h", uut.DDS2_acc_inc);

        #10000; // Let it run for a while to observe accumulator wrapping
        
        // --- FINAL BOUNDARY TEST: Check DAC output pins ---
        $display("\n--- DAC OUTPUT PIN VERIFICATION ---");
        if (dac1_transitions > 10)
            $display("PASS: DAC 1 Output is oscillating correctly (%0d signal transitions observed).", dac1_transitions);
        else
            $display("FAIL: DAC 1 Output is completely flat!");

        if (dac2_transitions > 10)
            $display("PASS: DAC 2 Output is oscillating correctly (%0d signal transitions observed).", dac2_transitions);
        else
            $display("FAIL: DAC 2 Output is completely flat!");
            
        $stop;
    end

    always @(posedge DAC_clk_in) begin
        if (DAC_data_out_1 !== prev_dac1 && prev_dac1 !== 10'bx) dac1_transitions = dac1_transitions + 1;
        if (DAC_data_out_2 !== prev_dac2 && prev_dac2 !== 10'bx) dac2_transitions = dac2_transitions + 1;
        prev_dac1 <= DAC_data_out_1;
        prev_dac2 <= DAC_data_out_2;
    end
endmodule