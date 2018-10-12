`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2018 16:47:50
// Design Name: 
// Module Name: arithmetics_op
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


module arithmetic_op(num1, num2, res1, res2, res3, res4, res5, res6);

input [11:0] num1;
input [11:0] num2;

output [11:0] res1;
output [11:0] res2;
output [11:0] res3;
output [23:0] res4;
output [11:0] res5;
output [11:0] res6;

// addition
assign res1 = num1 + num2;

// substraction
assign res2 = num2 - num1;
assign res3 = num1 - num2;

// multiplication
assign res4 = num1 * num2;

// division
assign res5 = num1 / num2;

// modulus
assign res6 = num1 % num2;

endmodule
