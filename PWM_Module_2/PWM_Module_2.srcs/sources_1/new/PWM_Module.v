`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 17:35:09
// Design Name: 
// Module Name: PWM_Module
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


module PWM_Module(
    input clk,      // Input Clock
    input [15:0] CR, // Compare Value
    input [15:0] PR, // Period Value
    
    output wire PWM_out,
    output wire [15:0] timerval_mon
    );
    
reg [15:0] timerval;
reg pwm;

assign PWM_out = ~pwm;
assign timerval_mon = timerval;

initial
timerval = 16'h0000;

always @ (posedge clk)
begin 
timerval <= (timerval >= PR)? 16'h0000 : (timerval + 1'b1);
pwm <= (timerval >= CR)? 1'b1 : 1'b0;
end

endmodule
