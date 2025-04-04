module mac #(
    parameter signed [15:0] M = 8,  // Scaling factor
    parameter integer S_shift = 8,   // Shift amount for quantization
    parameter integer Z = 0          // Zero-point adjustment
) (
    input clk,
    input main_rst,
    input mac_rst,
    input rescale,
    input signed [7:0] A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input signed [7:0] A_16,A_17,A_18,A_19,A_20,A_21,A_22,A_23,A_24,A_25,A_26,A_27,

    input signed [7:0] B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,B_9,B_10,B_11,B_12,B_13,B_14,B_15,
    input signed [7:0] B_16,B_17,B_18,B_19,B_20,B_21,B_22,B_23,B_24,B_25,B_26,B_27,

    output signed [31:0]P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,
    output signed [31:0]P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,

    output signed [31:0] PQ_0,PQ_1,PQ_2,PQ_3,PQ_4,PQ_5,PQ_6,PQ_7,
    output signed [31:0] PQ_8,PQ_9,PQ_10,PQ_11,PQ_12,PQ_13,PQ_14,PQ_15,
    output signed [31:0] PQ_16,PQ_17,PQ_18,PQ_19,PQ_20,PQ_21,PQ_22,PQ_23,
    output signed [31:0] PQ_24,PQ_25,PQ_26,PQ_27
    
);

  //  wire [WIDTH_P-1:0] P1; // Output from MACC_MACRO
  //wire [31:0]P0;
    assign rst = main_rst || mac_rst;
    // Instantiate MACC_MACRO
    MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst0 (
        .P(P0),              
        .A(A_0),               
        .ADDSUB(1'b1),       
        .B(B_0),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );

assign PQ_0 = rescale ? 
              ($signed(((P0 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P0 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P0 * M) >>> S_shift) + Z))) 
              : 8'd0;
           
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst1 (
        .P(P1),              
        .A(A_1),               
        .ADDSUB(1'b1),       
        .B(B_1),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );

assign PQ_1 = rescale ? 
              ($signed(((P1 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P1 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P1 * M) >>> S_shift) + Z))) 
              : 8'd0;

 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst2 (
        .P(P2),              
        .A(A_2),               
        .ADDSUB(1'b1),       
        .B(B_2),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );

assign PQ_2 = rescale ? 
              ($signed(((P2 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P2 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P2 * M) >>> S_shift) + Z))) 
              : 8'd0; 

  
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst3 (
        .P(P3),              
        .A(A_3),               
        .ADDSUB(1'b1),       
        .B(B_3),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );

assign PQ_3 = rescale ? 
              ($signed(((P3 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P3 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P3 * M) >>> S_shift) + Z))) 
              : 8'd0; 

    MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst4 (
        .P(P4),              
        .A(A_4),               
        .ADDSUB(1'b1),       
        .B(B_4),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_4 = rescale ? 
              ($signed(((P4 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P4 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P4 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst5 (
        .P(P5),              
        .A(A_5),               
        .ADDSUB(1'b1),       
        .B(B_5),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_5 = rescale ? 
              ($signed(((P5 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P5 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P5 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst6 (
        .P(P6),              
        .A(A_6),               
        .ADDSUB(1'b1),       
        .B(B_6),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_6 = rescale ? 
              ($signed(((P6 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P6 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P6 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst7 (
        .P(P7),              
        .A(A_7),               
        .ADDSUB(1'b1),       
        .B(B_7),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_7 = rescale ? 
              ($signed(((P7 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P7 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P7 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst8 (
        .P(P8),              
        .A(A_8),               
        .ADDSUB(1'b1),       
        .B(B_8),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_8 = rescale ? 
              ($signed(((P8 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P8 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P8 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst9 (
        .P(P9),              
        .A(A_9),               
        .ADDSUB(1'b1),       
        .B(B_9),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_9 = rescale ? 
              ($signed(((P9 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P9 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P9 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst10 (
        .P(P10),              
        .A(A_10),               
        .ADDSUB(1'b1),       
        .B(B_10),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_10 = rescale ? 
              ($signed(((P10 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P10 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P10 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst11 (
        .P(P11),              
        .A(A_11),               
        .ADDSUB(1'b1),       
        .B(B_11),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_11 = rescale ? 
              ($signed(((P11 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P11 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P11 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst12 (
        .P(P12),              
        .A(A_12),               
        .ADDSUB(1'b1),       
        .B(B_12),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_12 = rescale ? 
              ($signed(((P12 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P12 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P12 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst13 (
        .P(P13),              
        .A(A_13),               
        .ADDSUB(1'b1),       
        .B(B_13),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_13 = rescale ? 
              ($signed(((P13 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P13 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P13 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst14 (
        .P(P14),              
        .A(A_14),               
        .ADDSUB(1'b1),       
        .B(B_14),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_14 = rescale ? 
              ($signed(((P14 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P14 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P14 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst15 (
        .P(P15),              
        .A(A_15),               
        .ADDSUB(1'b1),       
        .B(B_15),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_15 = rescale ? 
              ($signed(((P15 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P15 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P15 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst16 (
        .P(P16),              
        .A(A_16),               
        .ADDSUB(1'b1),       
        .B(B_16),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_16 = rescale ? 
              ($signed(((P16 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P16 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P16 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst17 (
        .P(P17),              
        .A(A_17),               
        .ADDSUB(1'b1),       
        .B(B_17),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_17 = rescale ? 
              ($signed(((P17 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P17 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P17 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst18 (
        .P(P18),              
        .A(A_18),               
        .ADDSUB(1'b1),       
        .B(B_18),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_18 = rescale ? 
              ($signed(((P18 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P18 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P18 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst19 (
        .P(P19),              
        .A(A_19),               
        .ADDSUB(1'b1),       
        .B(B_19),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_19 = rescale ? 
              ($signed(((P19 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P19 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P19 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst20 (
        .P(P20),              
        .A(A_20),               
        .ADDSUB(1'b1),       
        .B(B_20),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_20 = rescale ? 
              ($signed(((P20 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P20 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P20 * M) >>> S_shift) + Z))) 
              : 8'd0;
 MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst21 (
        .P(P21),              
        .A(A_21),               
        .ADDSUB(1'b1),       
        .B(B_21),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    ); 

assign PQ_21 = rescale ? 
              ($signed(((P21 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P21 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P21 * M) >>> S_shift) + Z))) 
              : 8'd0;

MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst22 (
        .P(P22),              
        .A(A_22),               
        .ADDSUB(1'b1),       
        .B(B_22),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_22 = rescale ? 
              ($signed(((P22 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P22 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P22 * M) >>> S_shift) + Z))) 
              : 8'd0;
MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst23 (
        .P(P23),              
        .A(A_23),               
        .ADDSUB(1'b1),       
        .B(B_23),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_23 = rescale ? 
              ($signed(((P23 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P23 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P23 * M) >>> S_shift) + Z))) 
              : 8'd0;

MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst24 (
        .P(P24),              
        .A(A_24),               
        .ADDSUB(1'b1),       
        .B(B_24),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_24 = rescale ? 
              ($signed(((P24 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P24 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P24 * M) >>> S_shift) + Z))) 
              : 8'd0;

MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst25 (
        .P(P25),              
        .A(A_25),               
        .ADDSUB(1'b1),       
        .B(B_25),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_25 = rescale ? 
              ($signed(((P25 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P25 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P25 * M) >>> S_shift) + Z))) 
              : 8'd0;

MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst26 (
        .P(P26),              
        .A(A_26),               
        .ADDSUB(1'b1),       
        .B(B_26),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_26 = rescale ? 
              ($signed(((P26 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P26 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P26 * M) >>> S_shift) + Z))) 
              : 8'd0;
MACC_MACRO #(
        .DEVICE("7SERIES"), 
        .LATENCY(1),        
        .WIDTH_A(8),  
        .WIDTH_B(8),  
        .WIDTH_P(32)   
    ) MACC_MACRO_inst27 (
        .P(P27),              
        .A(A_27),               
        .ADDSUB(1'b1),       
        .B(B_27),               
        .CARRYIN(1'b0),      
        .CE(1'b1),           
        .CLK(clk),           
        .LOAD(1'b0),         
        .LOAD_DATA({8{1'b0}}), 
        .RST(rst)            
    );
assign PQ_27 = rescale ? 
              ($signed(((P27 * M) >>> S_shift) + Z) > 127 ? 127 : 
              ($signed(((P27 * M) >>> S_shift) + Z) < -128 ? -128 : 
              $signed(((P27 * M) >>> S_shift) + Z))) 
              : 8'd0;

endmodule
