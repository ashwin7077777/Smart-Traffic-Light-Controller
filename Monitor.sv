class monitor;

virtual traffic_if vif;

mailbox mon2scb;

function new(
virtual traffic_if vif,
mailbox mon2scb
);

this.vif = vif;
this.mon2scb = mon2scb;

endfunction

task run();

traffic_transaction tr;

forever
begin

@(posedge vif.clk);

tr = new();

tr.roadA = vif.roadA;
tr.roadB = vif.roadB;

mon2scb.put(tr);

end

endtask

endclass
