`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 17:13:32
// Design Name: 
// Module Name: RAM_module
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


module RAM_module #(parameter size = 5)(
    input CE, WR, OE,
    input [size-1:0] Address,
    inout [7:0] Data
    );

reg [7:0] mem[0:2**size-1];
reg [7:0] data_out;

assign Data = (CE && OE && ~WR) ? data_out : 8'bz;

always @ (CE or WR or Data or Address) begin
    if (CE && WR) begin
        mem[Address] = Data;
    end
end
endmodule
