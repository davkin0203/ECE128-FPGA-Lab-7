`timescale 1ns / 1ps

module tff  ( input clk,input rst, input T, output reg Q);  
  
          always @ (posedge clk or rst) begin  
    
        if (rst)  
            Q <= 1'b0;  
        else if(T)
            Q <= ~Q;  
        else
             Q <= Q; 
  end  
endmodule  


module Counters( sysclk,rst,Q1,Q2,Q3);
   input sysclk;
   input rst;
   output Q1;
   output Q2;
   output Q3;

  wire tt2;
  wire tt3;

    tff       num_1(.clk(sysclk), .rst(rst), .T(1'b1),.Q(Q1));
    assign tt2 = Q1;
    tff       num_2(.clk(sysclk), .rst(rst), .T(tt2),.Q(Q2));
    assign tt3 = Q1& (Q2);
    tff       num_3(.clk(sysclk), .rst(rst), .T(tt3),.Q(Q3)); 

    
 endmodule


