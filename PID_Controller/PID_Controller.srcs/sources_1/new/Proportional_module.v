`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 21:46:02
// Design Name: 
// Module Name: Proportional_module
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


module Proportional_module(
    input [15:0] Kp,
    input [15:0] error,
    input clk,
    
    output [23:0] P_component
    );
endmodule
