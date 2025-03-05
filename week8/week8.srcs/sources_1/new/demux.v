`timescale 1ns / 1ps

module DEMUX(
    input wire [1:0] sel,
    input wire data,
    output reg [3:0] led
  );

  always @(*) begin
    led = 4'b0000;
    case(sel)
      2'b00: led[0] = data;
      2'b01: led[1] = data;
      2'b10: led[2] = data;
      2'b11: led[3] = data;
      default: led[3:0] = 4'b0000;
    endcase
  end
endmodule
