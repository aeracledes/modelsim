module testshiftregister #(parameter n =8);
	reg clk,in,clr;
	wire [n-1:0] Q;
	shiftregister CUT1(clk,in,clr,Q);
	always #10 clk=~clk;
	initial begin
	clk <= 0;
	in <= 0;
	clr <= 0;
	end
	initial begin
		#10 clr<=0;
		#20 clr<=1;
		#10 clr <= 0;
		repeat(7) @(posedge clk)
			in <= ~in;
		repeat(7) @(posedge clk)
		$finish;
	end
	initial $monitor ($time,  , "clk = %b, in=%b, clr=%b, Q=%b",clk,in,clr,Q);
endmodule
