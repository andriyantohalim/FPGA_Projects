`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 17:13:32
// Design Name: 
// Module Name: ROM_module
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


module ROM_module#(parameter size = 4)(
    input [size-1:0] Address,
    input OE,
    output [7:0] Data
    );

reg [7:0] mem[0:2**(size-1)];

initial begin
    mem[0] <= 8'b01100000;
    mem[1] <= 8'b01000000;
    mem[2] <= 8'b01010000;
    mem[3] <= 8'b11000001;
    mem[4] <= 8'b11111111;
end

assign Data = (OE)? mem[Address] : 8'bz;
endmodule
