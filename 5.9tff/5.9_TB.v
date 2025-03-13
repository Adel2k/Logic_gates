`timescale 1ns/1ps

module TB();
    wire Q;
    reg T, clr, clk;

    main TB(
        .Q(Q),
        .T(T),
        .clr(clr),
        .clk(clk)
    );

    always begin
        #50 clk = ~clk;
    end
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);

        clk = 0;
        for (integer i = 0; i < 4; i++) begin
            {T, clr} = i;
            #100;
        end
        $finish;
    end
    initial begin
        $monitor("time = %0t clr = %b t = %b q = %b", $time, clr, T, Q);
    end

endmodule