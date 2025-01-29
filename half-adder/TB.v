`timescale 1ns / 1ps

module ha_tb();
    reg a, b;
    wire c,s;

    main ha(.a(a), .b(b), .sum(s), .carry(c));
    initial begin
        a=0; b =0; #10;
        $display("res = %d %d", s, c);
        a=1; b =0; #10;
        $display("res = %d %d", s, c);
        a=0; b =1; #10;
        $display("res = %d %d", s, c);
        a=1; b =1; #10;
        $display("res = %d %d", s, c);
    $finish;
    end
endmodule