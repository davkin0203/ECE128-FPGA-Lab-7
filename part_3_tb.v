`timescale 1ns / 1ps

module tff_tb();
    reg sysclk;
    reg rst;
    wire Q1;
    wire Q2;
    wire Q3;
    
    Counters u0(.sysclk(sysclk), .rst(rst), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    initial begin 
        sysclk = 0;
            forever #10 sysclk = ~sysclk;
    end
     
     initial begin
        rst = 1;
        #10 rst = 0;
        
        #200;
        
        end
        
    //initial begin
//        #10 Q1 = 0;
//         Q2 = 0;
//         Q3 = 0;
        
//        #10 Q1 = 1;
//         Q2 = 0;
//         Q3 = 0;
        
//        #10 Q1 = 0;
//         Q2 = 1;
//         Q3 = 0;
        
//        #10 Q1 = 1;
//         Q2 = 1;
//         Q3 = 0;
        
//        #10 Q1 = 0;
//         Q2 = 0;
//         Q3 = 1;
        
     // end
endmodule
