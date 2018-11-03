`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 17:26:26
// Design Name: 
// Module Name: deadtime_module
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





module deadtime_module(
    input PWM_input,
    input [7:0] deadtime,
    
    output PWM_out
    );


wire PWM_mod;

deadtime_timer_Module DT(
    PWM_input,
    deadtime,
    
    PWM_mod
    );

assign PWM_out = PWM_mod & PWM_input;





endmodule
