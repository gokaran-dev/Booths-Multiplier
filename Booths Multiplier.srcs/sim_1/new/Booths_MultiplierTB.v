`timescale 1ns / 1ps

module Booths_MultiplierTB();
    reg [7:0] multi;
    reg [7:0]multiplier;
    reg clk,rst;
    wire [15:0] q;
    wire [2:0]count;
    
    Booths_Multiplier uut(
        .multi(multi),
        .multiplier(multiplier),
        .clk(clk),
        .rst(rst),
        .product(q),
        .count(count)
    );
    
  
    always #5 
        clk=~clk;
    
    initial 
       begin
        clk=0;
        rst=1;
        multi=8'b00000000; 
        multiplier=8'b00000000;
        end
        
     initial
        begin
            rst=0;
            #100  multi=8'b00001011; multiplier=8'b00001110;
            #500 $finish;
        end
endmodule
