`timescale 1ns / 1ps

module clk_tb;
 reg clock_in;
 wire clock_out;
 
 clock_divider uut (.clock_in(clock_in), .clock_out(clock_out));
 initial begin
  
 clock_in = 0;
  
        forever #10 clock_in = ~clock_in;
 end
      
endmodule

