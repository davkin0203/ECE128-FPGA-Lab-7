`timescale 1ns / 1ps

module SR_Latch(input S, R, output Q, Qbar);
    nor #1 N1(Q, R, Qbar);
    not #1 N2(Qbar, S, Q);
endmodule

/////////////////////////////////////////////////////////////////////////

module SR_flipflop (
  input clk,
  input s,r,
  output reg q,
  output qbar
  );
  
  // always@(posedge clk or negedge rst_n) // for asynchronous reset
  always@(posedge clk) begin // for synchronous reset
      case({s,r})
        2'b00: q <= q;    // No change
        2'b01: q <= 1'b0; // reset
        2'b10: q <= 1'b1; // set
        2'b11: q <= 1'bx; // Invalid inputs
      endcase
    end
  assign qbar = ~q;
endmodule
