module bram_ip(
    input clk,
    input rst,
    input load_en,
    input [7:0] DI, 
    input [10:0]ADDR_IP,
    input [7:0] DPL_0, input [7:0] DPL_1,input [7:0] DPL_2, input [7:0] DPL_3, input [7:0] DPL_4, input [7:0] DPL_5,
    input [7:0] DPL_6, input [7:0] DPL_7, input [7:0] DPL_8, input [7:0] DPL_9, input [7:0] DPL_10, input [7:0] DPL_11,
    input [7:0] DPL_12,input [7:0] DPL_13, input [7:0] DPL_14,input [7:0] DPL_15,input [7:0] DPL_16,input [7:0] DPL_17,
    input [7:0] DPL_18,input [7:0] DPL_19, input [7:0] DPL_20,input [7:0] DPL_21,input [7:0] DPL_22,input [7:0] DPL_23,
    input [7:0] DPL_24,input [7:0] DPL_25,input [7:0] DPL_26,input [7:0] DPL_27,
    output  [7:0] D_OUT,
    output  load_done,
    input rescale
    );
    
    reg signed [7:0] DIR [0:27];
    
    always @(posedge clk) begin
    if (rescale ) begin
        DIR[0] <= DPL_0; DIR[1] <= DPL_1; DIR[2] <= DPL_2; DIR[3] <= DPL_3; DIR[4] <= DPL_4; DIR[5] <= DPL_5;
        DIR[6] <= DPL_6; DIR[7] <= DPL_7; DIR[8] <= DPL_8; DIR[9] <= DPL_9; DIR[10] <= DPL_10; DIR[11] <= DPL_11;
        DIR[12] <= DPL_12; DIR[13] <= DPL_13; DIR[14] <= DPL_14; DIR[15] <= DPL_15; DIR[16] <= DPL_16; DIR[17] <= DPL_17;
        DIR[18] <= DPL_18; DIR[19] <= DPL_19; DIR[20] <= DPL_20; DIR[21] <= DPL_21; DIR[22] <= DPL_22; DIR[23] <= DPL_23;
        DIR[24] <= DPL_24; DIR[25] <= DPL_25; DIR[26] <= DPL_26; DIR[27] <= DPL_27;
    end
    end
    
    reg [4:0] addr_counter; 
    reg [7:0] bram_data_in;
    wire [7:0] bram_data_out;
    reg [10:0] bram_addr;
    reg we;
    wire [7:0]d_temp;
    wire [7:0]d_mo;
    
    BRAM_SINGLE_MACRO #(
        .BRAM_SIZE("18Kb"),
        .DEVICE("7SERIES"),
        .DO_REG(0),
        .INIT(36'h000000000),
        .INIT_FILE ("digit7.mem"),
        .WRITE_WIDTH(8),
        .READ_WIDTH(8),
        .SRVAL(36'h000000000),
        .WRITE_MODE("WRITE_FIRST")
    ) BRAM_SINGLE_MACRO_inst (
        .DO(bram_data_out),
        .ADDR(bram_addr),
        .CLK(clk),
        .DI(bram_data_in),
        .EN(1'b1),
        .REGCE(1'b0),
        .RST(rst),
        .WE(we)
    );
    assign d_temp = (DIR[addr_counter] > 0)? DIR[addr_counter]:0;
    assign d_mo = DIR[addr_counter+ADDR_IP];
        always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr_counter <= 0;
            bram_addr <= 0;
            we <= 0;
            //load_done <=0;
        end else if (load_en) begin
            if (addr_counter < 28) begin
                bram_addr <= addr_counter + ADDR_IP;
                bram_data_in <= (DIR[addr_counter] > 0)? DIR[addr_counter]:0;
                we <= 1; 
                addr_counter <= addr_counter + 1;
                end
             else if (addr_counter == 27) begin
              //load_done <= 1;
              addr_counter <= 0;
             end
              else begin
                addr_counter <= 0;
                we <= 0; 
               // load_done <= 0;
            end
        end else begin
            //load_done <= 0;
            bram_addr <= ADDR_IP;
            bram_data_in <=DI;
            we <= 1'b0; 
            //D_OUT <= (!load_en) ? bram_data_out : 8'b0;
        end
    end

  assign D_OUT = (rst) ? 8'b0 : ((!load_en) ? bram_data_out : 8'b0);
  assign load_done = (addr_counter == 27) ? 1:0;
    
    
    
    
endmodule
