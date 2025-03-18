`timescale 1ns / 1ps

module Booths_Multiplier(
        input [7:0]multi,
        //input [7:0]multiplier,
        input clk,rst,
        output [15:0]q
    );
    reg d_input=1;
        
    FDRE #(.INIT(1'b0)) ff15(.D(d_input?multi[7]:q[15]),.Q(q[15]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff14(.D(d_input?multi[6]:q[15]),.Q(q[14]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff13(.D(d_input?multi[5]:q[14]),.Q(q[13]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff12(.D(d_input?multi[4]:q[13]),.Q(q[12]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff11(.D(d_input?multi[3]:q[12]),.Q(q[11]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff10(.D(d_input?multi[2]:q[11]),.Q(q[10]),.C(clk),.R(rst),.CE(1'b1));
    
    FDRE #(.INIT(1'b0)) ff9(.D(d_input?multi[1]:q[10]),.Q(q[9]),.C(clk),.R(rst),.CE(1'b1));
    
    FDRE #(.INIT(1'b0)) ff8(.D(d_input?multi[0]:q[9]),.Q(q[8]),.C(clk),.R(rst),.CE(1'b1));
    
    FDRE #(.INIT(1'b0)) ff7(.D(q[8]),.Q(q[7]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff6(.D(q[7]),.Q(q[6]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff5(.D(q[6]),.Q(q[5]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff4(.D(q[5]),.Q(q[4]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff3(.D(q[4]),.Q(q[3]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff2(.D(q[3]),.Q(q[2]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff1(.D(q[2]),.Q(q[1]),.C(clk),.R(rst),.CE(1'b1));
    FDRE #(.INIT(1'b0)) ff0(.D(q[1]),.Q(q[0]),.C(clk),.R(rst),.CE(1'b1));

    always @(posedge clk)
        if(rst==1)
        d_input<=1;
        
        else
        d_input<=0;
        
endmodule
