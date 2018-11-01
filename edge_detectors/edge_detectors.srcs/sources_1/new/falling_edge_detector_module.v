`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 13:24:40
// Design Name: 
// Module Name: falling_edge_detector_module
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


module falling_edge_detector_module(
    input x,
    output y
    );

wire not1, not2, not3;

assign not1 = ~x;
assign not2 = ~not1;
assign not3 = ~not2;
assign y = ~(x | not3);

endmodule
