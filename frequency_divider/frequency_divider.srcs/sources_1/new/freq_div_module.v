`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2018 21:05:51
// Design Name: 
// Module Name: freq_div_module
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


module freq_div_module(
    input clk,
    output reg [2:0] Fout
    );
    
initial
Fout = 3'b000;

always @ (negedge clk)
Fout <= Fout + 1'b1;
endmodule
