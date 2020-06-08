module top(hex, ud, clk, reset);
  output [6:0]hex;
  input ud, clk, reset;
  wire clk_out;
  wire [2:0]data;
  freq_div_23 fd(.clk_out(clk_out), .clk(clk), .reset(reset));
  //assign clk_out = clk;
  counter_three ct3(.data(data), .ud(ud), .clk(clk_out), .reset(reset));
  seven_segment_decoder ssd(.seg_out(hex), .seg_in({1'b0, data}));
endmodule