`timescale 1ns / 1ps

module dff_tb();
    reg clk;
    reg d;
    reg rstn;
    
    dff dff0(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk = ~clk;
    
    initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;
        
        #15 d <= 1;
        #10 rstn <= 1;
        
        #10 d <= 0;
        #15 clk <= 1;
        #10 rstn <= 1;
        
        #10 d <= 1;
        #15 clk <= 0;
        #10 rstn <= 1;
        
        #10 d <= 1;
        #15 clk <= 1;
        #10 rstn <= 0;
        
        #10 d <= 1;
        #15 clk <= 0;
        #10 rstn <= 0;
        
        
     end
endmodule
