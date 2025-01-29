module main(
            output q,
            input wire a,
            input wire b,
            input wire c,
            input wire d);
  assign q = (a & b) ^ (c & d);
endmodule
