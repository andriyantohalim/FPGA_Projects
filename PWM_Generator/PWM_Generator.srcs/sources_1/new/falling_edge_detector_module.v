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
    input signal,
    input clk,
    output falling_edge
);

reg signal_delay;

always @ (posedge clk)
begin
    signal_delay <= signal;
end    

assign falling_edge = ~(signal | ~signal_delay);

endmodule
