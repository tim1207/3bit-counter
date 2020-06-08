module freq_div_23(clk_out, clk, reset);
  output clk_out;
  input clk, reset;
  reg [31:0] q;
  always @ (posedge clk or negedge reset)
  begin
    if(~reset)  q <= 0;
    else        q <= q + 1;
  end
  
  assign clk_out = q[23];
endmodule