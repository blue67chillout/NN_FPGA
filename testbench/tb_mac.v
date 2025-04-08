`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 09:49:42
// Design Name: 
// Module Name: tb_mac
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

module tb_mac;

  reg clk;
  reg main_rst;
  reg mac_rst;
  reg rescale;

  // Inputs
  reg signed [7:0] A [0:27];
  reg signed [7:0] B [0:27];

  // Outputs
  wire signed [31:0] P [0:27];
  wire signed [31:0] PQ [0:27];

  // Clock generation
  always #5 clk = ~clk;

  integer i;

  // Instantiate the DUT using port flattening
  mac #(
    .M(16'd8),         // Example scale
    .S_shift(8),       // Right shift by 8
    .Z(0)              // Zero-point
  ) dut (
    .clk(clk),
    .main_rst(main_rst),
    .mac_rst(mac_rst),
    .rescale(rescale),

    .A_0(A[0]), .A_1(A[1]), .A_2(A[2]), .A_3(A[3]), .A_4(A[4]), .A_5(A[5]), .A_6(A[6]), .A_7(A[7]),
    .A_8(A[8]), .A_9(A[9]), .A_10(A[10]), .A_11(A[11]), .A_12(A[12]), .A_13(A[13]), .A_14(A[14]), .A_15(A[15]),
    .A_16(A[16]), .A_17(A[17]), .A_18(A[18]), .A_19(A[19]), .A_20(A[20]), .A_21(A[21]), .A_22(A[22]), .A_23(A[23]),
    .A_24(A[24]), .A_25(A[25]), .A_26(A[26]), .A_27(A[27]),

    .B_0(B[0]), .B_1(B[1]), .B_2(B[2]), .B_3(B[3]), .B_4(B[4]), .B_5(B[5]), .B_6(B[6]), .B_7(B[7]),
    .B_8(B[8]), .B_9(B[9]), .B_10(B[10]), .B_11(B[11]), .B_12(B[12]), .B_13(B[13]), .B_14(B[14]), .B_15(B[15]),
    .B_16(B[16]), .B_17(B[17]), .B_18(B[18]), .B_19(B[19]), .B_20(B[20]), .B_21(B[21]), .B_22(B[22]), .B_23(B[23]),
    .B_24(B[24]), .B_25(B[25]), .B_26(B[26]), .B_27(B[27]),

    .P0(P[0]), .P1(P[1]), .P2(P[2]), .P3(P[3]), .P4(P[4]), .P5(P[5]), .P6(P[6]), .P7(P[7]),
    .P8(P[8]), .P9(P[9]), .P10(P[10]), .P11(P[11]), .P12(P[12]), .P13(P[13]), .P14(P[14]), .P15(P[15]),
    .P16(P[16]), .P17(P[17]), .P18(P[18]), .P19(P[19]), .P20(P[20]), .P21(P[21]), .P22(P[22]), .P23(P[23]),
    .P24(P[24]), .P25(P[25]), .P26(P[26]), .P27(P[27]),

    .PQ_0(PQ[0]), .PQ_1(PQ[1]), .PQ_2(PQ[2]), .PQ_3(PQ[3]), .PQ_4(PQ[4]), .PQ_5(PQ[5]), .PQ_6(PQ[6]), .PQ_7(PQ[7]),
    .PQ_8(PQ[8]), .PQ_9(PQ[9]), .PQ_10(PQ[10]), .PQ_11(PQ[11]), .PQ_12(PQ[12]), .PQ_13(PQ[13]), .PQ_14(PQ[14]), .PQ_15(PQ[15]),
    .PQ_16(PQ[16]), .PQ_17(PQ[17]), .PQ_18(PQ[18]), .PQ_19(PQ[19]), .PQ_20(PQ[20]), .PQ_21(PQ[21]), .PQ_22(PQ[22]), .PQ_23(PQ[23]),
    .PQ_24(PQ[24]), .PQ_25(PQ[25]), .PQ_26(PQ[26]), .PQ_27(PQ[27])
  );

  initial begin
    // Initial values
    clk = 0;
    main_rst = 1;
    mac_rst = 1;
    rescale = 0;

    #10 main_rst = 0;
        mac_rst = 0;

    // Assign random input values
    for (i = 0; i < 28; i = i + 1) begin
      A[i] = $random % 128;
      B[i] = $random % 128;
    end

    // Wait for MACC outputs to compute
    #20;

    // Trigger quantization
    rescale = 1;
    #100 rescale = 0;

    // Wait for quantized outputs
    #2000;

    // Display MAC and Quantized Outputs
    $display("\n--- MAC and Quantized Outputs ---");
    for (i = 0; i < 28; i = i + 1) begin
      $display("MAC[%0d] = %0d, PQ[%0d] = %0d", i, P[i], i, PQ[i]);
    end

    $finish;
  end

endmodule

