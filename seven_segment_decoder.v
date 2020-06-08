module seven_segment_decoder(seg_out, seg_in);
  input [3:0] seg_in;
  output [6:0] seg_out;
  assign {w, x, y, z} = seg_in;
  
  assign a = ~w&~x&~y&z | ~w&x&~y&~z | w&x&~y&z |w&~x&y&z;
  assign b = ~w&x&~y&z | w&y&z | x&y&~z | w&x&~z;
  assign c = ~w&~x&y&~z | w&x&y | w&x&~z;
  assign d = ~w&x&~y&~z | ~w&~x&~y&z | w&~x&y&~z | x&y&z;
  assign e = ~w&z | ~w&x&~y | ~x&~y&z ;
  assign f = w&x&~y&z | ~w&y&z | ~w&~x&z | ~w&~x&y;
  assign g = ~w&~x&~y | ~w&x&y&z | w&x&~y&~z;
  
  assign seg_out = {g, f, e, d, c, b, a};
  
endmodule