module ctrl_unit #(
    parameter NO_HL = 2,
    parameter NO_NIL = 784,
    parameter NO_NHL = 28,
    parameter NO_NOL = 10
) (
    input clk,
    input rst,
    input start,
    input load_done,
    output reg [10:0] ADDR,
    output reg [10:0] ADDR_IP, 
    output reg mac_en, 
    output reg act_en,
    output reg load_en,
    output reg rescale,
    output reg mac_rst,
    output reg done
);

localparam  IDLE     = 7'b0000000;
localparam  COMPUTE  = 7'b0000001;
localparam  ACTIVATE = 7'b0000010;
localparam  LOAD     = 7'b0000100;
localparam  RESCALE  = 7'b0001000;
localparam  MAC_RST  = 7'b0010000;
localparam  PREDICT  = 7'b0100000;
localparam  DUMMY    = 7'b1000000;

//integer i;

reg stall;  
reg p_flag;

reg [10:0] delay_addr; 

reg [5:0] PS, NS;
reg [9:0] counter;
reg [$clog2(NO_HL+1)-1:0] layer;

// Combinational logic for 'stall'
    always @(*) begin
        stall = 0;
        if ((counter == NO_NIL + 2 || 
             counter == NO_NIL + NO_NHL + 2 || 
             counter == NO_NIL + NO_NHL*2 + 2) && PS == COMPUTE) begin
            stall = 1;
        end else if ((counter == NO_NIL + NO_NHL*2 + NO_NOL + 8) && PS == COMPUTE) begin
            stall = 1;
        end
    end
    
    // Sequential logic for 'p_flag'
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            p_flag <= 0;
        end else if ((counter == NO_NIL + NO_NHL*2 + NO_NOL) && PS == COMPUTE) begin
            p_flag <= 1;
        end else if (PS == PREDICT) begin
            p_flag <= 0;
        end
    end
    
    always @(posedge clk ) begin
        if (rst) begin
            PS <= IDLE;
            counter <= 0;
            layer <= 0;
            
        end else begin
            
            PS <= NS;
    
        end
    end
    
    // FSM Combinational Logic
    always @(*) begin
        // Default outputs
        mac_en = 0;
        act_en = 0;
        load_en = 0;
        done = 0;
        rescale = 0;
        mac_rst = 0;
        delay_addr = counter;
        ADDR_IP = counter;
       // NS = PS;  // Default state stays the same
    
        case (PS)
            IDLE : begin
                ADDR = 0;
                if (start) NS = COMPUTE;
            end
    
            COMPUTE : begin
                mac_rst = 0;
                mac_en = 1;
                if (stall == 1) NS = RESCALE;
            end
    
             RESCALE : begin
                mac_en = 0;
                rescale = 1;
                NS = ACTIVATE;
            end
    
    
            ACTIVATE : begin
                rescale = 0;
                act_en = 1;
                NS = LOAD;
            end
    
            LOAD : begin
                act_en = 0;
                load_en = 1;
               if (load_done) NS = MAC_RST;
            end
    
            MAC_RST : begin
                if (!p_flag) begin
                    load_en = 0;
                    mac_rst = 1;
                    NS = DUMMY;
                end else if (p_flag) begin
                    mac_rst = 1;
                    load_en = 0;
                    NS = PREDICT;
                end
            end
            DUMMY : begin
                    NS = COMPUTE
            end
    
            PREDICT : begin
                done = 1;
                delay_addr = 0;
                NS = IDLE;
            end
    
            default: NS = IDLE;
        endcase
    end
    
    always @(posedge clk) begin
        if(!stall && NS == COMPUTE ) begin
            counter <= counter + 1;
        end
    end
    
    always@(posedge clk) begin
        if(rst) ADDR <= 0;
        else ADDR <= delay_addr;    
    end

endmodule
