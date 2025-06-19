module register_tb;
logic [7:0]out;
logic [7:0]data;
logic clk;
logic enable;
logic rst_;

timeunit 1ns;
timeprecision 100ps;
  
register reg1(.out(out),.clk(clk),.enable(enable),.rst_(rst_),.data(data));

initial clk=0;
always #5 clk=~clk;

  
initial begin
  $dumpfile("register.vcd");
  $dumpvars(0,register_tb);

$monitor("At time t=%0t, clk=%b, rst_ =%b, enable= %b, data =%d, out=%d", $time, clk, rst_, enable, data, out);

enable=0; rst_=0;

#5  rst_=1; enable=1; data=5;
#5  rst_=1; enable=1; data=5;
#5  rst_=1; enable=0; data=9;
#5  rst_=1; enable=1; data=10;
#5  rst_=1; enable=1; data=10;
#5  rst_=0; enable=0; data=5;
#5  rst_=1; enable=1; data=5;
#5  rst_=1; enable=0; data=9;
#5  rst_=1; enable=1; data=10;
#10 $finish;
end
endmodule
