`timescale 1ns / 1ps

module SEVEN_SEGMENT (
    input wire [3:0] sw,
    input wire en,
    output reg [6:0] seg
  );
  
  always @(*) begin
    if (en == 1'b1) begin
      case(sw)
        4'd0: seg = 7'b1000000;
        4'd1: seg = 7'b1111001;
        4'd2: seg = 7'b0100100;
        4'd3: seg = 7'b0110000;
        4'd4: seg = 7'b0011001;
        4'd5: seg = 7'b0010010;
        4'd6: seg = 7'b0000010;
        4'd7: seg = 7'b1111000;
        4'd8: seg = 7'b0000000;
        4'd9: seg = 7'b0010000;
        default: seg = 7'b1111111;
      endcase
    end
    else begin
      seg = 7'b1111111;
    end
  end
endmodule
