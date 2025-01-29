module main(
            output q,
            input wire a,
            input wire b,
            input wire c,
            input wire d);
  assign q = (a & b) ^ (c & d);
endmodule

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
        a = 0; b= 0; c=0; d=0; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 0; b= 0; c=0; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 0; b= 0; c=1; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 0; b= 1; c=1; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 0; c=1; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 1; c=0; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 0; c=0; d=0; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 1; c=0; d=0; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 1; c=1; d=0; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        a = 1; b= 1; c=1; d=1; #100;
        $display ("a=%d b=%d c=%d d=%d, xor=%d", a,b,c,d,q);
        $finish;
    end
endmodule
