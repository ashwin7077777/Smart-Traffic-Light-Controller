property no_both_green;

@(posedge clk)

!(roadA == 2'b10 &&
  roadB == 2'b10);

endproperty

assert property(no_both_green);
