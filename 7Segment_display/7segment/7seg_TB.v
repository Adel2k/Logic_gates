`timescale 1ns / 1ps

module segment7_TB();
    reg x_TB, y_TB, z_TB, w_TB;
    wire a_TB, b_TB, c_TB, d_TB, e_TB, f_TB, g_TB;

    main test(
        .a(a_TB),
        .b(b_TB),
        .c(c_TB),
        .d(d_TB),
        .e(e_TB),
        .f(f_TB),
        .g(g_TB),
        .x(x_TB),
        .y(y_TB),
        .z(z_TB),
        .w(w_TB)
    );
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, segment7_TB);

        for (integer i = 0; i < 16; i = i + 1) begin
            {x_TB, y_TB, z_TB, w_TB} = i;
            #10;
            $display("a=%b b=%b c=%b d=%b e=%b f=%b g=%b | x=%b y=%b z=%b w=%b", a_TB, b_TB, c_TB, d_TB, e_TB, f_TB,g_TB, x_TB, y_TB, z_TB, w_TB);
        end
        $finish;
    end
endmodule
