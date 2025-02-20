`timescale 1ns / 1ps

module TOP(
    input wire clk,
    input wire [5:0] sw,
    output wire [0:0] led
  );
  
  mux mux_inst (
    .clk(clk),
    .sw(sw),
    .led(led)
  );
endmodule

