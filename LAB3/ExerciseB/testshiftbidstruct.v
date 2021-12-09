module testshiftbidstruct #(parameter n =8);
	reg clk,in,clr,lr_bar;
	wire [n-1:0] q;
	shiftbidstruct CUT1(clk,in,clr,lr_bar,q);
	always #10 clk=~clk;
	initial begin
	clk <= 0;
	in <= 0;
	clr <= 0;
	lr_bar <= 0;
	end
	initial begin
		#10 clr<=0;
		#20 clr<=1;
		#10 clr <= 0;
		repeat(7) @(posedge clk)
			in <= ~in;
		#20 lr_bar<=~lr_bar;
		repeat(7) @(posedge clk)
		$finish;
	end
	initial $monitor ($time,  , "clk = %b, in=%b, clr=%b, lr_bar=%b, q=%b",clk,in,clr,lr_bar,q);
endmodule
