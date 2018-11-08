`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 11:20:54
// Design Name: 
// Module Name: mux_4to1_module
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


module mux_4to1_module(
    input a,
    input b,
    input c,
//    input d,
    input [1:0] sel,
    input clk,
    
    output out
    );

reg q;
assign out = q;

always @ (clk or sel)
begin
    case (sel)
        0: q = a;
        1: q = b;
        2: q = c;
        3: q = 1'bZ;
    endcase
end
endmodule
