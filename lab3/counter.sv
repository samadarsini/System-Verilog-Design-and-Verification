module counter(
  output logic [4:0]count,
  input logic [4:0]data,
  input logic rst_, 
  input logic load, 
  input logic enable, 
  input logic clk);
  
  timeunit 1ns;
  timeprecision 100ps;
  
  always_ff @(posedge clk, negedge rst_)
    if(!rst_)
      count<=0;
    else if (load)
      count<=data;
    else if (enable)
      count<= count+1;
    else
      count <= count;
endmodule
  
