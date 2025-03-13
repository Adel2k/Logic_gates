`timescale 1ns/1ps

module main(
    output reg [3:0]counter,
    input reset, clk
    );
    initial begin
        counter = 4'b0000;
    end
    always @(posedge clk) begin
        if (reset || counter == 4'b1011)
            counter <= 4'b0000;
        else 
            counter <= counter + 1;
    end

endmodule