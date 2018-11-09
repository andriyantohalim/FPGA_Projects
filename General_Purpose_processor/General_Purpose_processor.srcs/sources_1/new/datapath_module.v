`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 14:49:17
// Design Name: 
// Module Name: datapath_module
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


module datapath_module(
    input Clock, Reset,
    input IRload, JMPmux, PCload, Meminst, MemWr,
    input [1:0] Asel,
    input Aload, Sub,
    output [2:0] IR75,
    output Apos, Aeq0,
    input [7:0] Input,
    output [7:0] Output
    );
    

endmodule
