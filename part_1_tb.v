`timescale 1ns / 1ps

module SR_Latch_tb();
    reg r, s;
    wire q, qbar;
    
    SR_Latch DUT(.S(s), .R(r), .Q(q), .Qbar(qbar));
    
    initial
        begin
            r=0; s=0;
            #5 s=1;
            #5 s=0;
            #5 r=1;
            #5 r=0; s=1;
            #5 s=0; r=1;
            #5 r=0;
            #5 r=1; s=1;
        end
        
    initial begin
        $dumpfile("dump.vcd"); // record waveform
        $dumpfile(1);          // dispplay signals in testbench
    end
endmodule

module SR_flipflop_tb();
    reg S,R, CLK;
    wire Q, QBAR;

    SR_flipflop DUT(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(CLK)); // instantiation by port name.

    // apply test vectors
    initial begin
        CLK=0;
            forever #10 CLK = ~CLK;  
    end
    
    initial begin 
        S= 1; R= 0;
        #100; S= 0; R= 1; 
        #100; S= 0; R= 0; 
        #100;  S= 1; R=1; 
    end 
endmodule

