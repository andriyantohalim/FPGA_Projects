`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 17:05:16
// Design Name: 
// Module Name: Simple_Counter_module_tb
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


module Simple_Counter_module_tb(

    );

reg clk_;    
wire [3:0] ctrval;

Simple_Counter_module UUT (
    .clk(clk_),
    .ctr(ctrval)
);  

initial
begin
    clk_ = 1'b0;
    forever #5 clk_ = ~clk_;
end

always @ (posedge clk_)
begin

end 
endmodule
