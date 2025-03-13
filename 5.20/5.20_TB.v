`timescale  1ns/1ps

module TB();
    wire [3:0] counter;
    reg reset, clk;

    main test(
        .counter(counter),
        .reset(reset),
        .clk(clk)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        $monitor("time = %0t\t|\tclk = %b\t|\treset = %b\t|\tcounter = %d", $time, clk, reset, counter);
    end

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 0;
        #150;
        reset = 1;
        #10;
        reset = 0;
        #20;
        $finish;
    end

endmodule