`timescale 1ns/1ps

module tb();
    reg clock, d;  
    wire q, a;

    main uut (
        .clock(clock),
        .d(d),
        .q(q),
        .a(a)
    );

    always begin
        #5 clock = ~clock;
    end

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb);
        clock = 0;
        d = 0;
        #2
        d = 1;
        #2;
        d = 0;
        #3
        d = 1;
        #4
        d = 0;
        #10
        d = 1;
        #10

        $finish;
    end

    initial begin
        $monitor("a=%b, clk=%b", a, clock);
    end
endmodule
