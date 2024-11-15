module Rest_div_tb;

reg clk,rst,start;
reg [3:0]X,Y;
wire [3:0]quot,rem;
wire valid;

always #5 clk = ~clk;

Rest_div inst (clk,rst,start,X,Y,valid,quot,rem);

initial
$display("Time,clk,rst,X,Y,valid,quot,rem");

initial
begin
X=15;Y=8;clk=1'b1;rst=1'b0;start=1'b0;
#10 rst = 1'b1;
#10 start = 1'b1;
#10 start = 1'b0;
@valid
#10 X=10;Y=2;start = 1'b1;
#10 start = 1'b0;
#100
$finish();
end  
always #1 begin
 $display("%t,%d,%d,%d,%d,%d,%d,%d",$time,clk,rst,X,Y,valid,quot,rem);  
 end
endmodule