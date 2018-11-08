`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 15:57:42
// Design Name: 
// Module Name: register_module
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


module Register_module #(parameter n = 8) (
    input Clock, 
    input Clear, 
    input Write,
    input [n-1:0] D,
    output reg [n-1:0] Q
    );
    
always @ (posedge Clock or posedge Clear) begin    
    if (Clear ==1) begin
        Q <= {8{1'b0}};
    end else if (Write) begin
        Q <= D;
    end
end 
endmodule
