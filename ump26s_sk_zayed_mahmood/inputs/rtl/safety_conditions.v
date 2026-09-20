`timescale 1ns/1ps

// Classifies fault inputs into safety conditions for the FSM.
module safety_conditions (
    input wire       battery_low,
    input wire       battery_critical,
    input wire [1:0] navigation_fault,
    input wire [2:0] payload_fault,
    input wire       propulsion_fault,
    input wire       obstacle_detected,
    input wire       adverse_weather,
    output wire      preflight_fault,
    output wire      emergency_land_condition,
    output wire      manual_safety_condition,
    output wire      return_home_condition,
    output wire      warning_condition
);

    // Navigation: [0]=Level 0, [1]=Level 1.
    wire navigation_level0_fault;
    wire navigation_level1_fault;

    assign navigation_level0_fault = navigation_fault[0];
    assign navigation_level1_fault = navigation_fault[1];

    // Payload: [0]=Mission, [1]=Safety L0, [2]=Safety L1.
    wire payload_mission_fault;
    wire payload_safety_level0_fault;
    wire payload_safety_level1_fault;

    assign payload_mission_fault       = payload_fault[0];
    assign payload_safety_level0_fault = payload_fault[1];
    assign payload_safety_level1_fault = payload_fault[2];

    // Automatic action conditions; FSM resolves their priority.
    assign emergency_land_condition =
           battery_critical
        || propulsion_fault
        || navigation_level1_fault
        || payload_safety_level1_fault;

    assign manual_safety_condition =
           navigation_level0_fault
        || payload_safety_level0_fault;

    assign return_home_condition =
           battery_low
        || adverse_weather
        || payload_mission_fault;

    // Warning is an indicator condition separate from FSM actions.
    assign warning_condition =
           obstacle_detected
        || return_home_condition
        || manual_safety_condition;

    // Any active battery, navigation, payload, or propulsion fault inhibits flight readiness.
    assign preflight_fault =
           battery_low
        || battery_critical
        || (|navigation_fault)
        || (|payload_fault)
        || propulsion_fault;

endmodule