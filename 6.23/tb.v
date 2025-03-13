`timescale 1ns/1ps

module tb;

    reg clk;
    reg rst;
    reg w;
    wire [2:0] counter;

    counter_6 uut (
        .counter(counter),
        .rst(rst),
        .clk(clk),
        .w(w)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("rst=%b | W=%b | Counter=%b", rst, w, counter);

        clk = 0;  
        rst = 1;
        w = 0;  

        #10 rst = 0;
        w = 1;
        #130;
        w = 0;
        #100
        w = 1;
        #200;

        $finish;
    end

endmodule
