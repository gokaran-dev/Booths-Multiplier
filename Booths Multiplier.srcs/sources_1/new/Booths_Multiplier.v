`timescale 1ns / 1ps

module Booths_Multiplier(
        input [7:0]multi,
        input [7:0]multiplier,
        input clk,rst,
        output reg[15:0]product
    );
    reg shift_mode=1;
    reg CE=1'b1;
    reg [7:0]shifted_data;
    wire [7:0]sum;
    reg [2:0]count=3'b000;
    wire [16:0]q;
    
    
    FDRE #(.INIT(1'b0)) ff16(.D(shift_mode?shifted_data[7]:q[16]),.Q(q[16]),.C(clk),.R(rst),.CE(CE));    
    FDRE #(.INIT(1'b0)) ff15(.D(shift_mode?shifted_data[6]:q[16]),.Q(q[15]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff14(.D(shift_mode?shifted_data[5]:q[15]),.Q(q[14]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff13(.D(shift_mode?shifted_data[4]:q[14]),.Q(q[13]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff12(.D(shift_mode?shifted_data[3]:q[13]),.Q(q[12]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff11(.D(shift_mode?shifted_data[2]:q[12]),.Q(q[11]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff10(.D(shift_mode?shifted_data[1]:q[11]),.Q(q[10]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff9(.D(shift_mode?shifted_data[0]:q[10]),.Q(q[9]),.C(clk),.R(rst),.CE(CE));
    
    FDRE #(.INIT(1'b0)) ff8(.D(shift_mode?multiplier[7]:q[9]),.Q(q[8]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff7(.D(shift_mode?multiplier[6]:q[8]),.Q(q[7]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff6(.D(shift_mode?multiplier[5]:q[7]),.Q(q[6]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff5(.D(shift_mode?multiplier[4]:q[6]),.Q(q[5]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff4(.D(shift_mode?multiplier[3]:q[5]),.Q(q[4]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff3(.D(shift_mode?multiplier[2]:q[4]),.Q(q[3]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff2(.D(shift_mode?multiplier[1]:q[3]),.Q(q[2]),.C(clk),.R(rst),.CE(CE));
    FDRE #(.INIT(1'b0)) ff1(.D(shift_mode?multiplier[0]:q[2]),.Q(q[1]),.C(clk),.R(rst),.CE(CE));
    
    FDRE #(.INIT(1'b0)) ff0(.D(q[1]),.Q(q[0]),.C(clk),.R(rst),.CE(CE));
    
    Controlled_adder_sub UUT(
                .A(q[16:9]),
                .B((q[1]==1 && q[0]==0)||(q[1]==0 && q[0]==1)?multi:8'b0),
                .mode1(q[1]),
                .mode0(q[0]),
                .result(sum)
            );
        
        
    always @(posedge clk)
     begin
        if(rst==1)
        begin
            shift_mode<=1;
            count<=3'b000;
            CE=1'b1;
        end
        
        else
        begin
            shift_mode<=0;
        end
        
        if((q[1]==1 && q[0]==0)||(q[1]==0 && q[0]==1))
        begin
            shifted_data[7:0]<=sum[7:0];
            shift_mode<=1;
        end
        
        if(count==7)
            begin
                CE=1'b0;
            end
         else
            begin
                count<=count+1;
            end
         
         shift_mode<=0;
         product<=q[16:1];
     end 
        
endmodule
