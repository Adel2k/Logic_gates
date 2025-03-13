`timescale 1ns/1ps

module TB();
    wire Q;
    reg d, clr, clk;

    main TB(
        .Q(Q),
        .d(d),
        .clr(clr),
        .clk(clk)
    );

    always begin
        #50 clk = ~clk;
    end
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, dB);

        clk = 0;
        for (integer i = 0; i < 4; i++) begin
            {d, clr} = i;
            #100;
        end
        $finish;
    end
    initial begin
        $monitor("time = %0t clr = %b t = %b q = %b", $time, clr, d, Q);
    end

endmodule