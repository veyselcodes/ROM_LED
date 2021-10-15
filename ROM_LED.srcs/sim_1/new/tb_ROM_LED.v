`timescale 1ns / 1ps

module tb_ROM_LED(
    );
    
    wire [7:0] led;
    reg clk;
    
    LED_with_ROM LED_R(
	.clk(clk),
	.LED(led)
);
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
    end
    
endmodule
