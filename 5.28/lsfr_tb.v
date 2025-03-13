`timescale 1ns/1ps

module lfsr_tb;
    reg [0:2] R;
    reg L, Clock;
    wire [0:2] Q;

    lfsr uut (
        .R(R),
        .L(L),
        .Clock(Clock),
        .Q(Q)
    );

    initial begin
        Clock = 0;
        forever #5 Clock = ~Clock;
    end

    initial begin
        $dumpfile("waveform.vcd"); 
        $dumpvars(0, lfsr_tb);

        $monitor("Time = %0t | Q = %b", $time, Q);

        L = 1; R = 3'b001;
        #10;

        L = 0;
        #50; 
        $finish;
    end
endmodule
