`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 16:47:23
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


module microprocessor_module #(parameter n = 8) (
    input Clock, Reset,
    output [n-1:0] Output,
    output [3:0] debug_cu,
    output [2:0] debug_dp
    );
    
wire mp_iMux, mp_sumMux, mp_sumLoad, mp_iLoad, mp_addMux, mp_ine11, mp_OE;

datapath_module U0 (
    Clock, Reset, mp_iMux, mp_sumMux, mp_sumLoad, mp_iLoad, mp_addMux, mp_OE, mp_ine11, Output, debug_dp
);

controlunit_module U1 (
    Clock, Reset, mp_iMux, mp_sumMux, mp_sumLoad, mp_iLoad, mp_addMux, mp_OE, mp_ine11, debug_cu
);

endmodule
