`timescale 1ns / 1ps

module MUX(
    input wire clk,
    input wire [5:0] sw,
    output reg [0:0] led
  );

  always @(*) begin
    if (~sw[0] & ~sw[1]) begin
      led[0] <= sw[2];
    end
    if (~sw[0] && sw[1]) begin
      led[0] <= sw[3];
    end
    if (sw[0] && ~sw[1]) begin
      led[0] <= sw[4];
    end
    if (sw[0] && sw[1]) begin
      led[0] <= sw[5];
    end
  end
endmodule

