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


module PWM_core_module(
    input clk,      // Input Clock
    input [15:0] PR, // Period Value
    input [15:0] CR1, // Compare Value 1
    input [15:0] CR2, // Compare Value 2
    input [15:0] CR3, // Compare Value 3
    input [15:0] CR4, // Compare Value 4
    
    output wire PWM_out1,
    output wire PWM_out2,
    output wire PWM_out3,
    output wire PWM_out4,
    output wire [15:0] timerval_mon
    );
    
reg pwm1;
reg pwm2;
reg pwm3;
reg pwm4;
reg [15:0] timerval;

assign PWM_out1 = ~pwm1;
assign PWM_out2 = ~pwm2;
assign PWM_out3 = ~pwm3;
assign PWM_out4 = ~pwm4;

assign timerval_mon = timerval;

initial
timerval = 16'h0000;

always @ (posedge clk)
begin 
    timerval <= (timerval >= PR)? 16'h0000 : (timerval + 1'b1);
    
    pwm1 <= (timerval >= CR1)? 1'b1 : 1'b0;
    pwm2 <= (timerval >= CR2)? 1'b1 : 1'b0;
    pwm3 <= (timerval >= CR3)? 1'b1 : 1'b0;
    pwm4 <= (timerval >= CR4)? 1'b1 : 1'b0;
end

endmodule
