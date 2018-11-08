`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 15:35:05
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


module datapath_module #(parameter n = 8)(
    input Clock, Reset,
    input iMux, sumMux, sumLoad, iLoad, addMux, OE,
    output ine11,
    output [n:0] Output,
    output [3:0] debug
    );
    
wire [n-1:0] dp_iMux, dp_sumMux, dp_i, dp_sum, dp_addMux, dp_add;

assign debug = dp_i [3:0];

Mux21_module #(8) U0_iMux(
    .S(iMux),
    .D1(8'd1),
    .D0(dp_add),
    .Y(dp_iMux)
    );

Mux21_module #(8) U1_sumMux(
    .S(sumMux),
    .D1(8'd0),
    .D0(dp_add),
    .Y(dp_sumMux)
    );
    
Register_module #(8) U2_iReg(
    .Clock(Clock),
    .Clear(Reset),
    .Write(sumLoad),
    .D(dp_sumMux),
    .Q(dp_i)
    );

Register_module #(8) U3_sumReg(
    .Clock(sumLoad),
    .Clear(dp_sumMux),
    .Write(sumLoad),
    .D(dp_sumMux),
    .Q(dp_sum)
    );
    
Mux21_module U4_addMux(
    .S(addMux),
    .D1(8'd1),
    .D0(dp_sum),
    .Y(dp_addMux)
    );    

Adder_module #(8)U5_Add(
    .A(dp_i),
    .B(dp_addMux),
    .F(dp_add)
    );

TriState_Buffer_module #(8) U6_Tri(
    .E(OE),
    .D(dp_sum),
    .Y(Output)
    );

nand(
    ine11,
    ~dp_i[7],
    ~dp_i[6],
    ~dp_i[5],
    ~dp_i[4],
    ~dp_i[3],
    ~dp_i[2],
    ~dp_i[1],
    ~dp_i[0]
    );
endmodule
