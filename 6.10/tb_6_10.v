`timescale 1ns/1ps

module tb_6_10;

    reg clk;
    reg w1, w2, rst;
    wire z;

    desig_6_10 uut (
        .clk(clk),
        .w1(w1),
        .w2(w2),
        .rst(rst),
        .z(z)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        w1 = 0;
        w2 = 0;
        w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 0; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 0; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 0; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 0; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
         w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 0; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 1; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        w1 = 0; w2 = 1; #10;
        $display("Time = %t, w1 = %d, w2 = %d, z = %d", $time, w1, w2, z);
        $finish;
    end
endmodule
