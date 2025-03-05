`timescale 1ns / 1ps

module TOP(
    input wire [1:0] top_sel,
    input wire [3:0] top_mux_data,
    input wire top_demux_data,
    output wire top_mux_led,
    output wire [3:0] top_demux_led,
    input wire [3:0] top_sw,
    input wire top_en,
    output wire [6:0] top_seg
  );
  
  MUX mux_instance (
    .sel(top_sel),
    .data(top_mux_data),
    .led(top_mux_led)
  );

  DEMUX demux_instance (
    .sel(top_sel),
    .data(top_demux_data),
    .led(top_demux_led)
  );
  
  SEVEN_SEGMENT seven_segment_instance (
    .sw(top_sw),
    .en(top_en),
    .seg(top_seg)
  );
endmodule

