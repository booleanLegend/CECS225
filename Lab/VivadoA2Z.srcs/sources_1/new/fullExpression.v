`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 11:18:09 AM
// Design Name: 
// Module Name: fullExpression
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


module fullExpression(
    input L,
    input P,
    input T,
    input W,
    output X
    );
    assign X = (!L&(!T&P)&!W) | (!L&(!T&P)&W) | (!L&(!W&T)) | (!L&(T&W)&!P) | (!L&(!W&T)) | (!L&(T&W)&P) | (L&(T&P)&!W) | (L&(T&P)&W);
    
endmodule
