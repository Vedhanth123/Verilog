module halfadder_tb;
	wire t_s,t_c;
	reg t_a, t_b;
	halfadder halfadder_tb(.a(t_a), .b(t_b), .s(t_s), .c(t_c));
initial
begin
	$monitor("a = ", t_a, " b = ", t_b, "|", t_s, t_c);
	t_a = 1'b0;
	t_b = 1'b0;
#5
	t_a = 1'b0;
	t_b = 1'b1;
#5
	t_a = 1'b1;
	t_b = 1'b0;
#5 
	t_a = 1'b1;
	t_b = 1'b1;
end
endmodule
