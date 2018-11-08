`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 21:10:00
// Design Name: 
// Module Name: ADC_controller_module
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


module ADC_controller_module(
    input ADC_in,
    input [3:0] scaling_factor, // 4-bit (16) times amplification or attenuation
    input scaling_dir,
    input [15:0] offset, // 16-bit signed offset
    input [15:0] upper_limit, // 16-bit signed offset
    input [15:0] lower_limit, // 16-bit signed offset 
    input [15:0] upper_compare_1, // 16-bit signed offset
    input [15:0] upper_compare_2, // 16-bit signed offset 
    input [15:0] lower_compare_1, // 16-bit signed offset
    input [15:0] lower_compare_2, // 16-bit signed offset
    input clk,
    
    output ADC_out,
    output UC1,
    output UC2,
    output LC1,
    output LC2
    );
    
wire adc_scale_out;
wire scale_idle_bit;
Scale_module SCALE(
    ADC_in, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    scaling_factor, // 4-bit (16) times amplification or attenuation
    scaling_dir,
    clk,
    
    adc_scale_out,
    scale_idle_bit
    );

wire adc_offset_out;
wire offset_idle_bit;    
Offset_module OFFSET (
    adc_scale_out, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    offset, // 16-bit signed offset
    scale_idle_bit,

    adc_offset_out,
    offset_idle_bit
    );

wire adc_limit_out;
wire limit_idle_bit;
Limit_module LIMIT (
    adc_offset_out, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    upper_limit, // 16-bit signed offset
    lower_limit, // 16-bit signed offset
    offset_idle_bit,
    
    ADC_out,
    limit_idle_bit
    );
 
wire compare_idle_bit;    
Compare_module COMPARE (
    ADC_out, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    upper_compare_1, // 16-bit signed offset
    upper_compare_2, // 16-bit signed offset
    
    lower_compare_1, // 16-bit signed offset
    lower_compare_2, // 16-bit signed offset
    clk,
    
    UC1,
    UC2,
    LC1,
    LC2,
    
    compare_idle_bit
    );
endmodule
