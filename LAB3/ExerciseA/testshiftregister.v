module testshiftregister #(parameter n =8);
	reg clk,in,clr;
	wire [n-1:0] Q;
	shiftregister CUT1(clk,in,clr,Q);
	initial begin : clk_initialize
		clk = 0;
	end
	always begin : clk_generate
		#10 clk = ~clk;
		end

initial
begin 
	in = 1'b0; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b1; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#10	in = 1'b0; clr=1'b0;
#50 	in = 1'b0; clr=1'b1;
#10	$stop;
end
initial $monitor ($time,  , "clk = %b, in=%b, clr=%b, Q=%b",clk,in,clr,Q);
endmodule
