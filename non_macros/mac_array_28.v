`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 14:50:00
// Design Name: 
// Module Name: mac_array_28
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


module mac_array_28 #(
    parameter signed [15:0] M = 8,     // Scaling factor
    parameter integer S_shift = 8,     // Shift amount for quantization
    parameter integer Z = 0            // Zero-point adjustment
)(
    input clk,
    input main_rst,
    input mac_rst,
    input rescale,

    input signed [7:0] A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input signed [7:0] A_16,A_17,A_18,A_19,A_20,A_21,A_22,A_23,A_24,A_25,A_26,A_27,

    input signed [7:0] B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,B_9,B_10,B_11,B_12,B_13,B_14,B_15,
    input signed [7:0] B_16,B_17,B_18,B_19,B_20,B_21,B_22,B_23,B_24,B_25,B_26,B_27,

    output signed [31:0] P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,
    output signed [31:0] P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,

    output signed [31:0] PQ_0,PQ_1,PQ_2,PQ_3,PQ_4,PQ_5,PQ_6,PQ_7,
    output signed [31:0] PQ_8,PQ_9,PQ_10,PQ_11,PQ_12,PQ_13,PQ_14,PQ_15,
    output signed [31:0] PQ_16,PQ_17,PQ_18,PQ_19,PQ_20,PQ_21,PQ_22,PQ_23,
    output signed [31:0] PQ_24,PQ_25,PQ_26,PQ_27
);

mac2 mac2_0  (.clk(clk), .reset(reset), .A(A_0),  .B(B_0),  .P(P0));
assign PQ_0 = rescale ? 
              ($signed(((P0 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P0 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P0 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_1  (.clk(clk), .reset(reset), .A(A_1),  .B(B_1),  .P(P1));
assign PQ_1 = rescale ? 
              ($signed(((P1 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P1 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P1 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_2  (.clk(clk), .reset(reset), .A(A_2),  .B(B_2),  .P(P2));
assign PQ_2 = rescale ? 
              ($signed(((P2 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P2 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P2 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_3  (.clk(clk), .reset(reset), .A(A_3),  .B(B_3),  .P(P3));
assign PQ_3 = rescale ? 
              ($signed(((P3 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P3 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P3 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_4  (.clk(clk), .reset(reset), .A(A_4),  .B(B_4),  .P(P4));
assign PQ_4 = rescale ? 
              ($signed(((P4 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P4 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P4 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_5  (.clk(clk), .reset(reset), .A(A_5),  .B(B_5),  .P(P5));
assign PQ_5 = rescale ? 
              ($signed(((P5 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P5 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P5 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_6  (.clk(clk), .reset(reset), .A(A_6),  .B(B_6),  .P(P6));
assign PQ_6 = rescale ? 
              ($signed(((P6 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P6 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P6 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_7  (.clk(clk), .reset(reset), .A(A_7),  .B(B_7),  .P(P7));
assign PQ_7 = rescale ? 
              ($signed(((P7 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P7 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P7 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_8  (.clk(clk), .reset(reset), .A(A_8),  .B(B_8),  .P(P8));
assign PQ_8 = rescale ? 
              ($signed(((P8 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P8 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P8 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_9  (.clk(clk), .reset(reset), .A(A_9),  .B(B_9),  .P(P9));
assign PQ_9 = rescale ? 
              ($signed(((P9 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P9 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P9 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_10 (.clk(clk), .reset(reset), .A(A_10), .B(B_10), .P(P10));
assign PQ_10 = rescale ? 
              ($signed(((P10 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P10 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P10 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_11 (.clk(clk), .reset(reset), .A(A_11), .B(B_11), .P(P11));
assign PQ_11 = rescale ? 
              ($signed(((P11 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P11 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P11 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_12 (.clk(clk), .reset(reset), .A(A_12), .B(B_12), .P(P12));
assign PQ_12 = rescale ? 
              ($signed(((P12 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P12 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P12 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_13 (.clk(clk), .reset(reset), .A(A_13), .B(B__13), .P(P13));
assign PQ_13 = rescale ? 
              ($signed(((P13 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P13 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P13 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_14 (.clk(clk), .reset(reset), .A(A_14), .B(B_14), .P(P14));
assign PQ_14 = rescale ? 
              ($signed(((P14 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P14 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P14 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_15 (.clk(clk), .reset(reset), .A(A_15), .B(B_15), .P(P15));
assign PQ_15 = rescale ? 
              ($signed(((P15 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P15 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P15 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_16 (.clk(clk), .reset(reset), .A(A_16), .B(B_16), .P(P16));
assign PQ_16 = rescale ? 
              ($signed(((P16 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P16 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P16 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_17 (.clk(clk), .reset(reset), .A(A_17), .B(B_17), .P(P17));
assign PQ_17 = rescale ? 
              ($signed(((P17 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P17 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P17 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_18 (.clk(clk), .reset(reset), .A(A_18), .B(B_18), .P(P18));
assign PQ_18 = rescale ? 
              ($signed(((P18 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P18 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P18 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_19 (.clk(clk), .reset(reset), .A(A_19), .B(B_19), .P(P19));
assign PQ_19 = rescale ? 
              ($signed(((P19 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P19 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P19 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_20 (.clk(clk), .reset(reset), .A(A_20), .B(B_20), .P(P20));
assign PQ_20 = rescale ? 
              ($signed(((P20 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P20 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P20 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_21 (.clk(clk), .reset(reset), .A(A_21), .B(B_21), .P(P21));
assign PQ_21 = rescale ? 
              ($signed(((21 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P21 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P21 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_22 (.clk(clk), .reset(reset), .A(A_22), .B(B_22), .P(P22));
assign PQ_22 = rescale ? 
              ($signed(((P22 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P22 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P22 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_23 (.clk(clk), .reset(reset), .A(A_23), .B(B_23), .P(P23));
assign PQ_23 = rescale ? 
              ($signed(((P23 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P23 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P23 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_24 (.clk(clk), .reset(reset), .A(A_24), .B(B_24), .P(P24));
assign PQ_24 = rescale ? 
              ($signed(((P24 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P24 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P24 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_25 (.clk(clk), .reset(reset), .A(A_25), .B(B_25), .P(P25));
assign PQ_25 = rescale ? 
              ($signed(((P25 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P25 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P25 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_26 (.clk(clk), .reset(reset), .A(A_26), .B(B_26), .P(P26));
assign PQ_0 = rescale ? 
              ($signed(((P26 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P26 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P26 * M) >>> S_shift) + Z))) 
              : 8'd0;
mac2 mac2_27 (.clk(clk), .reset(reset), .A(A_27), .B(B_27), .P(P27));
assign PQ_0 = rescale ? 
              ($signed(((P27 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P27 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P27 * M) >>> S_shift) + Z))) 
              : 8'd0;
              
endmodule

