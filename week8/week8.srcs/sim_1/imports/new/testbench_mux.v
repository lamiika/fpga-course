`timescale 1ns / 1ps

module MUX_tb;
  reg [1:0] sel = 2'b00;
  reg [3:0] data = 4'b0000;
  wire led;
  integer i, j;
  
  MUX uut (
    .sel(sel),
    .data(data),
    .led(led)
  );
  
  initial begin
    sel = 2'b00;
    data = 4'b0000;
    
    for (i=0; i<4; i=i+1) begin
      sel=i;
      for (j=0; j<4; j=j+1) begin
        data=4'b0000;
        data[j] = 1'b1;
        #10;
      end
    end
        
    #5;
    $finish;
  end
endmodule
