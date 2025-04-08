`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 10:33:56
// Design Name: 
// Module Name: bram_array_tb
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

module bram_array_tb;

  // Inputs
  reg CLK = 0;
  reg RST = 0;
  reg EN = 1;
  reg WE = 0; // Read-only mode
  reg [10:0] ADDR = 0;
  reg [7:0] DI = 8'd0;

  // Outputs
  wire [7:0] DO_0, DO_1, DO_2, DO_3, DO_4, DO_5, DO_6, DO_7;
  wire [7:0] DO_8, DO_9, DO_10, DO_11, DO_12, DO_13, DO_14, DO_15;
  wire [7:0] DO_16, DO_17, DO_18, DO_19, DO_20, DO_21, DO_22, DO_23;
  wire [7:0] DO_24, DO_25, DO_26, DO_27;

  // Instantiate the module
  bram_array uut (
    .CLK(CLK),
    .RST(RST),
    .EN(EN),
    .WE(WE),
    .ADDR(ADDR),
    .DI(DI),
    .DO_0(DO_0), .DO_1(DO_1), .DO_2(DO_2), .DO_3(DO_3), .DO_4(DO_4), .DO_5(DO_5), .DO_6(DO_6), .DO_7(DO_7),
    .DO_8(DO_8), .DO_9(DO_9), .DO_10(DO_10), .DO_11(DO_11), .DO_12(DO_12), .DO_13(DO_13), .DO_14(DO_14), .DO_15(DO_15),
    .DO_16(DO_16), .DO_17(DO_17), .DO_18(DO_18), .DO_19(DO_19), .DO_20(DO_20), .DO_21(DO_21), .DO_22(DO_22), .DO_23(DO_23),
    .DO_24(DO_24), .DO_25(DO_25), .DO_26(DO_26), .DO_27(DO_27)
  );

  // Clock generation: 10ns period (100 MHz)
  always #5 CLK = ~CLK;

  integer i;

  initial begin
    $display("Starting BRAM array testbench...");
    
    // Wait for reset
    #20;
    RST = 1; #10; RST = 0;

    // Read the first 20 addresses
    for (i = 0; i < 785; i = i + 1) begin
      ADDR = i;
      #10; // Wait for data to settle
      $display("ADDR = %0d: DO_0=%h, DO_1=%h, DO_2=%h, ..., DO_27=%h", 
                ADDR, DO_0, DO_1, DO_2, DO_27);
    end

    $display("BRAM test completed.");
    $stop;
  end

endmodule


