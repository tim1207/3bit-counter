module test_three;
  reg reset, clk, ud;
  wire [2:0]data;
  counter_three ct(data, ud, clk, reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; ud = 0;
    #10 reset = 1;
    #100 ud= 1;
    #500 $stop;
  end
endmodule  