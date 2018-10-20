`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 17:01:45
// Design Name: 
// Module Name: Simple_Counter_module
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


module Simple_Counter_module(
    input clk,
    output reg [3:0] ctr
    );
    
initial
ctr = 4'b0000;

always @ (posedge clk)
begin
ctr <= (ctr >= 4'b1111)? 4'b0000: (ctr + 1'b1);
end

endmodule
