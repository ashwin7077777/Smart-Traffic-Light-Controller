class generator;

mailbox gen2drv;

function new(mailbox gen2drv);
    this.gen2drv = gen2drv;
endfunction

task run();

repeat(20)
begin

traffic_transaction tr;

tr = new();

gen2drv.put(tr);

#10;

end

endtask

endclass
