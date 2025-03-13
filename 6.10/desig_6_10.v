`timescale 1ns/1ps

module desig_6_10 (
    input clk, w1, w2, rst,
    output reg z
);

  reg [3:0] s [0:3];
  reg [1:0] current_state, next_state;

    initial begin
    z = 0;
    current_state = 0;
    for (integer i = 0; i < 4; i++)
        s[i] = i;
    end
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= 2'b00;
        else 
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            0: begin
                if (w1 != w2)
                    z = 0;
                next_state = (w1 == w2) ? s[1] : s[0];
            end
            1: next_state = (w1 == w2) ? s[2] : s[0];
            2: next_state = (w1 == w2) ? s[3] : s[0];
            3: begin
                next_state = s[0];
                z = (w1 == w2) ? 1 : 0;
            end
            default: next_state = 2'b00;
    endcase
    end

endmodule
