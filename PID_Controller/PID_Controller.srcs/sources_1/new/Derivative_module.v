`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 21:46:02
// Design Name: 
// Module Name: Derivative_module
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


module Derivative_module(
    input [15:0] Kd,
    input [15:0] error,
//    input [15:0] prev_error,
    input clk,
    
    output [23:0] D_component
//    output [15:0] curr_err
    );
endmodule
