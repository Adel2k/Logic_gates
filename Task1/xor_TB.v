`timescale 1ns / 1ps

module xor_TB();
    reg a,b,c,d;
    wire q;
    
    main test(
        .a(a),
        .d(d),
        .b(b),
        .c(c),
        .q(q));
       initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, xor_TB); 

        for (integer i = 0; i < 16; i = i + 1) begin
            {a, b, c, d} = i;
            #10;
            $display("a=%b b=%b c=%b d=%b -> (a & b) ^ (c & d)=%b", a, b, c, d, q);
        end

        $finish;
    end
endmodule
