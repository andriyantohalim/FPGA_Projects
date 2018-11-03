`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 11:27:55
// Design Name: 
// Module Name: input_trigger_module
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


module input_trigger_module(
    input sig_in,
    input [2:0] sel,
    input clk,
    output sig_out
    );
    
wire rise_edge;
rising_edge_detector_module R1 (
    sig_in,
    clk,
    rise_edge
    );

wire fall_edge;    
falling_edge_detector_module F1 (
    sig_in,
    clk,
    fall_edge
    );
    
wire bi_edge;
dual_edge_detector_module B1(
    sig_in,
    clk,
    bi_edge
    );

//wire inp_out;
mux_4to1_module MUX1(
    rise_edge,
    fall_edge,
    bi_edge,
    sel,
    clk,
    
    sig_out
    );
endmodule
