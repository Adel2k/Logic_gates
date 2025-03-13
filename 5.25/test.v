`timescale 1ns/1ps

module main(input clock, d, output wire a, output reg q);
    wire b, c; 

    assign a = ~clock;
    assign b = ~(d & clock);
    assign c = ~(q & a);

    always @(*) begin
        if (clock)
            q = ~(b & c);
    end
endmodule
