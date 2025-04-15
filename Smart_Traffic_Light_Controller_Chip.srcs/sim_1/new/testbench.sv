module tb_SmartTrafficLight;
    logic clk, rst;
    logic [3:0] vehicle_count_north, vehicle_count_south;
    logic [3:0] vehicle_count_east, vehicle_count_west;
    logic [1:0] light_north, light_south, light_east, light_west;

    // DUT Instance
    SmartTrafficLight uut (
        .clk(clk),
        .rst(rst),
        .vehicle_count_north(vehicle_count_north),
        .vehicle_count_south(vehicle_count_south),
        .vehicle_count_east(vehicle_count_east),
        .vehicle_count_west(vehicle_count_west),
        .light_north(light_north),
        .light_south(light_south),
        .light_east(light_east),
        .light_west(light_west)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Testbench logic
    initial begin
        rst = 0;
        vehicle_count_north = 4'd5;
        vehicle_count_south = 4'd3;
        vehicle_count_east = 4'd7;
        vehicle_count_west = 4'd2;
        #10 rst = 1;

        #20 vehicle_count_north = 4'd8; vehicle_count_east = 4'd4;
        #20 vehicle_count_south = 4'd9; vehicle_count_west = 4'd6;
        #30;

        $stop;
    end
endmodule
