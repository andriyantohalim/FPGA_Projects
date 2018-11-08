`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 16:07:22
// Design Name: 
// Module Name: Adder_module
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


module Adder_module #(parameter n = 4) (
    input [n-1:0] A,
    input [n-1:0] B,
    output [n-1:0] F
    );
    
assign F = A + B;
endmodule
