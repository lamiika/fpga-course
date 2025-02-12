`timescale 1ns / 1ps

module TOP(
  input wire [5:1] sw,
  output wire [8:0] led
);
  assign led[0] = ~sw[2] && ~sw[3];
  assign led[1] = (~sw[3] && sw[2]) || (sw[3] && ~sw[2] && ~sw[1]);
  assign led[2] = (sw[3] && sw[1]) || (sw[3] && sw[2] && ~sw[1]);
  
  assign led[3] = sw[4] && sw[5]; // T2
  assign led[4] = sw[4] || sw[5]; // T3
  assign led[5] = ~(sw[4] && sw[5]); // T4
  assign led[6] = ~(sw[4] || sw[5]); // T5
  assign led[7] = sw[4] ^ sw[5]; // T6
  assign led[8] = ~(sw[4] ^ sw[5]); // T7
endmodule