module main(output q, input wire a, input wire b);
    wire x, y;
    assign x = ~(a | b);
    assign y = a & b;
    assign q = ~(x | y);

endmodule