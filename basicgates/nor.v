module norgate(x, y, f);
	input x,y;
	output f;
	assign f = ~(x | y);
endmodule

