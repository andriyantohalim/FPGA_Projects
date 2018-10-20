`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 17:35:28
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
    reg [15:0] CR_; // Compare Value
    reg [15:0] PR_; // Period Value
    wire PWM_out_;
    wire [15:0] timerval_mon_;
    
PWM_Module DUT(
    .clk(clk_),
    .CR(CR_), // Compare Value
    .PR(PR_), // Period Value
    .PWM_out(PWM_out_),
    .timerval_mon(timerval_mon_)
);

initial begin
    clk_ = 1'b0;
    CR_ = 16'h0000;
    forever #5 clk_ = ~clk_;
end 

initial begin
    CR_ <= 16'h0010;
    PR_ <= 16'h0F0;
    #500000;
    
    CR_ <= 16'h003F;
    PR_ <= 16'h00F0;
    #500000;
    
    CR_ <= 16'h006A;
    PR_ <= 16'h00F0;
    #500000;
    
    CR_ <= 16'h008F;
    PR_ <= 16'h00F0;
    #500000;
    
    CR_ <= 16'h0023;
    PR_ <= 16'h00F0;
    #500000;
    
    CR_ <= 16'h0077;
    PR_ <= 16'h00F0;
    #500000;
    
    CR_ <= 16'h0047;
    PR_ <= 16'h00F0;
    #500000;
end

//always @ (posedge clk_)
//begin
//    CR_ <= CR_ + 16'h1F;
//    PR_ <= 16'h01FF;
//    #50000;
    
//    if (CR_ >= PR_ ) $finish;
//end

endmodule
