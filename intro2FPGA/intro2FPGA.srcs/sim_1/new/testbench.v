`timescale 1ns / 1ps

module testbench;
  // inputs
  reg [5:1] sw = 0;
  // outputs
  wire [8:0] led;
  // Unit Under Test (UUT)
  TOP uut (
    .sw (sw),
    .led(led)
  );
  
  integer k = 0;

  initial
  begin
    sw=0;

    for(k=0; k<32; k=k+1)
      #10 sw=k;

    #5
    $finish;
  end
endmodule