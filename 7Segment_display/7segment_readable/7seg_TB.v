`timescale 1ns / 1ps

module TB();
    reg [4:0] in_TB;
    wire a_TB, b_TB, c_TB, d_TB, e_TB, f_TB, g_TB;

    main test(
        .a(a_TB),
        .b(b_TB),
        .c(c_TB),
        .d(d_TB),
        .e(e_TB),
        .f(f_TB),
        .g(g_TB),
        .in(in_TB[3:0])
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);

        for (in_TB = 0; in_TB < 16; in_TB = in_TB + 1) begin
            #10;
            $display("a=%b b=%b c=%b d=%b e=%b f=%b g=%b | x=%b", a_TB, b_TB, c_TB, d_TB, e_TB, f_TB,g_TB, in_TB);
        end
        
        #10;
        $finish;
    end
endmodule
