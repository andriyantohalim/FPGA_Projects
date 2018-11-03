`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 18:17:19
// Design Name: 
// Module Name: mux_module
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


module mux_module(
    input[1:0] select,
    input[3:0] sig_in,
    output     sig_out
    );

reg       q_reg;
wire[1:0] selection;
wire[3:0] d;

assign sig_out = q_reg;
assign sig_in = d;
assign select = selection;
   
always @( select or d )
    begin
       case( select )
           0 : q_reg = d[0];
           1 : q_reg = d[1];
           2 : q_reg = d[2];
           3 : q_reg = d[3];
       endcase
    end
endmodule
