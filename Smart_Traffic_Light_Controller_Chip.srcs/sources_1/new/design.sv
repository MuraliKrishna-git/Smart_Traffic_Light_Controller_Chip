module SmartTrafficLight(
    input logic clk,
    input logic rst,
    input logic [3:0] vehicle_count_north, // Vehicle counts for each direction
    input logic [3:0] vehicle_count_south,
    input logic [3:0] vehicle_count_east,
    input logic [3:0] vehicle_count_west,
    output logic [1:0] light_north, // 00=Red, 01=Yellow, 10=Green
    output logic [1:0] light_south,
    output logic [1:0] light_east,
    output logic [1:0] light_west
);
    // States for traffic light
    typedef enum logic [1:0] {RED = 2'b00, YELLOW = 2'b01, GREEN = 2'b10} LightState;
    LightState north_state, south_state, east_state, west_state;

    // Traffic control logic
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            north_state <= RED;
            south_state <= RED;
            east_state <= GREEN; // Initial state
            west_state <= RED;
        end else begin
            // Simple density-based control
            if (vehicle_count_north > vehicle_count_east) begin
                north_state <= GREEN;
                south_state <= GREEN;
                east_state <= RED;
                west_state <= RED;
            end else if (vehicle_count_east > vehicle_count_south) begin
                north_state <= RED;
                south_state <= RED;
                east_state <= GREEN;
                west_state <= GREEN;
            end else begin
                north_state <= YELLOW;
                south_state <= YELLOW;
                east_state <= YELLOW;
                west_state <= YELLOW;
            end
        end
    end

    // Assign output lights
    assign light_north = north_state;
    assign light_south = south_state;
    assign light_east = east_state;
    assign light_west = west_state;
endmodule
