`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 16:07:22
// Design Name: 
// Module Name: TriState_Buffer_module
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


module TriState_Buffer_module #(parameter n = 4) (
    input E,
    input [n-1:0] D,
    output [n-1:0] Y
    );
    
assign Y = (E) ? D : {n{1'bz}};
endmodule
