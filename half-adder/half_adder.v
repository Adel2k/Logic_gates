module main(output carry, output sum, input wire a, input wire b);
    assign carry = a & b;
    assign sum = a ^ b;
endmodule