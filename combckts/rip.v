
module fulladder(a, b, cin, s, c);
	input a,b,cin;
	output s,c;
	assign s = a^b^cin;
	assign c = (a&b) | (b&cin) | (cin&a);
endmodule

module rip(
	input [3:0]a, b,
	input cin,
	output [3:0]s, cout);

	fulladder fa(a[0], b[0], cin, s[0], cout[0]);
	
	genvar i;
	generate
		for(i=1;i<4;i=i+1) begin
			fulladder fa(a[i],b[i], cout[i-1], s[i], cout[i]);
		end
	endgenerate
endmodule
