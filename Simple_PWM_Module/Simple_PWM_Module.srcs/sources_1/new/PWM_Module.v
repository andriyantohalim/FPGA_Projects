`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2018 21:51:32
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
    input clock,
    input reset,
    input [7:0] compare,
    output pwm
    );
    
reg pwm_d, pwm_q;
reg [7:0] count_d, count_q;

assign pwm = pwm_q;

always @ (*)
    begin
        count_d = count_q + 1'b1;
        if(compare > count_q)
            pwm_d = 1'b1;
        else
            pwm_d = 1'b0;
    end

always @ (posedge clock)
    begin
        if(reset)
            begin
                count_q <= 1'b0;
            end
        else
            begin
                count_q <= count_d;
            end
            
        pwm_q <= pwm_d;
    end

endmodule
