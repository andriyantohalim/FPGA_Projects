`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 14:49:17
// Design Name: 
// Module Name: controlunit_module
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


module controlunit_module(
    input Clock, Reset, Enter,
    output reg IRload, JMPmux, PCload, Meminst, MemWr,
    output reg [1:0] Asel,
    output reg Aload, Sub,
    input [2:0] IR75,
    input Apos, Aeq0,
    output reg Halt,
    output [3:0] debug
    );
endmodule
