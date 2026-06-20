class scoreboard;

mailbox mon2scb;

function new(mailbox mon2scb);

this.mon2scb = mon2scb;

endfunction

task run();

traffic_transaction tr;

forever
begin

mon2scb.get(tr);

if(tr.roadA == 2'b10 &&
   tr.roadB == 2'b10)
begin
    $error(
    "Both roads GREEN!"
    );
end

end

endtask

endclass
