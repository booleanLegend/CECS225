`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2020 07:57:55 PM
// Design Name: 
// Module Name: TestBench
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


module TestBench;
    reg [7:0]a; // vector?
    wire y;

    even8BitParity uut(.M(a), .P(y)); // mapping module even8p with simulation source
    integer i; // loop
    initial
    begin

        $display ("a[7]  a[6]  a[5]  a[4]  a[3]  a[2]  a[1]  a[0]  |  y \n"); // #10 is delay
    
        for (i = 0; i < 16; i = i + 1) // loop iterating 16 times (hex numbers)
            begin
                a = i;
                #10$display ("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t  | %b\t ", a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], y ); // displays bit number
            end // for loop
            #10$finish;
    end //initial
endmodule

