`timescale 1ns / 1ps

module MUX(
    input wire [1:0] sel,
    input wire [3:0] data,
    output reg led
  );

  always @(*) begin
    led = 1'b0;
    case(sel)
      2'b00: led = data[0];
      2'b01: led = data[1];
      2'b10: led = data[2];
      2'b11: led = data[3];
      default: led = 1'b0;
    endcase
  end
endmodule

