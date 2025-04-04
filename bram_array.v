`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 08:32:18 PM
// Design Name: 
// Module Name: bram_array
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


module bram_array #(
    parameter FILE_NAME_0 = "weights_0.mem",
    parameter FILE_NAME_1 = "weights_1.mem",
    parameter FILE_NAME_2 = "weights_2.mem",
    parameter FILE_NAME_3 = "weights_3.mem",
    parameter FILE_NAME_4 = "weights_4.mem",
    parameter FILE_NAME_5 = "weights_5.mem",
    parameter FILE_NAME_6 = "weights_6.mem",
    parameter FILE_NAME_7 = "weights_7.mem",
    parameter FILE_NAME_8 = "weights_8.mem",
    parameter FILE_NAME_9 = "weights_9.mem",
    parameter FILE_NAME_10 = "weights_10.mem",
    parameter FILE_NAME_11 = "weights_11.mem",
    parameter FILE_NAME_12 = "weights_12.mem",
    parameter FILE_NAME_13 = "weights_13.mem",
    parameter FILE_NAME_14 = "weights_14.mem",
    parameter FILE_NAME_15 = "weights_15.mem",
    parameter FILE_NAME_16 = "weights_16.mem",
    parameter FILE_NAME_17 = "weights_17.mem",
    parameter FILE_NAME_18 = "weights_18.mem",
    parameter FILE_NAME_19 = "weights_19.mem",
    parameter FILE_NAME_20 = "weights_20.mem",
    parameter FILE_NAME_21 = "weights_21.mem",
    parameter FILE_NAME_22 = "weights_22.mem",
    parameter FILE_NAME_23 = "weights_23.mem",
    parameter FILE_NAME_24 = "weights_24.mem",
    parameter FILE_NAME_25 = "weights_25.mem",
    parameter FILE_NAME_26 = "weights_26.mem",
    parameter FILE_NAME_27 = "weights_27.mem"
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

      BRAM_SINGLE_MACRO #(
      .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
      .DEVICE("7SERIES"), // Target Device: "7SERIES" 
      .DO_REG(0), // Optional output register (0 or 1)
      .INIT(36'h000000000), // Initial values on output port
      .INIT_FILE (FILE_NAME_0), // Optional initialization file
      .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      .SRVAL(36'h000000000), // Set/Reset value for port output
      .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
      
   ) BRAM_SINGLE_MACRO_inst_0 (
      .DO(DO_0),       // Output data, width defined by READ_WIDTH parameter
      .ADDR(ADDR),   // Input address, width defined by read/write port depth
      .CLK(CLK),     // 1-bit input clock
      .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
      .EN(EN),       // 1-bit input RAM enable
      .REGCE(0), // 1-bit input output register enable
      .RST(RST),     // 1-bit input reset
      .WE(WE)        // Input write enable, width defined by write port depth
   );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_1), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_1 (
        .DO(DO_1),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_2), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_2 (
        .DO(DO_2),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_3), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_3 (
        .DO(DO_3),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_4), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_4 (
        .DO(DO_4),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_5), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_5 (
        .DO(DO_5),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_6), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_6 (
        .DO(DO_6),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_7), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_7 (
        .DO(DO_7),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_8), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_8 (
        .DO(DO_8),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_9), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_9 (
        .DO(DO_9),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_10), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_10 (
        .DO(DO_10),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0),     
        .RST(RST),    
        .WE(WE)        
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_11), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_11 (
        .DO(DO_11),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_12), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_12 (
        .DO(DO_12),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_13), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_13 (
        .DO(DO_13),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_14), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_14 (
        .DO(DO_14),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_15), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_15 (
        .DO(DO_15),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_16), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_16 (
        .DO(DO_16),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_17), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_17 (
        .DO(DO_17),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_18), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_18 (
        .DO(DO_18),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_19), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_19 (
        .DO(DO_19),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_20), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_20 (
        .DO(DO_20),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_21), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_21 (
        .DO(DO_21),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_22), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_22 (
        .DO(DO_22),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_23), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_23 (
        .DO(DO_23),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_24), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_24 (
        .DO(DO_24),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_25), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_25 (
        .DO(DO_25),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_26), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_26 (
        .DO(DO_26),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );

    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"), // Target BRAM, "18Kb" or "36Kb" 
        .DEVICE("7SERIES"), // Target Device: "7SERIES" 
        .DO_REG(0), // Optional output register (0 or 1)
        .INIT(36'h000000000), // Initial values on output port
        .INIT_FILE (FILE_NAME_27), // Optional initialization file
        .WRITE_WIDTH(8), // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .READ_WIDTH(8),  // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        .SRVAL(36'h000000000), // Set/Reset value for port output
        .WRITE_MODE("WRITE_FIRST")// "WRITE_FIRST", "READ_FIRST", "NO_CHANGE" 
        
    ) BRAM_SINGLE_MACRO_inst_27 (
        .DO(DO_27),       // Output data, width defined by READ_WIDTH parameter
        .ADDR(ADDR),   // Input address, width defined by read/write port depth
        .CLK(CLK),     // 1-bit input clock
        .DI(DI),       // Input data port, width defined by WRITE_WIDTH parameter
        .EN(EN),       // 1-bit input RAM enable
        .REGCE(0), // 1-bit input output register enable
        .RST(RST),     // 1-bit input reset
        .WE(WE)        // Input write enable, width defined by write port depth
    );
    
endmodule

