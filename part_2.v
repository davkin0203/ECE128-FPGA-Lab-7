`timescale 1ns / 1ps

module dff( input d, 
            input rstn,
            input clk,
            output reg q);
            
      always @ (posedge clk or negedge rstn)
        if (!rstn)
            q <= 0;
        else
            q <= d;
endmodule
