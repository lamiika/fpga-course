`timescale 1ns / 1ps

module testbench_AndGate();
  reg a, b;
  wire y;

  AndGate dut(a,b,y);
  initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
  end
endmodule
