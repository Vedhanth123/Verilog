module and_testbench;
wire t_y; // can be used for inputs and outputs
reg t_a, t_b; // reg is used for registers to store data

orgate my_gate(.a(t_a), .b(t_b), .y(t_y));

initial
begin
  $monitor("a = ", t_a,", b = ", t_b," = ", t_y);

t_a = 1'b0; // 1 bit data 0 is assigned to t_a
t_b = 1'b0;

#5 // Time delay of 5 units of time
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
