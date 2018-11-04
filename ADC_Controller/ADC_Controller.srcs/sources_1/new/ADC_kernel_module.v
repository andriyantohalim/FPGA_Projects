`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 21:31:45
// Design Name: 
// Module Name: ADC_kernel_module
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


module ADC_kernel_module(
    input clk,
    
    // ***************************** ADC_Channel_1 ***************************** 
    input CH1_ADC_in,
    input [3:0] CH1_scaling_factor, // 4-bit (16) times amplification or attenuation
    input CH1_scaling_dir,
    input [15:0] CH1_offset, // 16-bit signed offset
    input [15:0] CH1_upper_limit, // 16-bit signed offset
    input [15:0] CH1_lower_limit, // 16-bit signed offset 
    input [15:0] CH1_upper_compare_1, // 16-bit signed offset
    input [15:0] CH1_upper_compare_2, // 16-bit signed offset 
    input [15:0] CH1_lower_compare_1, // 16-bit signed offset
    input [15:0] CH1_lower_compare_2, // 16-bit signed offset
    output CH1_ADC_out,
    output CH1_UC1,
    output CH1_UC2,
    output CH1_LC1,
    output CH1_LC2,

    // ***************************** ADC_Channel_2 ***************************** 
    input CH2_ADC_in,
    input [3:0] CH2_scaling_factor, // 4-bit (16) times amplification or attenuation
    input CH2_scaling_dir,
    input [15:0] CH2_offset, // 16-bit signed offset
    input [15:0] CH2_upper_limit, // 16-bit signed offset
    input [15:0] CH2_lower_limit, // 16-bit signed offset 
    input [15:0] CH2_upper_compare_1, // 16-bit signed offset
    input [15:0] CH2_upper_compare_2, // 16-bit signed offset 
    input [15:0] CH2_lower_compare_1, // 16-bit signed offset
    input [15:0] CH2_lower_compare_2, // 16-bit signed offset
    output CH2_ADC_out,
    output CH2_UC1,
    output CH2_UC2,
    output CH2_LC1,
    output CH2_LC2,
    
    // ***************************** ADC_Channel_3 ***************************** 
    input CH3_ADC_in,
    input [3:0] CH3_scaling_factor, // 4-bit (16) times amplification or attenuation
    input CH3_scaling_dir,
    input [15:0] CH3_offset, // 16-bit signed offset
    input [15:0] CH3_upper_limit, // 16-bit signed offset
    input [15:0] CH3_lower_limit, // 16-bit signed offset 
    input [15:0] CH3_upper_compare_1, // 16-bit signed offset
    input [15:0] CH3_upper_compare_2, // 16-bit signed offset 
    input [15:0] CH3_lower_compare_1, // 16-bit signed offset
    input [15:0] CH3_lower_compare_2, // 16-bit signed offset
    output CH3_ADC_out,
    output CH3_UC1,
    output CH3_UC2,
    output CH3_LC1,
    output CH3_LC2,
    
    // ***************************** ADC_Channel_4 *****************************    
    input CH4_ADC_in,
    input [3:0] CH4_scaling_factor, // 4-bit (16) times amplification or attenuation
    input CH4_scaling_dir,
    input [15:0] CH4_offset, // 16-bit signed offset
    input [15:0] CH4_upper_limit, // 16-bit signed offset
    input [15:0] CH4_lower_limit, // 16-bit signed offset 
    input [15:0] CH4_upper_compare_1, // 16-bit signed offset
    input [15:0] CH4_upper_compare_2, // 16-bit signed offset 
    input [15:0] CH4_lower_compare_1, // 16-bit signed offset
    input [15:0] CH4_lower_compare_2, // 16-bit signed offset
    output CH4_ADC_out,
    output CH4_UC1,
    output CH4_UC2,
    output CH4_LC1,
    output CH4_LC2
    );
    
ADC_controller_module ADC_CH1(
        CH1_ADC_in,
        CH1_scaling_factor, // 4-bit (16) times amplification or attenuation
        CH1_scaling_dir,
        CH1_offset, // 16-bit signed offset
        CH1_upper_limit, // 16-bit signed offset
        CH1_lower_limit, // 16-bit signed offset 
        CH1_upper_compare_1, // 16-bit signed offset
        CH1_upper_compare_2, // 16-bit signed offset 
        CH1_lower_compare_1, // 16-bit signed offset
        CH1_lower_compare_2, // 16-bit signed offset
        clk,
        
        CH1_ADC_out,
        CH1_UC1,
        CH1_UC2,
        CH1_LC1,
        CH1_LC2
        );
        
ADC_controller_module ADC_CH2(
        CH2_ADC_in,
        CH2_scaling_factor, // 4-bit (16) times amplification or attenuation
        CH2_scaling_dir,
        CH2_offset, // 16-bit signed offset
        CH2_upper_limit, // 16-bit signed offset
        CH2_lower_limit, // 16-bit signed offset 
        CH2_upper_compare_1, // 16-bit signed offset
        CH2_upper_compare_2, // 16-bit signed offset 
        CH2_lower_compare_1, // 16-bit signed offset
        CH2_lower_compare_2, // 16-bit signed offset
        clk,
        
        CH2_ADC_out,
        CH2_UC1,
        CH2_UC2,
        CH2_LC1,
        CH2_LC2
        );
        
ADC_controller_module ADC_CH3(
        CH3_ADC_in,
        CH3_scaling_factor, // 4-bit (16) times amplification or attenuation
        CH3_scaling_dir,
        CH3_offset, // 16-bit signed offset
        CH3_upper_limit, // 16-bit signed offset
        CH3_lower_limit, // 16-bit signed offset 
        CH3_upper_compare_1, // 16-bit signed offset
        CH3_upper_compare_2, // 16-bit signed offset 
        CH3_lower_compare_1, // 16-bit signed offset
        CH3_lower_compare_2, // 16-bit signed offset
        clk,
        
        CH3_ADC_out,
        CH3_UC1,
        CH3_UC2,
        CH3_LC1,
        CH3_LC2
        );
        
ADC_controller_module ADC_CH4(
        CH4_ADC_in,
        CH4_scaling_factor, // 4-bit (16) times amplification or attenuation
        CH4_scaling_dir,
        CH4_offset, // 16-bit signed offset
        CH4_upper_limit, // 16-bit signed offset
        CH4_lower_limit, // 16-bit signed offset 
        CH4_upper_compare_1, // 16-bit signed offset
        CH4_upper_compare_2, // 16-bit signed offset 
        CH4_lower_compare_1, // 16-bit signed offset
        CH4_lower_compare_2, // 16-bit signed offset
        clk,
        
        CH4_ADC_out,
        CH4_UC1,
        CH4_UC2,
        CH4_LC1,
        CH4_LC2
        );
                
endmodule
