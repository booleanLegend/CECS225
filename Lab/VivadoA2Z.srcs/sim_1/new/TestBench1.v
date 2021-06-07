`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 11:28:39 AM
// Design Name: 
// Module Name: TestBench1
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


module TestBench1;
    reg t, p, l, w;
    wire x;
    
    fullExpression uut(.T(t), .P(p), .L(l), .W(w));
    
    initial
    begin
    l = 0; t = 0; p = 0; w = 0; #100;
    l = 0; t = 0; p = 0; w = 1; #100;
    l = 0; t = 0; p = 1; w = 0; #100;
    l = 0; t = 0; p = 1; w = 1; #100;
    l = 0; t = 1; p = 0; w = 0; #100;
    l = 0; t = 1; p = 0; w = 1; #100;
    l = 0; t = 1; p = 1; w = 0; #100;
    l = 0; t = 1; p = 1; w = 1; #100;
    l = 1; t = 0; p = 0; w = 0; #100;
    l = 1; t = 0; p = 0; w = 1; #100;
    l = 1; t = 0; p = 1; w = 0; #100;
    l = 1; t = 0; p = 1; w = 1; #100;
    l = 1; t = 1; p = 0; w = 0; #100;
    l = 1; t = 1; p = 0; w = 1; #100;
    l = 1; t = 1; p = 1; w = 0; #100;
    l = 1; t = 1; p = 1; w = 1; #100;   
    end
endmodule
