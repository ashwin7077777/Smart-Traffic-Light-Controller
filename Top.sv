module traffic_tb;

logic clk;

always #5 clk = ~clk;

initial
clk = 0;

traffic_if vif(clk);

traffic_light_controller dut(
.clk(clk),
.rst(vif.rst),
.roadA(vif.roadA),
.roadB(vif.roadB)
);

mailbox gen2drv;
mailbox mon2scb;

generator gen;
driver drv;
monitor mon;
scoreboard scb;

initial
begin

gen2drv = new();
mon2scb = new();

gen = new(gen2drv);
drv = new(vif,gen2drv);
mon = new(vif,mon2scb);
scb = new(mon2scb);

vif.rst = 1;

#20;

vif.rst = 0;

fork

gen.run();
drv.run();
mon.run();
scb.run();

join_none

#500;

$finish;

end

endmodule
