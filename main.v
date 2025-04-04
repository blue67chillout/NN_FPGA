module main #(
   parameter FILE_NAME_0 = "neuron0.mem",
    parameter FILE_NAME_1 = "neuron1.mem",
    parameter FILE_NAME_2 = "neuron2.mem",
    parameter FILE_NAME_3 = "neuron3.mem",
    parameter FILE_NAME_4 = "neuron4.mem",
    parameter FILE_NAME_5 = "neuron5.mem",
    parameter FILE_NAME_6 = "neuron6.mem",
    parameter FILE_NAME_7 = "neuron7.mem",
    parameter FILE_NAME_8 = "neuron8.mem",
    parameter FILE_NAME_9 = "neuron9.mem",
    parameter FILE_NAME_10 = "neuron10.mem",
    parameter FILE_NAME_11 = "neuron11.mem",
    parameter FILE_NAME_12 = "neuron12.mem",
    parameter FILE_NAME_13 = "neuron13.mem",
    parameter FILE_NAME_14 = "neuron14.mem",
    parameter FILE_NAME_15 = "neuron15.mem",
    parameter FILE_NAME_16 = "neuron16.mem",
    parameter FILE_NAME_17 = "neuron17.mem",
    parameter FILE_NAME_18 = "neuron18.mem",
    parameter FILE_NAME_19 = "neuron19.mem",
    parameter FILE_NAME_20 = "neuron20.mem",
    parameter FILE_NAME_21 = "neuron21.mem",
    parameter FILE_NAME_22 = "neuron22.mem",
    parameter FILE_NAME_23 = "neuron23.mem",
    parameter FILE_NAME_24 = "neuron24.mem",
    parameter FILE_NAME_25 = "neuron25.mem",
    parameter FILE_NAME_26 = "neuron26.mem",
    parameter FILE_NAME_27 = "neuron27.mem"
) (
    input clk,
    input rst,
    input start,
    input [7:0]DI,
    output DOO_0,DOO_1,DOO_2,DOO_3,DOO_4,DOO_5,DOO_6,DOO_7,
    DOO_8,DOO_9,DOO_10,DOO_11,DOO_12,DOO_13,DOO_14,DOO_15,
    DOO_16,DOO_17,DOO_18,DOO_19,DOO_20,DOO_21,DOO_22,DOO_23,
    DOO_24,DOO_25,DOO_26,DOO_27,
    
    output PP0,PP1,PP2,PP3,PP4,PP5,PP6,PP7,PP8,PP9,PP10,PP11,PP12,
    PP13,PP14,PP15,PP16,PP17,PP18,PP19,PP20,PP21,PP22,PP23,PP24,PP25,PP26,PP27,

    output DO_OUT,

    output done
);

  
    wire load_en;
    wire load_done;
    wire mac_en;
    wire act_en;
    wire rescale;
    wire mac_rst;
    wire [7:0] data_out;
    
    wire [10:0] ADDR;
    wire [10:0] ADDR_IP;

    wire EN;
    assign EN=1;

    wire WE;
    assign WE=0;

    wire [7:0] DO_0; wire [7:0] DO_1; wire [7:0] DO_2; wire [7:0] DO_3; wire [7:0] DO_4; wire [7:0] DO_5;
    wire [7:0] DO_6; wire [7:0] DO_7; wire [7:0] DO_8; wire [7:0] DO_9; wire [7:0] DO_10; wire [7:0] DO_11;
    wire [7:0] DO_12; wire [7:0] DO_13; wire [7:0] DO_14; wire [7:0] DO_15; wire [7:0] DO_16; wire [7:0] DO_17;
    wire [7:0] DO_18; wire [7:0] DO_19; wire [7:0] DO_20; wire [7:0] DO_21; wire [7:0] DO_22; wire [7:0] DO_23;
    wire [7:0] DO_24; wire [7:0] DO_25; wire [7:0] DO_26; wire [7:0] DO_27;
   
