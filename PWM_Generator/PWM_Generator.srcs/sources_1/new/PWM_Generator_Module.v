`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 17:17:40
// Design Name: 
// Module Name: PWM_Generator_Module
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


module PWM_Generator_Module(
    input clk,      // Input Clock
    input [15:0] PR, // Period Value
    input [15:0] CR1, // Compare Value
    input [7:0] DT1_r, // Deadtime Rise 
    input [7:0] DT1_f,// Deadtime Fall
    
    input [15:0] CR2, // Compare Value
    input [7:0] DT2_r,// Deadtime Rise 
    input [7:0] DT2_f,// Deadtime Fall
        
    input [15:0] CR3, // Compare Value
    input [7:0] DT3_r,// Deadtime Rise 
    input [7:0] DT3_f,// Deadtime Fall
    
    input [15:0] CR4, // Compare Value
    input [7:0] DT4_r,// Deadtime Rise 
    input [7:0] DT4_f,  // Deadtime Fall 

    input start,
    input stop,
    input reset,
    
    output PWM_out1_a,
    output PWM_out1_b,
    output PWM_out2_a,
    output PWM_out2_b,
    output PWM_out3_a,
    output PWM_out3_b,
    output PWM_out4_a,
    output PWM_out4_b
    );
    
wire PWM_out1;
wire PWM_out2;
wire PWM_out3;
wire PWM_out4;
    
PWM_core_module U1 (
    clk,      // Input Clock
    PR, // Period Value
    CR1, // Compare Value 1
    CR2, // Compare Value 2
    CR3, // Compare Value 3
    CR4, // Compare Value 4
    
    PWM_out1,
    PWM_out2,
    PWM_out3,
    PWM_out4
);

wire PWM_out1a_temp;
deadtime_module DT1r (PWM_out1, DT1_r, PWM_out1a_temp);

wire PWM_out1b_temp;
deadtime_module DT1f (PWM_out1, DT1_f, PWM_out1b_temp);

wire PWM_out2a_temp;
deadtime_module DT2r (PWM_out2, DT2_r, PWM_out2a_temp);

wire PWM_out2b_temp;
deadtime_module DT2f (PWM_out2, DT2_f, PWM_out2b_temp);

wire PWM_out3a_temp;
deadtime_module DT3r (PWM_out3, DT3_r, PWM_out3a_temp);

wire PWM_out3b_temp;
deadtime_module DT3f (PWM_out3, DT3_f, PWM_out3b_temp);

wire PWM_out4a_temp;
deadtime_module DT4r (PWM_out4, DT4_r, PWM_out4a_temp);

wire PWM_out4b_temp;
deadtime_module DT4f (PWM_out4, DT4_f, PWM_out4b_temp);


// temporary. to be modified later
assign PWM_out1_a =  PWM_out1a_temp;
assign PWM_out1_b =  PWM_out1b_temp;

assign PWM_out2_a =  PWM_out2a_temp;
assign PWM_out2_b =  PWM_out2b_temp;

assign PWM_out3_a =  PWM_out3a_temp;
assign PWM_out3_b =  PWM_out3b_temp;

assign PWM_out4_a =  PWM_out4a_temp;
assign PWM_out4_b =  PWM_out4b_temp;


endmodule
