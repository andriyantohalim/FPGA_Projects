`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 21:47:44
// Design Name: 
// Module Name: PID_Controller_module
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


module PID_Controller_module(
    input [15:0] error,
    input clk,
    
    input [15:0] Kp,
    input [15:0] Ki,
    input [15:0] Kd,
    
    output [23:0] PID_Output
    
    );

wire [23:0] p;    
Proportional_module P_component (
    Kp,
    error,
    clk,
    
    p
    );

wire [23:0] i;    
Integral_module I_component (
    Ki,
    error,
    clk,

    i 
    );
 
wire [23:0] d;        
Derivative_module D_component (
    Kd,
    error,
    clk,
    
    d
    );
 
reg [23:0] pid_output;
assign PID_Output = pid_output;
   
always @ (posedge clk)
begin
   pid_output = p + i + d; 
end
endmodule
