`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 13:49:07
// Design Name: 
// Module Name: mac2
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

module mac2 #(
    parameter INPUT_WIDTH = 8,
    parameter ACCUMULATOR_WIDTH = 32
) (
    input clk,
    input reset,
    input [INPUT_WIDTH-1:0] A,
    input [INPUT_WIDTH-1:0] B,
    output reg [ACCUMULATOR_WIDTH-1:0] P
);

    wire [2*INPUT_WIDTH - 1 : 0] product;

    w_mul inst0 (
        .a(A),
        .b(B),
        .result(product)
    );

    always @(posedge clk) begin
        if (reset)
            P <= 0;
        else
            P <= P + product;
    end

endmodule

