`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2018 21:07:59
// Design Name: 
// Module Name: freq_div_module_tb
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


module freq_div_module_tb();
    
reg clk_;
wire [2:0] Fout_;
    
freq_div_module UUT (
    .clk(clk_),
    .Fout(Fout_)
    );
    
initial begin
    clk_ = 1'b0;
    forever #10 clk_ = ~clk_;
    $finish;
end

initial begin

end
endmodule