bram_array #(.FILE_NAME_0(FILE_NAME_0),
    .FILE_NAME_1(FILE_NAME_1),.FILE_NAME_2(FILE_NAME_2),.FILE_NAME_3(FILE_NAME_3),.FILE_NAME_4(FILE_NAME_4),
    .FILE_NAME_5(FILE_NAME_5),.FILE_NAME_6(FILE_NAME_6),.FILE_NAME_7(FILE_NAME_7),.FILE_NAME_8(FILE_NAME_8),
    .FILE_NAME_9(FILE_NAME_9),.FILE_NAME_10(FILE_NAME_10),.FILE_NAME_11(FILE_NAME_11),.FILE_NAME_12(FILE_NAME_12),
    .FILE_NAME_13(FILE_NAME_13), .FILE_NAME_14(FILE_NAME_14),.FILE_NAME_15(FILE_NAME_15),.FILE_NAME_16(FILE_NAME_16),
    .FILE_NAME_17(FILE_NAME_17), .FILE_NAME_18(FILE_NAME_18),.FILE_NAME_19(FILE_NAME_19), .FILE_NAME_20(FILE_NAME_20),
    .FILE_NAME_21(FILE_NAME_21), .FILE_NAME_22(FILE_NAME_22),.FILE_NAME_23(FILE_NAME_23),.FILE_NAME_24(FILE_NAME_24),
    .FILE_NAME_25(FILE_NAME_25),.FILE_NAME_26(FILE_NAME_26),.FILE_NAME_27(FILE_NAME_27)
) bram_array_inst (
    .CLK(clk),
    .RST(rst),
    .WE(WE),
    .EN(EN),
    .ADDR(ADDR),
    .DI(DI),
    .DO_0(DO_0),.DO_1(DO_1), .DO_2(DO_2), .DO_3(DO_3),.DO_4(DO_4),.DO_5(DO_5),.DO_6(DO_6),.DO_7(DO_7),
    .DO_8(DO_8),.DO_9(DO_9),.DO_10(DO_10), .DO_11(DO_11),.DO_12(DO_12), .DO_13(DO_13), .DO_14(DO_14),
    .DO_15(DO_15),.DO_16(DO_16),.DO_17(DO_17),.DO_18(DO_18), .DO_19(DO_19),.DO_20(DO_20),.DO_21(DO_21),
    .DO_22(DO_22), .DO_23(DO_23), .DO_24(DO_24),.DO_25(DO_25),.DO_26(DO_26),.DO_27(DO_27)
);

    wire [7:0] DPL_0; wire [7:0] DPL_1; wire [7:0] DPL_2; wire [7:0] DPL_3; wire [7:0] DPL_4; wire [7:0] DPL_5;
    wire [7:0] DPL_6; wire [7:0] DPL_7; wire [7:0] DPL_8; wire [7:0] DPL_9; wire [7:0] DPL_10; wire [7:0] DPL_11;
    wire [7:0] DPL_12; wire [7:0] DPL_13; wire [7:0] DPL_14; wire [7:0] DPL_15; wire [7:0] DPL_16; wire [7:0] DPL_17;
    wire [7:0] DPL_18; wire [7:0] DPL_19; wire [7:0] DPL_20; wire [7:0] DPL_21; wire [7:0] DPL_22; wire [7:0] DPL_23;
    wire [7:0] DPL_24; wire [7:0] DPL_25; wire [7:0] DPL_26; wire [7:0] DPL_27;
    
    wire [7:0] D_OUT;
    
   bram_ip bram_ip_0 (
    .clk(clk), .rst(rst),.load_en(load_en), .DI(DI), .ADDR_IP(ADDR_IP),
    .DPL_0(DPL_0), .DPL_1(DPL_1), .DPL_2(DPL_2), .DPL_3(DPL_3), .DPL_4(DPL_4), .DPL_5(DPL_5),
    .DPL_6(DPL_6), .DPL_7(DPL_7), .DPL_8(DPL_8), .DPL_9(DPL_9), .DPL_10(DPL_10), .DPL_11(DPL_11),
    .DPL_12(DPL_12), .DPL_13(DPL_13), .DPL_14(DPL_14), .DPL_15(DPL_15), .DPL_16(DPL_16), .DPL_17(DPL_17),
    .DPL_18(DPL_18), .DPL_19(DPL_19), .DPL_20(DPL_20), .DPL_21(DPL_21), .DPL_22(DPL_22), .DPL_23(DPL_23),
    .DPL_24(DPL_24), .DPL_25(DPL_25), .DPL_26(DPL_26), .DPL_27(DPL_27),
    .D_OUT(D_OUT),.load_done(load_done),.rescale(rescale)
);

wire [31:0] P0; wire [31:0] P1; wire [31:0] P2; wire [31:0] P3; wire [31:0] P4; wire [31:0] P5;
wire [31:0] P6; wire [31:0] P7; wire [31:0] P8; wire [31:0] P9; wire [31:0] P10; wire [31:0] P11;
wire [31:0] P12; wire [31:0] P13; wire [31:0] P14; wire [31:0] P15; wire [31:0] P16; wire [31:0] P17;
wire [31:0] P18; wire [31:0] P19; wire [31:0] P20; wire [31:0] P21; wire [31:0] P22; wire [31:0] P23;
wire [31:0] P24; wire [31:0] P25; wire [31:0] P26; wire [31:0] P27;


