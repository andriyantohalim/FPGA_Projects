`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 15:48:33
// Design Name: 
// Module Name: Mux21_module
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


module Mux21_module #(parameter n = 8)(
    input  S,
    input [n-1:0] D0,
    input [n-1:0] D1,
    output reg [n-1:0] Y
    );
    
always @ (S, D0, D1) begin
    Y = (~S) ? D0 : D1;
end
endmodule
