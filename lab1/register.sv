module register(out,clk,enable,rst_,data);
input logic [7:0]data;
input logic clk, enable, rst_;
output logic [7:0]out;
timeunit 1ns;
timeprecision 100ps;
always_ff @(posedge clk or negedge rst_)
begin
if(!rst_)
out<=8'b0;
else if(enable)
out<=data;
end
endmodule
