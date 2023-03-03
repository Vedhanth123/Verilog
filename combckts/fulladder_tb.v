module fulladder_tb;
	wire t_c, t_s;
	reg t_a, t_b, t_cin;
	fulladder fulladder_tb(.a(t_a), .b(t_b), .cin(t_cin), .s(t_s), .c(t_c));
initial
begin
	$monitor(t_a,t_b,t_cin,"|",t_s,t_c);
	t_a = 1'b0;
	t_b = 1'b0;
	t_cin = 1'b0;
#5
	t_a = 1'b0;
        t_b = 1'b0;
        t_cin = 1'b1;
#5
        t_a = 1'b0;
        t_b = 1'b1;
        t_cin = 1'b0;
#5
        t_a = 1'b0;
        t_b = 1'b1;
        t_cin = 1'b1;
#5
        t_a = 1'b1;
        t_b = 1'b0;
        t_cin = 1'b0;
#5
        t_a = 1'b1;
        t_b = 1'b0;
        t_cin = 1'b1;
#5
        t_a = 1'b1;
        t_b = 1'b1;
        t_cin = 1'b0;
#5
        t_a = 1'b1;
        t_b = 1'b1;
        t_cin = 1'b1;
end
endmodule
