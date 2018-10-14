`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2018 21:51:32
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
    
    reg clk, rst;
    reg [7:0] cmp;
    wire pwm;
    
PWM_Module DUT (
    .clock(clk),
    .reset(rst),
    .compare(cmp),
    .pwm(pwm)
    );
        
initial begin
        clk = 1'b0;
        rst = 1'b1;
        repeat(4) #10 clk = ~clk;
        rst = 1'b0;
        forever #10 clk = ~clk; // generate a clock
      end
     
initial begin
        cmp = 8'd0; // initial value
        @(negedge rst); // wait for reset
        cmp = 8'd128;
        repeat(256) @(posedge clk);
        cmp = 8'd30;
        repeat(256) @(posedge clk);
        $finish;
      end      
endmodule
