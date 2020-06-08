module counter_three(data, ud, clk, reset);
  input reset, clk, ud;
  output [2:0]data;
  wire [2:0]d;
  df d0(data[0], d[0], clk, reset);
  df d1(data[1], d[1], clk, reset);
  df d2(data[2], d[2], clk, reset);
  assign d[0] = ~data[0];
  assign d[1] = ud&~data[1]&~data[0] | ~ud&~data[1]&data[0] | ud&data[1]&data[0] | data[1]&~data[0]&~ud;
  assign d[2] = ~ud&~data[2]&data[1]&data[0] | ~ud&data[2]&~data[1] |~ud&data[2]&~data[0] | ud&data[2]&data[0] | ud&data[2]&data[1] | ud&~data[2]&~data[1]&~data[0];
endmodule