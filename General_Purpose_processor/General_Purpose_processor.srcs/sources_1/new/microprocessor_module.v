`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 14:49:17
// Design Name: 
// Module Name: microprocessor_module
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


module microprocessor_module(
    input Clock, Reset, Enter,
    input [7:0] Input,
    output [7:0] Output,
    output Halt,
    output [3:0] debug
    );
    
wire [2:0] IR75;
wire PCload, Meminst, MemWr, Aload;
wire IRload, JMPmux, Sub, Aeq0, Apos;
wire [1:0] Asel;

datapath_module DP (
    .Clock(Clock), .Reset(Reset),
    .IRload(IRload),. JMPmux(JMPmux), .PCload(PCload), .Meminst(Meminst), .MemWr(MemWr),
    .Asel(Asel),
    .Aload(Aload), .Sub(Sub),
    .IR75(IR75),
    .Apos(Apos), .Aeq0(Aeq0),
    .Input(Input),
    .Output(Output)
    );

controlunit_module CU (
    .Clock(Clock), .Reset(Reset), .Enter(Enter),
    .IRload(IRload), .JMPmux(JMPmux), .PCload(PCload), .Meminst(Meminst), .MemWr(MemWr),
    .Asel(Asel),
    .Sub(Sub),
    .IR75(IR75),
    .Apos(Apos), .Aeq0(Aeq0),
    .Halt(Halt),
    .debug(debug)
    );

endmodule
