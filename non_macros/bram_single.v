`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 23:33:01
// Design Name: 
// Module Name: bram_single
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


module bram_single #(
    parameter INIT_FILE = "default.mem"
)(
    output reg [7:0] DO,
    input wire [10:0] ADDR,
    input wire CLK,
    input wire [7:0] DI,
    input wire EN,
    input wire REGCE,  // Ignored if DO_REG = 0
    input wire RST,
    input wire WE
);

    // Memory array
    reg [7:0] mem [0:1000];

    // === Load memory from parameterized file ===
    initial begin
        $display("Loading BRAM contents from %s...", INIT_FILE);
        $readmemh(INIT_FILE, mem);
    end

    always @(posedge CLK) begin
        if (RST) begin
            DO <= 8'd0;
        end else if (EN) begin
            if (WE) begin
                mem[ADDR] <= DI;       // WRITE_FIRST behavior
                DO <= DI;
            end else begin
                DO <= mem[ADDR];
            end
        end
    end

endmodule

