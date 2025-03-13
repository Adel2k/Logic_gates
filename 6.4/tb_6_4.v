`timescale 1ns/1ps

module tb_design_6_4;

    reg clk;
    reg w;
    reg reset;
    wire z;

    design_6_4 dut (
        .clk(clk),
        .w(w),
        .reset(reset),
        .z(z)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("wavefile.vcd");
        $dumpvars(0, tb_design_6_4);
        clk = 0;
        reset = 1;
        w = 0;
        #10;

        reset = 0; 
        #10;
        w = 0; #10;
        w = 1; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;

        $finish;
    end

    always @(posedge clk) begin
        $display("w=%b | z=%b", w, z);
    end

endmodule
