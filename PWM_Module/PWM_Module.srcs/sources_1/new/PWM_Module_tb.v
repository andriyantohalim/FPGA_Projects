`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 14:51:05
// Design Name: 
// Module Name: PWM_Module_tb
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


module PWM_Module_tb();
    reg clk_; 
    reg [3:0] pwmin;
    
    wire pwmout;
    wire [3:0] cnt_;
    
PWM_Module DUT(
    .clk(clk_),
    .PWM_in(pwmin),
    .PWM_out(pwmout),
    .count(cnt_)
    );

initial begin
    clk_ = 1'b0;
    forever #5 clk_ = ~clk_;
    
    pwmin = 4'b0000;
end    

initial begin
    pwmin <= 4'b0010;
    #100; 
    
    pwmin <= 4'b1010;
    #100;  
    
    pwmin <= 4'b1110;
    #100; 
    
    pwmin <= 4'b0011;
    #100;   
  
    pwmin <= 4'b1011;
    #100;  

    pwmin <= 4'b0100;
    #100;  

    pwmin <= 4'b0101;
    #100;  

    pwmin <= 4'b0111;
    #100;  
    
    pwmin <= 4'b1101;
    #100; 
    
//    $finish;
end


    

    
 
endmodule
