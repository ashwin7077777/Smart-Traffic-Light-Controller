class traffic_transaction;

bit [1:0] roadA;
bit [1:0] roadB;

function void display();

$display(
"ROADA=%b ROADB=%b",
roadA,
roadB
);

endfunction

endclass
