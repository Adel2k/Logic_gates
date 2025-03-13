`timescale 1ns / 1ps

module main(
    output wire a, b, c, d, e, f, g,
    input wire x, y, z, w
);
    wire invalid_input;
    assign invalid_input = x & (y | z | w);

    assign a = (~y & ~w) | z | x | (y & w) & ~invalid_input;
    assign b = x | (~x & ~y) | (~z & ~w) | (z & w) & ~invalid_input;
    assign c = x | ~z | (z & w) | y & ~invalid_input;
    assign d = x | (~y & ~z & ~w) | (~z & w & y) | (~y & ~z & ~x) | (z & ~w) & ~invalid_input;
    assign e = (~y & ~w) | (z & ~w) & ~invalid_input;
    assign f = (~z & ~w) | (y & ~z) | (y & ~w) | x & ~invalid_input;
    assign g = (~y & z) | (y & ~z) | (z & ~w) | x & ~invalid_input;

endmodule