mac #(
    .M(256),
    .S_shift(8),
    .Z(0)
) mac_inst (
    .clk(clk),
    .main_rst(rst),
    .mac_rst(mac_rst),
    .rescale(rescale),
    
    .A_0(DO_0),.A_1(DO_1),.A_2(DO_2), .A_3(DO_3), .A_4(DO_4),.A_5(DO_5),.A_6(DO_6),.A_7(DO_7),
    .A_8(DO_8),.A_9(DO_9),.A_10(DO_10),.A_11(DO_11),.A_12(DO_12),.A_13(DO_13),.A_14(DO_14),.A_15(DO_15),
    .A_16(DO_16),.A_17(DO_17),.A_18(DO_18),.A_19(DO_19),.A_20(DO_20),.A_21(DO_21),.A_22(DO_22),.A_23(DO_23),
    .A_24(DO_24),.A_25(DO_25),.A_26(DO_26),.A_27(DO_27),

    .B_0(D_OUT),.B_1(D_OUT),.B_2(D_OUT),.B_3(D_OUT),.B_4(D_OUT),.B_5(D_OUT), .B_6(D_OUT),.B_7(D_OUT),
    .B_8(D_OUT),.B_9(D_OUT),.B_10(D_OUT),.B_11(D_OUT),.B_12(D_OUT),.B_13(D_OUT),.B_14(D_OUT),.B_15(D_OUT),
    .B_16(D_OUT),.B_17(D_OUT),.B_18(D_OUT),.B_19(D_OUT),.B_20(D_OUT),.B_21(D_OUT),.B_22(D_OUT),.B_23(D_OUT),
    .B_24(D_OUT),.B_25(D_OUT),.B_26(D_OUT),.B_27(D_OUT),


    .P0(P0),.P1(P1),.P2(P2),.P3(P3),.P4(P4),.P5(P5),.P6(P6),.P7(P7), .P8(P8),.P9(P9), 
    .P10(P10),.P11(P11),.P12(P12),.P13(P13),.P14(P14),.P15(P15),.P16(P16),.P17(P17),
    .P18(P18),.P19(P19),.P20(P20),.P21(P21),.P22(P22),.P23(P23),.P24(P24),.P25(P25),
    .P26(P26),.P27(P27),

    .PQ_0(DPL_0),.PQ_1(DPL_1),.PQ_2(DPL_2),.PQ_3(DPL_3),.PQ_4(DPL_4),.PQ_5(DPL_5),
    .PQ_6(DPL_6),.PQ_7(DPL_7),.PQ_8(DPL_8),.PQ_9(DPL_9),.PQ_10(DPL_10),.PQ_11(DPL_11),
    .PQ_12(DPL_12),.PQ_13(DPL_13),.PQ_14(DPL_14),.PQ_15(DPL_15),.PQ_16(DPL_16),.PQ_17(DPL_17),  
    .PQ_18(DPL_18),.PQ_19(DPL_19),.PQ_20(DPL_20),.PQ_21(DPL_21),.PQ_22(DPL_22),.PQ_23(DPL_23),
    .PQ_24(DPL_24),.PQ_25(DPL_25),.PQ_26(DPL_26),.PQ_27(DPL_27)

);

ctrl_unit #(
    .NO_HL(2),.NO_NIL(784),.NO_NHL(28),.NO_NOL(10)
) ctrl_unit_inst (
    .clk(clk),.rst(rst),.start(start),.load_done(load_done),.ADDR(ADDR),.ADDR_IP(ADDR_IP),.mac_en(mac_en),
    .act_en(act_en),.load_en(load_en),.rescale(rescale),.mac_rst(mac_rst),.done(done)
);


assign PP0 = P0; assign PP1 = P1; assign PP2 = P2; assign PP3 = P3; assign PP4 = P4; assign PP5 = P5;
assign PP6 = P6; assign PP7 = P7; assign PP8 = P8; assign PP9 = P9; assign PP10 = P10; assign PP11 = P11;
assign PP12 = P12; assign PP13 = P13; assign PP14 = P14; assign PP15 = P15; assign PP16 = P16; assign PP17 = P17;
assign PP18 = P18; assign PP19 = P19; assign PP20 = P20; assign PP21 = P21; assign PP22 = P22; assign PP23 = P23;
assign PP24 = P24; assign PP25 = P25; assign PP26 = P26; assign PP27 = P27;

assign DOO_0 = DO_0; assign DOO_1 = DO_1; assign DOO_2 = DO_2; assign DOO_3 = DO_3; assign DOO_4 = DO_4;
assign DOO_5 = DO_5; assign DOO_6 = DO_6; assign DOO_7 = DO_7; assign DOO_8 = DO_8; assign DOO_9 = DO_9;
assign DOO_10 = DO_10; assign DOO_11 = DO_11; assign DOO_12 = DO_12; assign DOO_13 = DO_13;
assign DOO_14 = DO_14; assign DOO_15 = DO_15; assign DOO_16 = DO_16; assign DOO_17 = DO_17;
assign DOO_18 = DO_18; assign DOO_19 = DO_19; assign DOO_20 = DO_20; assign DOO_21 = DO_21;
assign DOO_22 = DO_22; assign DOO_23 = DO_23; assign DOO_24 = DO_24; assign DOO_25 = DO_25;
assign DOO_26 = DO_26; assign DOO_27 = DO_27;

assign DO_OUT = D_OUT;
     
endmodule
