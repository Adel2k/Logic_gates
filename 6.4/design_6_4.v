`timescale 1ns/1ps

module design_6_4(
    input clk,
    input w,
    input reset,
    output reg z
);

    reg [3:0] s [0:15]; 
    reg [3:0] current_state, next_state;

    initial begin
        for (integer i = 0; i < 16; i++)
            s[i] = i;
    end
    always @(posedge clk) begin
        if (reset)
            current_state <= 4'b0000;
        else
            current_state <= next_state;
    end
    always @(*) begin
        z = 0;
        case (current_state)
            0: next_state = (w) ? s[1] : s[0];
            1: next_state = (w) ? s[3] : s[2];
            2: next_state = (w) ? s[5] : s[4];
            3: next_state = (w) ? s[7] : s[6];
            4: next_state = (w) ? s[9] : s[8];
            5: next_state = (w) ? s[11] : s[10];
            6: next_state = (w) ? s[13] : s[12];
            7: next_state = (w) ? s[15] : s[14];
            8: next_state = (w) ? s[1] : s[0];
            9: begin
                z = 1;
                next_state = (w) ? s[3] : s[2];
            end
            10: next_state = (w) ? s[5] : s[4];
            11: next_state = (w) ? s[7] : s[6];
            12: next_state = (w) ? s[9] : s[8];
            13: next_state = (w) ? s[11] : s[10];
            14: next_state = (w) ? s[13] : s[12];
            15: begin
                z = 1;
                next_state = (w) ? s[15] : s[14];
            end
            default: next_state = s[0];
        endcase
    end
endmodule