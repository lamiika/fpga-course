`timescale 1ns / 1ps

module DEMUX_tb;
  reg [1:0] sel = 2'b00;
  reg data = 1'b0;
  wire [3:0] led;
  integer i, j;
  
  DEMUX uut(
    .sel (sel),
    .data (data),
    .led (led)
  );
  
  initial begin
  sel = 2'b00;
  data = 1'b0;
  
  for (i=0; i<4; i=i+1) begin
    sel = i;
    for (j=0; j<2; j=j+1) begin
      data = j;
      #10;
    end
  end
  
  #5;
  $finish;
  end
endmodule
