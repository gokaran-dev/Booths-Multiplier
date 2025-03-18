`timescale 1ns / 1ps

module Booths_MultiplierTB();
    reg [7:0] multi;
    reg clk,rst;
    wire [15:0] q;
    
    Booths_Multiplier uut(
        .multi(multi),
        .clk(clk),
        .rst(rst),
        .q(q)
    );
    
  
    always #5 
        clk=~clk;
    
    initial 
       begin
        clk=0;
        rst=1;
        multi=8'b10101010; 
        #10 rst=0;
        #100 $finish;
    end
endmodule
