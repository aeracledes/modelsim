module testshiftregister #(parameter n =3);
	reg clk,in;
	wire [n-1:0] Q;
	shiftregister CUT1(in,clk,Q);

	initial begin : clk_initialize
		clk = 0;
	end
	always begin : clk_generate
		#10 clk = ~clk;
		end

initial
begin 
	in = 1'b0;
#10	in = 1'b1;
#10	in = 1'b1;
#50 $stop;$display("in=%b,clk=%b,Q=%b",in,clk,Q);
end
endmodule
