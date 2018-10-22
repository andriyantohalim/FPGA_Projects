`timescale 1ns/1ps

module test_tb;

real a, b, c, d;

real x, y, z;

integer i;

initial begin
    a = 0.5;
    b = -1.43;
    c = 33.30;
    d = -1.22;
  
end

initial begin
    for(i = 0 ; i < 16; i=i+1)
    begin
        a <= a + 2.2;
        b <= b - 1.773;
        c <= c - a**2 ;
        d <= d-5;
        
        x = x + 2*a;
        y = y - 0.5*d;
        z = 1.0 * (x/y);
        
        $display ("Input X = %8.8f, Input Y = %8.8f. Output Z = %8.8f", x, y, z);
        #50;
    end
end



endmodule