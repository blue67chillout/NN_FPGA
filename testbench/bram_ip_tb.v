`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 08:30:29
// Design Name: 
// Module Name: bram_ip_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module bram_ip_tb;

    // Inputs
    reg clk;
    reg rst;
    reg load_en;
    reg [7:0] DI;
    reg [10:0] ADDR_IP;
    reg rescale;
    
    reg [7:0] DPL [0:27];

    // Outputs
    wire [7:0] D_OUT;
    wire load_done;

    // Instantiate the Unit Under Test (UUT)
    bram_ip uut (
        .clk(clk),
        .rst(rst),
        .load_en(load_en),
        .DI(DI),
        .ADDR_IP(ADDR_IP),
        .DPL_0(DPL[0]), .DPL_1(DPL[1]), .DPL_2(DPL[2]), .DPL_3(DPL[3]), .DPL_4(DPL[4]), .DPL_5(DPL[5]),
        .DPL_6(DPL[6]), .DPL_7(DPL[7]), .DPL_8(DPL[8]), .DPL_9(DPL[9]), .DPL_10(DPL[10]), .DPL_11(DPL[11]),
        .DPL_12(DPL[12]), .DPL_13(DPL[13]), .DPL_14(DPL[14]), .DPL_15(DPL[15]), .DPL_16(DPL[16]), .DPL_17(DPL[17]),
        .DPL_18(DPL[18]), .DPL_19(DPL[19]), .DPL_20(DPL[20]), .DPL_21(DPL[21]), .DPL_22(DPL[22]), .DPL_23(DPL[23]),
        .DPL_24(DPL[24]), .DPL_25(DPL[25]), .DPL_26(DPL[26]), .DPL_27(DPL[27]),
        .D_OUT(D_OUT),
        .load_done(load_done),
        .rescale(rescale)
    );

    // Clock Generation
    always #5 clk = ~clk;

    integer i;

    initial begin
        $display("=== BRAM IP Testbench Start ===");

        // Initialize inputs
        clk = 0;
        rst = 1;
        load_en = 0;
        DI = 8'd0;
        ADDR_IP = 11'd10;
        rescale = 0;

        // Fill DPL with test values
        for (i = 0; i < 28; i = i + 1) begin
            DPL[i] = i + 1; // Values: 1 to 28
        end

        // Apply reset
        #20;
        rst = 0;

        // Apply rescale
        #10;
        rescale = 1;
        #10;
        rescale = 0;

        // Start load
        #10;
        load_en = 1;

        // Wait for all data to be written
        wait (load_done);
        #10;
        load_en = 0;

        // Read from memory
        for (i = 0; i < 28; i = i + 1) begin
            ADDR_IP = 11'd10 + i;
            #10;
            $display("Read from BRAM[%0d]: %0d", ADDR_IP, D_OUT);
        end

       
end
endmodule

