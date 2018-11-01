`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 14:13:38
// Design Name: 
// Module Name: bi_edge_detector_module
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


module bi_edge_detector_module(
    input signal,
    input clk,
    output bi_edge
);

reg signal_delay;

always @ (posedge clk)
begin
    signal_delay <= signal;
end    

assign bi_edge = signal ^ signal_delay;

endmodule
