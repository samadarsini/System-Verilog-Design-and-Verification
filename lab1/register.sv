module register(out,clk,enable,rst_,data);
input logic [7:0]data;
input logic clk, enable, rst_;
output logic [7:0]out;
  
timeunit 1ns;
timeprecision 100ps;
  
  always_ff @(posedge clk, negedge rst_)
    if(!rst_)
      out<=0;
    else if(enable)
      out<=data;
endmodule
