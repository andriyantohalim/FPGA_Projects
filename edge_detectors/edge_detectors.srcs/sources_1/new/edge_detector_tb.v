`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 14:17:05
// Design Name: 
// Module Name: edge_detector_tb
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


module edge_detector_tb();
    reg clk;
    wire signal_bi; 
    wire signal_f;
    wire signal_r;   
    
bi_edge_detector_module UUT_bi(
    .x(clk),
    .y(signal_bi)
);

falling_edge_detector_module UUT_f(
    .x(clk),
    .y(signal_f)
);

rising_edge_detector_module UUT_r(
    .x(clk),
    .y(signal_r)
);

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    in = 1'b0;
    #500;
    
    in = 1'b1;
    #500;
    
    in = 1'b0;
    #500;
    
    in = 1'b1;
    #500;
    
end

initial begin
    $display("x \tbi \tf \tr");
    $monitor("%b \t%b \t%b \t%b", clk, signal_bi, signal_f, signal_r);
end

endmodule
