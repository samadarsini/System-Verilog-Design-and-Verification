module multiplexer #(width=1)(
  output logic [width-1:0]out,
  input logic [width-1:0]in_a,
  input logic [width-1:0]in_b,
  input bit sel_a );
  
timeunit 1ns;
timeprecision 100ps;
  
  always_comb
    unique case(sel_a)
      1'b1: out=in_a;
      1'b0: out=in_b;
      default: out='x;
    endcase
    
endmodule
