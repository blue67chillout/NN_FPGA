`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 15:18:36
// Design Name: 
// Module Name: ram_array
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


module ram_array #(
    parameter FILE_NAME_0 = "neuron_0.mem",
    parameter FILE_NAME_1 = "neuron_1.mem",
    parameter FILE_NAME_2 = "neuron_2.mem",
    parameter FILE_NAME_3 = "neuron_3.mem",
    parameter FILE_NAME_4 = "neuron_4.mem",
    parameter FILE_NAME_5 = "neuron_5.mem",
    parameter FILE_NAME_6 = "neuron_6.mem",
    parameter FILE_NAME_7 = "neuron_7.mem",
    parameter FILE_NAME_8 = "neuron_8.mem",
    parameter FILE_NAME_9 = "neuron_9.mem",
    parameter FILE_NAME_10 = "neuron_10.mem",
    parameter FILE_NAME_11 = "neuron_11.mem",
    parameter FILE_NAME_12 = "neuron_12.mem",
    parameter FILE_NAME_13 = "neuron_13.mem",
    parameter FILE_NAME_14 = "neuron_14.mem",
    parameter FILE_NAME_15 = "neuron_15.mem",
    parameter FILE_NAME_16 = "neuron_16.mem",
    parameter FILE_NAME_17 = "neuron_17.mem",
    parameter FILE_NAME_18 = "neuron_18.mem",
    parameter FILE_NAME_19 = "neuron_19.mem",
    parameter FILE_NAME_20 = "neuron_20.mem",
    parameter FILE_NAME_21 = "neuron_21.mem",
    parameter FILE_NAME_22 = "neuron_22.mem",
    parameter FILE_NAME_23 = "neuron_23.mem",
    parameter FILE_NAME_24 = "neuron_24.mem",
    parameter FILE_NAME_25 = "neuron_25.mem",
    parameter FILE_NAME_26 = "neuron_26.mem",
    parameter FILE_NAME_27 = "neuron_27.mem"
) (
input CLK,
    input RST,
    input EN,
    input WE,
    input [10:0] ADDR,
    input [7:0] DI,
    output [7:0] DO_0,
    output [7:0] DO_1,
    output [7:0] DO_2,
    output [7:0] DO_3,
    output [7:0] DO_4,
    output [7:0] DO_5,
    output [7:0] DO_6,
    output [7:0] DO_7,
    output [7:0] DO_8,
    output [7:0] DO_9,
    output [7:0] DO_10,
    output [7:0] DO_11,
    output [7:0] DO_12,
    output [7:0] DO_13,
    output [7:0] DO_14,
    output [7:0] DO_15,
    output [7:0] DO_16,
    output [7:0] DO_17,
    output [7:0] DO_18,
    output [7:0] DO_19,
    output [7:0] DO_20,
    output [7:0] DO_21,
    output [7:0] DO_22,
    output [7:0] DO_23,
    output [7:0] DO_24,
    output [7:0] DO_25,
    output [7:0] DO_26,
    output [7:0] DO_27
);


bram_single #(
    .INIT_FILE("neuron_0.mem")
) bram_instance0 (
    .DO(DO_0),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);


bram_single #(
    .INIT_FILE("neuron_1.mem")
) bram_instance1 (
.DO(DO_1),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_2.mem")
) bram_instance2 (
    .DO(DO_2),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_3.mem")
) bram_instance3 (
    .DO(DO_3),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_4.mem")
) bram_instance4 (
    .DO(DO_4),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_5.mem")
) bram_instance5 (
    .DO(DO_5),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_6.mem")
) bram_instance6 (
    .DO(DO_6),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_7.mem")
) bram_instance7 (
    .DO(DO_7),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_8.mem")
) bram_instance8 (
    .DO(DO_8),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_9.mem")
) bram_instance9 (
    .DO(DO_9),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_10.mem")
) bram_instance10 (
    .DO(DO_10),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_11.mem")
) bram_instance11 (
    .DO(DO_11),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_12.mem")
) bram_instance12 (
    .DO(DO_12),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_13.mem")
) bram_instance13 (
    .DO(DO_13),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_14.mem")
) bram_instance14 (
    .DO(DO_14),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_15.mem")
) bram_instance15 (
.DO(DO_15),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_16.mem")
) bram_instance16 (
    .DO(DO_16),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_17.mem")
) bram_instance17 (
    .DO(DO_17),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_18.mem")
) bram_instance18 (
   .DO(DO_18),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_19.mem")
) bram_instance19 (
   .DO(DO_19),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_20.mem")
) bram_instance20 (
    .DO(DO_20),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_21.mem")
) bram_instance21 (
    .DO(DO_21),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_22.mem")
) bram_instance22 (
    .DO(DO_22),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_23.mem")
) bram_instance23 (
    .DO(DO_23),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_24.mem")
) bram_instance24 (
    .DO(DO_24),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_25.mem")
) bram_instance25 (
    .DO(DO_25),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_26.mem")
) bram_instance26 (
    .DO(DO_26),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

bram_single #(
    .INIT_FILE("neuron_27.mem")
) bram_instance27 (
    .DO(DO_27),
    .ADDR(ADDR),
    .CLK(CLK),
    .DI(DI),
    .EN(EN),
    .REGCE(1'b0),
    .RST(RST),
    .WE(WE)
);

endmodule

