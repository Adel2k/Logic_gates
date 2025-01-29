`timescale 1ns / 1ps

module TB();
    reg a,b;
    wire q;

    main test(.a(a), .b(b), .q(q));
    initial begin
        a=0; b=0;
        #10;
        $display("a=%b b=%b -> a^b=%b", a, b, q);
        a=1; b=1;
        #10;
        $display("a=%b b=%b -> a^b=%b", a, b, q);
        a=0; b=1;
        #10;
        $display("a=%b b=%b -> a^b=%b", a, b, q);
        a=1; b=0;
        #10;
        $display("a=%b b=%b -> a^b=%b", a, b, q);
    end

endmodule