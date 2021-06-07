`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2020 02:22:30 PM
// Design Name: 
// Module Name: even2BitParity
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


module even2BitParity(
    input A,
    input B,
    output X
    );
    xor(X, A, B);
endmodule

module even8BitParity(
    input [7:0]M,
    output P
    );
    wire p0, p1, p2, p3, p4, p5;
    even2BitParity uud(.A(M[0]), .B(M[1]), .X(p0));
    even2BitParity uud1(.A(M[2]), .B(M[3]), .X(p1));
    even2BitParity uud2(.A(M[4]), .B(M[5]), .X(p2));
    even2BitParity uud3(.A(M[6]), .B(M[7]), .X(p3));
    even2BitParity uud4(.A(p0), .B(p1), .X(p4));
    even2BitParity uud5(.A(p2), .B(p3), .X(p5));
    even2BitParity uud6(.A(p4), .B(p5), .X(P));
endmodule
