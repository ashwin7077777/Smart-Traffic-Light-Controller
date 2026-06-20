module traffic_light_controller
(
    input logic clk,
    input logic rst,

    output logic [1:0] roadA,
    output logic [1:0] roadB
);

typedef enum logic [1:0]
{
    A_GREEN,
    A_YELLOW,
    B_GREEN,
    B_YELLOW
} state_t;

state_t state,next_state;

logic [3:0] timer;

parameter GREEN_TIME  = 5;
parameter YELLOW_TIME = 2;

always_ff @(posedge clk or posedge rst)
begin
    if(rst)
        state <= A_GREEN;
    else
        state <= next_state;
end

always_ff @(posedge clk or posedge rst)
begin
    if(rst)
        timer <= 0;
    else if(state != next_state)
        timer <= 0;
    else
        timer <= timer + 1;
end

always_comb
begin

    next_state = state;

    case(state)

        A_GREEN:
            if(timer == GREEN_TIME)
                next_state = A_YELLOW;

        A_YELLOW:
            if(timer == YELLOW_TIME)
                next_state = B_GREEN;

        B_GREEN:
            if(timer == GREEN_TIME)
                next_state = B_YELLOW;

        B_YELLOW:
            if(timer == YELLOW_TIME)
                next_state = A_GREEN;

    endcase

end

always_comb
begin

    roadA = 2'b00;
    roadB = 2'b00;

    case(state)

        A_GREEN:
        begin
            roadA = 2'b10;
            roadB = 2'b00;
        end

        A_YELLOW:
        begin
            roadA = 2'b01;
            roadB = 2'b00;
        end

        B_GREEN:
        begin
            roadA = 2'b00;
            roadB = 2'b10;
        end

        B_YELLOW:
        begin
            roadA = 2'b00;
            roadB = 2'b01;
        end

    endcase

end

endmodule
