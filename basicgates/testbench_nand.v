module nand_testbench;
wire t_y;
reg t_a, t_b; 
nandgate my_gate(.x(t_a), .y(t_b), .f(t_y));
initial
begin
  $monitor("x = ", t_a,", y = ", t_b," = ", t_y);
  t_a = 1'b0;
  t_b = 1'b0;
#5
  t_a = 1'b1;
  t_b = 1'b0;
#5
  t_a = 1'b0;
  t_b = 1'b1;
#5
  t_a = 1'b1;
  t_b = 1'b1;
end
endmodule
