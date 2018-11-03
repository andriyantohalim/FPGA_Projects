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
    reg in;
    wire signal_bi; 
    wire signal_f;
    wire signal_r;   
    
bi_edge_detector_module UUT_bi(
    .clk(clk),
    .signal(in),
    .bi_edge(signal_bi)
);

falling_edge_detector_module UUT_f(
    .clk(clk),
    .signal(in),
    .falling_edge(signal_f)
);

rising_edge_detector_module UUT_r(
    .clk(clk),
    .signal(in),
    .rising_edge(signal_r)
);

initial begin
    clk = 1'b0;
    forever #25 clk = ~clk;
end

initial begin
    in = 1'b0; #100;
    in = 1'b1; #100;
    in = 1'b0; #100;
    in = 1'b1; #100;
    in = 1'b0; #100;
    in = 1'b1; #100;
    
    in = 1'b0; #60;
    in = 1'b1; #60;
    in = 1'b0; #60;
    in = 1'b1; #60;
    in = 1'b0; #60;
    in = 1'b1; #60;
    
    in = 1'b0; #75;
    in = 1'b1; #75;
    in = 1'b0; #75;
    in = 1'b1; #75;
    in = 1'b0; #75;
    in = 1'b1; #75;
    
    in = 1'b0; #35;
    in = 1'b1; #35;
    in = 1'b0; #35;
    in = 1'b1; #35;
    in = 1'b0; #35;
    in = 1'b1; #35;
    
end

//initial begin
//    $display("x \tsig \tbi \tf \tr");
//    $monitor("%b \t%b \t%b \t%b", clk, in, signal_bi, signal_f, signal_r);
//end

endmodule
