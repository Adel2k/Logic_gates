`timescale 1ns/1ps

module main(
    output reg Q,
    input d, clr, clk
    );

    always @(posedge clk or posedge clr) begin
        if (clr == 1) begin
            Q <= 0;
        end
        else begin
            Q <= d;
        end

    end
endmodule