`timescale 1ns/1ps

module counter_6(
    output [2:0] counter,
    input clk, rst, w
);
    wire [2:0] d;

    dff dff0 (.q(counter[0]), .d(d[0]), .clk(clk), .rst(rst));
    dff dff1 (.q(counter[1]), .d(d[1]), .clk(clk), .rst(rst));
    dff dff2 (.q(counter[2]), .d(d[2]), .clk(clk), .rst(rst));

    assign d = (rst || counter == 3'b101) ? 3'b000 : (w ? counter + 1 : counter);

endmodule
