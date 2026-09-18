`timescale 1ns/1ps

module tb_uav_safety_controller;

localparam CLK_PERIOD = 10;

localparam IDLE               = 4'd0;
localparam PREFLIGHT_CHECK    = 4'd1;
localparam FLIGHT_READY       = 4'd2;
localparam FLIGHT_INHIBIT     = 4'd3;
localparam NORMAL_FLIGHT      = 4'd4;
localparam MANUAL_SAFETY      = 4'd5;
localparam MANUAL_FLIGHT      = 4'd6;
localparam RETURN_HOME        = 4'd7;
localparam EMERGENCY_LAND     = 4'd8;
localparam EMERGENCY_SHUTDOWN = 4'd9;

reg clk;
reg uav_active;
reg flight_active;
reg reset;

reg manual_flight_control;
reg emergency_shutdown;
reg [3:0] shutdown_select;

reg battery_low;
reg battery_critical;
reg [1:0] navigation_fault;
reg [2:0] payload_fault;
reg propulsion_fault;
reg obstacle_detected;
reg adverse_weather;

wire flight_ready;
wire flight_inhibit;
wire warning;
wire alarm;
wire force_manual_mode;
wire return_home;
wire emergency_land;
wire [3:0] shutdown_cmd;

integer failures;
integer total_checks;
integer passed_checks;
integer passed_tests;
integer failed_tests;
integer total_tests;
integer invariant_failures;

reg current_test_failed;
reg test_active;

integer i;

uav_safety_controller #(
    .GRACE_PERIOD_CYCLES(3),
    .SHUTDOWN_PERIOD_CYCLES(3),
    .SHUTDOWN_SELECTION_TIMEOUT_CYCLES(4)
) dut (
    .clk(clk),
    .uav_active(uav_active),
    .flight_active(flight_active),
    .reset(reset),

    .manual_flight_control(manual_flight_control),
    .emergency_shutdown(emergency_shutdown),
    .shutdown_select(shutdown_select),

    .battery_low(battery_low),
    .battery_critical(battery_critical),
    .navigation_fault(navigation_fault),
    .payload_fault(payload_fault),
    .propulsion_fault(propulsion_fault),
    .obstacle_detected(obstacle_detected),
    .adverse_weather(adverse_weather),

    .flight_ready(flight_ready),
    .flight_inhibit(flight_inhibit),
    .warning(warning),
    .alarm(alarm),
    .force_manual_mode(force_manual_mode),
    .return_home(return_home),
    .emergency_land(emergency_land),
    .shutdown_cmd(shutdown_cmd)
);

always #(CLK_PERIOD/2) clk = ~clk;


task clear_inputs;
    begin
        uav_active             = 1'b0;
        flight_active          = 1'b0;
        reset                  = 1'b0;
        manual_flight_control  = 1'b0;
        emergency_shutdown     = 1'b0;
        shutdown_select        = 4'b0000;

        battery_low            = 1'b0;
        battery_critical       = 1'b0;
        navigation_fault       = 2'b00;
        payload_fault          = 3'b000;
        propulsion_fault       = 1'b0;
        obstacle_detected      = 1'b0;
        adverse_weather        = 1'b0;
    end
endtask


task check_state;
    input [3:0] expected;
    input [255:0] label;
    begin
        total_checks = total_checks + 1;

        if (dut.state === expected) begin
            passed_checks = passed_checks + 1;
        end else begin
            failures = failures + 1;
            if (test_active)
                current_test_failed = 1'b1;
            $display("    FAIL: %0s | state=%0d expected=%0d",
                     label, dut.state, expected);
        end
    end
endtask


task check_bit;
    input actual;
    input expected;
    input [255:0] label;
    begin
        total_checks = total_checks + 1;

        if (actual === expected) begin
            passed_checks = passed_checks + 1;
        end else begin
            failures = failures + 1;
            if (test_active)
                current_test_failed = 1'b1;
            $display("    FAIL: %0s | value=%b expected=%b",
                     label, actual, expected);
        end
    end
endtask


task check_vector;
    input [3:0] actual;
    input [3:0] expected;
    input [255:0] label;
    begin
        total_checks = total_checks + 1;

        if (actual === expected) begin
            passed_checks = passed_checks + 1;
        end else begin
            failures = failures + 1;
            if (test_active)
                current_test_failed = 1'b1;
            $display("    FAIL: %0s | value=%b expected=%b",
                     label, actual, expected);
        end
    end
endtask


task start_preflight;
    begin
        clear_inputs();

        reset = 1'b1;
        @(posedge clk);
        #1;
        @(negedge clk);
        reset = 1'b0;
        uav_active = 1'b1;

        @(posedge clk);
        #1;
    end
endtask


task enter_flight_ready;
    begin
        start_preflight();
        @(posedge clk);
        #1;
    end
endtask


task enter_normal_flight;
    begin
        enter_flight_ready();

        flight_active = 1'b1;

        @(posedge clk);
        #1;

        check_state(NORMAL_FLIGHT, "enter normal flight");
    end
endtask


task reset_to_preflight;
    begin
        reset = 1'b1;
        @(posedge clk);
        #1;
        @(negedge clk);
        reset = 1'b0;
    end
endtask


task wait_cycles;
    input integer cycles;
    integer n;
    begin
        for (n = 0; n < cycles; n = n + 1)
            @(posedge clk);

        #1;
    end
endtask


task begin_test;
    input integer number;
    input [255:0] name;
    begin
        $display("");
        total_tests = total_tests + 1;
        current_test_failed = 1'b0;
        test_active = 1'b1;
        $display("TEST %02d: %0s", number, name);
    end
endtask


task finish_test;
    begin
        #1;
        if (current_test_failed) begin
            failed_tests = failed_tests + 1;
            $display("    FAIL");
        end else begin
            passed_tests = passed_tests + 1;
            $display("    PASS");
        end
        test_active = 1'b0;
    end
endtask


always @(posedge clk) begin
    #1;

    if (warning && alarm) begin
        $display("INVARIANT FAIL: warning and alarm asserted together");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end

    if (flight_ready && flight_inhibit) begin
        $display("INVARIANT FAIL: flight_ready and flight_inhibit asserted together");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end

    if (dut.shutdown_committed &&
        dut.shutdown_cmd_latched == 4'b0000) begin
        $display("INVARIANT FAIL: committed shutdown has zero command");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end

    if (dut.shutdown_confirmation_active &&
        dut.shutdown_cmd_latched == 4'b0000) begin
        $display("INVARIANT FAIL: shutdown confirmation active without valid selection");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end

    if (dut.shutdown_request_blocked &&
        dut.shutdown_confirmation_active) begin
        $display("INVARIANT FAIL: locked-out shutdown request entered confirmation");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end

    if (dut.state == EMERGENCY_SHUTDOWN &&
        (!dut.shutdown_committed ||
         shutdown_cmd == 4'b0000 ||
         shutdown_cmd !== dut.shutdown_cmd_latched)) begin
        $display("INVARIANT FAIL: invalid emergency shutdown output state");
        failures = failures + 1;
        invariant_failures = invariant_failures + 1;
        if (test_active)
            current_test_failed = 1'b1;
    end
end

always @(posedge clk) begin
    #1;

    $display("TRACE t=%0t state=%0d uav=%b flight=%b reset=%b manual=%b shutdown_req=%b select=%b nav=%b payload=%b battL=%b battC=%b prop=%b obstacle=%b weather=%b | ready=%b inhibit=%b warn=%b alarm=%b force=%b rth=%b land=%b shutdown_cmd=%b committed=%b confirm=%b blocked=%b manual_exp=%b shutdown_exp=%b select_exp=%b",
        $time,
        dut.state,
        uav_active,
        flight_active,
        reset,
        manual_flight_control,
        emergency_shutdown,
        shutdown_select,
        navigation_fault,
        payload_fault,
        battery_low,
        battery_critical,
        propulsion_fault,
        obstacle_detected,
        adverse_weather,
        flight_ready,
        flight_inhibit,
        warning,
        alarm,
        force_manual_mode,
        return_home,
        emergency_land,
        shutdown_cmd,
        dut.shutdown_committed,
        dut.shutdown_confirmation_active,
        dut.shutdown_request_blocked,
        dut.manual_timer_expired,
        dut.shutdown_timer_expired,
        dut.shutdown_selection_timer_expired
    );
end


// Verification watchdog: a hung testbench must terminate as a failure.
initial begin
    #(CLK_PERIOD * 20000);
    $fatal(1, "Watchdog timeout: verification did not complete");
end


initial begin

    $dumpfile("outputs/sim/uav_safety_controller.vcd");
    $dumpvars(0, tb_uav_safety_controller);

    failures = 0;
    total_checks = 0;
    passed_checks = 0;
    passed_tests = 0;
    failed_tests = 0;
    total_tests = 0;
    invariant_failures = 0;
    current_test_failed = 1'b0;
    test_active = 1'b0;

    clk = 1'b0;
    clear_inputs();

    $display("");
    $display("========================================");
    $display(" UAV SAFETY CONTROLLER VERIFICATION");
    $display("========================================");


    // ================================================================
    // A. BASIC / STARTUP / PREFLIGHT
    // ================================================================

    begin_test(1, "Initial reset with UAV inactive -> IDLE");

    clear_inputs();
    reset = 1'b1;

    @(posedge clk);
    #1;

    check_state(IDLE, "initial reset state");
    check_bit(flight_ready, 0, "flight ready");
    check_bit(flight_inhibit, 0, "flight inhibit");
    check_bit(warning, 0, "warning");
    check_bit(alarm, 0, "alarm");

    @(negedge clk);
    reset = 1'b0;
    finish_test();
    


    begin_test(2, "IDLE -> PREFLIGHT_CHECK when UAV becomes active");

    clear_inputs();

    reset = 1'b1;
    @(posedge clk);
    #1;
    @(negedge clk);
    reset = 1'b0;
    uav_active = 1'b1;

    @(posedge clk);
    #1;

    check_state(PREFLIGHT_CHECK, "UAV activation starts preflight");
    check_bit(flight_ready, 0, "not ready during preflight");
    check_bit(flight_inhibit, 0, "not inhibited during initial check");

    finish_test();


    begin_test(3, "Preflight all clear -> FLIGHT_READY");

    enter_flight_ready();

    check_state(FLIGHT_READY, "preflight all clear");
    check_bit(flight_ready, 1, "flight ready asserted");
    check_bit(flight_inhibit, 0, "flight inhibit cleared");
    check_bit(warning, 0, "warning clear");
    check_bit(alarm, 0, "alarm clear");

    finish_test();


    begin_test(4, "Preflight battery_low -> FLIGHT_INHIBIT");

    start_preflight();

    battery_low = 1'b1;
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "battery low inhibits flight");
    check_bit(flight_inhibit, 1, "inhibit asserted");
    check_bit(flight_ready, 0, "ready cleared");
    check_bit(alarm, 1, "inhibit alarm");

    finish_test();


    begin_test(5, "Preflight battery_critical -> FLIGHT_INHIBIT");

    start_preflight();

    battery_critical = 1'b1;
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "critical battery inhibits flight");
    check_bit(flight_inhibit, 1, "inhibit asserted");
    check_bit(alarm, 1, "inhibit alarm");

    finish_test();


    begin_test(6, "Preflight navigation bitmap fault -> FLIGHT_INHIBIT");

    start_preflight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "navigation fault inhibits flight");
    check_bit(flight_inhibit, 1, "navigation inhibit");

    navigation_fault = 2'b10;
    reset_to_preflight();
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "navigation level 1 inhibits flight");

    finish_test();


    begin_test(7, "Preflight payload bitmap fault -> FLIGHT_INHIBIT");

    start_preflight();

    payload_fault = 3'b001;
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "payload mission fault inhibits");

    payload_fault = 3'b111;
    reset_to_preflight();
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "all payload faults inhibit");

    finish_test();


    begin_test(8, "Preflight propulsion fault -> FLIGHT_INHIBIT");

    start_preflight();

    propulsion_fault = 1'b1;
    @(posedge clk);
    #1;

    check_state(FLIGHT_INHIBIT, "propulsion fault inhibits flight");
    check_bit(flight_inhibit, 1, "propulsion inhibit");
    check_bit(alarm, 1, "propulsion inhibit alarm");

    finish_test();


    // ================================================================
    // B. NAVIGATION BITMAP
    // ================================================================

    begin_test(9, "Navigation 00 -> no navigation action");

    enter_normal_flight();

    navigation_fault = 2'b00;
    @(posedge clk);
    #1;

    check_state(NORMAL_FLIGHT, "navigation 00 normal");
    check_bit(emergency_land, 0, "no emergency land");
    check_bit(return_home, 0, "no return home");
    check_bit(warning, 0, "no navigation warning");

    finish_test();


    begin_test(10, "Navigation 01 -> MANUAL_SAFETY");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "navigation level 0");
    check_bit(warning, 1, "manual safety warning");
    check_bit(alarm, 0, "manual safety no alarm");

    finish_test();


    begin_test(11, "Navigation 10 -> EMERGENCY_LAND");

    enter_normal_flight();

    navigation_fault = 2'b10;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "navigation level 1");
    check_bit(emergency_land, 1, "emergency land asserted");
    check_bit(alarm, 1, "emergency land alarm");

    finish_test();


    begin_test(12, "Navigation 11 -> EMERGENCY_LAND");

    enter_normal_flight();

    navigation_fault = 2'b11;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "navigation L1 dominates L0");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "emergency alarm");

    finish_test();


    // ================================================================
    // C. PAYLOAD BITMAP
    // ================================================================

    begin_test(13, "Payload 000 -> no payload action");

    enter_normal_flight();

    payload_fault = 3'b000;
    @(posedge clk);
    #1;

    check_state(NORMAL_FLIGHT, "payload 000 normal");
    check_bit(return_home, 0, "no return home");
    check_bit(emergency_land, 0, "no emergency land");

    finish_test();


    begin_test(14, "Payload 001 -> RETURN_HOME");

    enter_normal_flight();

    payload_fault = 3'b001;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "payload mission fault");
    check_bit(return_home, 1, "return home asserted");
    check_bit(warning, 1, "return home warning");

    finish_test();


    begin_test(15, "Payload 010 -> MANUAL_SAFETY");

    enter_normal_flight();

    payload_fault = 3'b010;
    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "payload safety level 0");
    check_bit(warning, 1, "manual safety warning");

    finish_test();


    begin_test(16, "Payload 011 -> MANUAL_SAFETY");

    enter_normal_flight();

    payload_fault = 3'b011;
    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "payload mission plus L0");
    check_bit(warning, 1, "manual safety warning");

    finish_test();


    begin_test(17, "Payload 100 -> EMERGENCY_LAND");

    enter_normal_flight();

    payload_fault = 3'b100;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "payload safety level 1");
    check_bit(emergency_land, 1, "emergency land");

    finish_test();


    begin_test(18, "Payload 101 -> EMERGENCY_LAND");

    enter_normal_flight();

    payload_fault = 3'b101;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "payload L1 plus mission");
    check_bit(alarm, 1, "emergency alarm");

    finish_test();


    begin_test(19, "Payload 110 -> EMERGENCY_LAND");

    enter_normal_flight();

    payload_fault = 3'b110;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "payload L1 plus L0");
    check_bit(emergency_land, 1, "emergency land");

    finish_test();


    begin_test(20, "Payload 111 -> EMERGENCY_LAND");

    enter_normal_flight();

    payload_fault = 3'b111;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "all payload faults");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "emergency alarm");

    finish_test();


    // ================================================================
    // D. INDIVIDUAL CONDITIONS
    // ================================================================

    begin_test(21, "battery_low only -> RETURN_HOME");

    enter_normal_flight();

    battery_low = 1'b1;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "battery low");
    check_bit(return_home, 1, "return home");
    check_bit(warning, 1, "return home warning");

    finish_test();


    begin_test(22, "battery_critical only -> EMERGENCY_LAND");

    enter_normal_flight();

    battery_critical = 1'b1;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "critical battery");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "critical battery alarm");

    finish_test();


    begin_test(23, "adverse_weather only -> RETURN_HOME");

    enter_normal_flight();

    adverse_weather = 1'b1;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "adverse weather");
    check_bit(return_home, 1, "return home");
    check_bit(warning, 1, "weather warning");

    finish_test();


    begin_test(24, "propulsion_fault only -> EMERGENCY_LAND");

    enter_normal_flight();

    propulsion_fault = 1'b1;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "propulsion fault");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "propulsion alarm");

    finish_test();


    begin_test(25, "obstacle only -> warning without automatic action");

    enter_normal_flight();

    obstacle_detected = 1'b1;
    #1;

    check_state(NORMAL_FLIGHT, "obstacle retains normal state");
    check_bit(warning, 1, "obstacle warning");
    check_bit(alarm, 0, "obstacle no alarm");
    check_bit(return_home, 0, "obstacle no return home");
    check_bit(emergency_land, 0, "obstacle no emergency land");

    finish_test();


    begin_test(26, "payload mission only -> RETURN_HOME");

    enter_normal_flight();

    payload_fault = 3'b001;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "payload mission");
    check_bit(return_home, 1, "mission return home");

    finish_test();


    // ================================================================
    // E. AUTOMATIC PRIORITY
    // ================================================================

    begin_test(27, "Emergency Land + Return Home -> Emergency Land");

    enter_normal_flight();

    battery_critical = 1'b1;
    battery_low = 1'b1;

    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "EL outranks RH");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(return_home, 0, "return home suppressed");

    finish_test();


    begin_test(28, "Emergency Land + Manual Safety -> Emergency Land");

    enter_normal_flight();

    battery_critical = 1'b1;
    navigation_fault = 2'b01;

    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "EL outranks MS");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(warning, 0, "manual safety warning suppressed");

    finish_test();


    begin_test(29, "Manual Safety + Return Home -> Manual Safety");

    enter_normal_flight();

    navigation_fault = 2'b01;
    battery_low = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "MS outranks RH");
    check_bit(warning, 1, "manual safety warning");
    check_bit(return_home, 0, "return home suppressed");

    finish_test();


    begin_test(30, "Emergency Land + Manual Safety + Return Home -> Emergency Land");

    enter_normal_flight();

    battery_critical = 1'b1;
    navigation_fault = 2'b01;
    battery_low = 1'b1;

    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "EL highest automatic priority");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(return_home, 0, "return home suppressed");

    finish_test();


    begin_test(31, "All automatic conditions -> Emergency Land");

    enter_normal_flight();

    battery_critical = 1'b1;
    battery_low = 1'b1;
    navigation_fault = 2'b11;
    payload_fault = 3'b111;
    propulsion_fault = 1'b1;
    adverse_weather = 1'b1;
    obstacle_detected = 1'b1;

    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "all automatic faults");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "alarm");
    check_bit(return_home, 0, "return home suppressed");

    finish_test();


    begin_test(32, "No automatic condition -> NORMAL_FLIGHT");

    enter_normal_flight();

    check_state(NORMAL_FLIGHT, "normal flight");
    check_bit(return_home, 0, "return home clear");
    check_bit(emergency_land, 0, "emergency land clear");
    check_bit(warning, 0, "warning clear");
    check_bit(alarm, 0, "alarm clear");

    finish_test();


    // ================================================================
    // F. MANUAL FLIGHT
    // ================================================================

    begin_test(33, "Manual control from normal flight -> MANUAL_FLIGHT");

    enter_normal_flight();

    manual_flight_control = 1'b1;
    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual takeover");
    check_bit(warning, 1, "manual flight warning");

    finish_test();


    begin_test(34, "Manual control + Return Home -> MANUAL_FLIGHT");

    enter_normal_flight();

    battery_low = 1'b1;
    manual_flight_control = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual outranks return home");
    check_bit(return_home, 0, "return home suppressed");

    finish_test();


    begin_test(35, "Manual control + Emergency Land -> MANUAL_FLIGHT");

    enter_normal_flight();

    battery_critical = 1'b1;
    manual_flight_control = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual outranks emergency land");
    check_bit(emergency_land, 0, "emergency land action suppressed");
    check_bit(alarm, 1, "critical condition alarm retained");

    finish_test();


    begin_test(36, "Manual control + Manual Safety -> MANUAL_FLIGHT");

    enter_normal_flight();

    navigation_fault = 2'b01;

    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "manual safety entered");

    manual_flight_control = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual takeover");
    check_bit(warning, 1, "manual flight warning");

    finish_test();


    begin_test(37, "Manual Flight + critical fault -> stays MANUAL_FLIGHT + alarm");

    enter_normal_flight();

    manual_flight_control = 1'b1;
    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual flight active");

    battery_critical = 1'b1;
    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual flight remains active");
    check_bit(alarm, 1, "critical alarm in manual flight");
    check_bit(emergency_land, 0, "automatic land not commanded");

    finish_test();


    begin_test(38, "Manual Flight + noncritical warning -> stays MANUAL_FLIGHT");

    enter_normal_flight();

    manual_flight_control = 1'b1;
    @(posedge clk);
    #1;

    obstacle_detected = 1'b1;
    #1;

    check_state(MANUAL_FLIGHT, "manual flight with obstacle");
    check_bit(warning, 1, "manual warning");
    check_bit(alarm, 0, "no critical alarm");

    finish_test();


    // ================================================================
    // G. MANUAL SAFETY TIMER
    // ================================================================

    begin_test(39, "Enter Manual Safety -> warning + timer starts");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY, "manual safety");
    check_bit(warning, 1, "manual safety warning");
    check_bit(dut.manual_timer_expired, 0, "timer initially active");

    finish_test();


    begin_test(40, "Manual control during grace -> MANUAL_FLIGHT immediately");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    manual_flight_control = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual takeover during grace");
    check_bit(dut.manual_timer_expired, 0, "timer not yet expired");

    finish_test();


    begin_test(41, "No manual control before 5-second equivalent -> remains Manual Safety");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    wait_cycles(2);

    check_state(MANUAL_SAFETY, "manual safety before timer expiry");
    check_bit(force_manual_mode, 0, "force manual not yet asserted");
    check_bit(dut.manual_timer_expired, 0, "timer not expired");

    finish_test();


    begin_test(42, "Timer reaches configured period -> force_manual_mode asserted");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    wait_cycles(3);

    check_state(MANUAL_SAFETY, "manual safety at timer boundary");
    check_bit(dut.manual_timer_expired, 1, "timer expired");
    check_bit(force_manual_mode, 1, "force manual asserted");

    finish_test();


    begin_test(43, "Force manual transition -> MANUAL_FLIGHT");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    wait_cycles(3);

    check_bit(force_manual_mode, 1, "force manual pulse");

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "forced manual transition");
    check_bit(force_manual_mode, 0, "force manual cleared");

    finish_test();


    begin_test(44, "Forced Manual Flight remains latched with manual input 0");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    wait_cycles(3);
    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "forced manual state");

    manual_flight_control = 1'b0;
    navigation_fault = 2'b00;

    wait_cycles(2);

    check_state(MANUAL_FLIGHT, "manual flight remains latched");
    check_bit(manual_flight_control, 0, "manual input inactive");

    finish_test();


    // ================================================================
    // H. MANUAL SAFETY BOUNDARY / PRIORITY
    // ================================================================

    begin_test(45, "Manual Safety + Emergency Land before timer -> Emergency Land");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    battery_critical = 1'b1;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "EL supersedes manual safety");
    check_bit(emergency_land, 1, "emergency land");
    check_bit(alarm, 1, "emergency alarm");

    finish_test();


    begin_test(46, "Manual Safety + manual control + Emergency Land -> Manual Flight");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    battery_critical = 1'b1;
    manual_flight_control = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "manual outranks emergency land");
    check_bit(alarm, 1, "critical alarm retained");

    finish_test();


    begin_test(47, "Manual Safety timer resets after leaving Manual Safety");

    enter_normal_flight();

    navigation_fault = 2'b01;
    @(posedge clk);
    #1;

    wait_cycles(1);

    manual_flight_control = 1'b1;
    @(posedge clk);
    #1;

    check_state(MANUAL_FLIGHT, "left manual safety");
    check_bit(dut.manual_timer_expired, 0, "timer reset");
    check_bit(force_manual_mode, 0, "force manual cleared");

    finish_test();


    // ================================================================
    // I. RETURN HOME / EMERGENCY LAND LATCHING
    // ================================================================

    begin_test(48, "Return Home remains latched after condition clears");

    enter_normal_flight();

    battery_low = 1'b1;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "entered return home");

    battery_low = 1'b0;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "return home remains latched");
    check_bit(return_home, 1, "return home remains asserted");

    finish_test();


    begin_test(49, "Emergency Land remains latched after condition clears");

    enter_normal_flight();

    battery_critical = 1'b1;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "entered emergency land");

    battery_critical = 1'b0;
    @(posedge clk);
    #1;

    check_state(EMERGENCY_LAND, "emergency land remains latched");
    check_bit(emergency_land, 1, "emergency land remains asserted");

    finish_test();


    begin_test(50, "Inflight states return to PREFLIGHT_CHECK when flight becomes inactive");

    enter_normal_flight();

    battery_low = 1'b1;
    @(posedge clk);
    #1;

    check_state(RETURN_HOME, "return home active");

    flight_active = 1'b0;
    @(posedge clk);
    #1;

    check_state(PREFLIGHT_CHECK, "flight inactive returns to preflight");

    clear_inputs();
    uav_active = 1'b1;
    flight_active = 1'b1;

    @(posedge clk);
    #1;

    check_state(FLIGHT_READY, "preflight re-evaluation");
    check_bit(flight_ready, 1, "ready after re-evaluation");

    finish_test();


    // ================================================================
    // J. EMERGENCY SHUTDOWN ARCHITECTURE
    // ================================================================

    begin_test(51, "Valid shutdown selection is captured before confirmation");

    enter_normal_flight();

    shutdown_select = 4'b1010;
    emergency_shutdown = 1'b1;

    wait_cycles(1);

    check_state(NORMAL_FLIGHT, "shutdown request remains pending");
    check_bit(dut.shutdown_committed, 0, "shutdown not committed");
    check_bit(dut.shutdown_confirmation_active, 1,
              "valid selection starts confirmation");
    check_vector(dut.shutdown_cmd_latched, 4'b1010,
                 "selection captured at confirmation start");
    check_vector(shutdown_cmd, 4'b0000, "shutdown command inactive");
    check_bit(dut.shutdown_timer_expired, 0, "confirmation timer not expired");
    check_bit(dut.shutdown_selection_timer_expired, 0,
              "selection timer not active for valid target");

    emergency_shutdown = 1'b0;
    wait_cycles(1);

    finish_test();


    begin_test(52, "Reset cancels pending shutdown confirmation");

    enter_normal_flight();

    shutdown_select = 4'b1111;
    emergency_shutdown = 1'b1;

    wait_cycles(1);
    wait_cycles(1);

    check_bit(dut.shutdown_confirmation_active, 1,
              "shutdown confirmation pending");
    check_bit(dut.shutdown_committed, 0, "shutdown still pending");

    reset = 1'b1;
    @(posedge clk);
    #1;

    check_bit(dut.shutdown_committed, 0, "reset clears commitment");
    check_bit(dut.shutdown_confirmation_active, 0,
              "reset clears confirmation state");
    check_bit(dut.shutdown_timer_expired, 0, "reset clears shutdown timer");
    check_vector(dut.shutdown_cmd_latched, 4'b0000,
                 "reset clears captured shutdown selection");
    check_vector(shutdown_cmd, 4'b0000, "reset clears shutdown command");
    check_state(NORMAL_FLIGHT, "reset re-evaluates normal flight");

    @(negedge clk);
    reset = 1'b0;
    emergency_shutdown = 1'b0;

    finish_test();


    begin_test(53, "Pending reset performs neutral safety re-evaluation");

    enter_normal_flight();

    shutdown_select = 4'b0101;
    emergency_shutdown = 1'b1;

    wait_cycles(1);

    reset = 1'b1;
    @(posedge clk);
    #1;

    check_state(NORMAL_FLIGHT, "pending shutdown reset returns to normal");
    check_bit(dut.shutdown_committed, 0, "commit cleared");
    check_bit(dut.shutdown_confirmation_active, 0,
              "confirmation cleared");
    check_vector(dut.shutdown_cmd_latched, 4'b0000,
                 "captured selection cleared");
    check_vector(shutdown_cmd, 4'b0000, "command cleared");

    @(negedge clk);
    reset = 1'b0;
    emergency_shutdown = 1'b0;

    @(posedge clk);
    #1;

    check_state(NORMAL_FLIGHT, "normal operation after cancelled shutdown");

    finish_test();


    begin_test(54, "Confirm and capture every valid shutdown bitmap 0001 through 1111");

    for (i = 1; i < 16; i = i + 1) begin

        clear_inputs();

        reset = 1'b1;
        @(posedge clk);
        #1;
        @(negedge clk);
        reset = 1'b0;
        uav_active = 1'b1;

        @(posedge clk);
        #1;
        @(posedge clk);
        #1;

        flight_active = 1'b1;

        @(posedge clk);
        #1;

        check_state(NORMAL_FLIGHT, "shutdown bitmap setup");

        shutdown_select = i[3:0];
        emergency_shutdown = 1'b1;

        wait_cycles(1);
        check_bit(dut.shutdown_confirmation_active, 1,
                  "shutdown confirmation active");
        check_vector(dut.shutdown_cmd_latched, i[3:0],
                     "shutdown select captured");
        check_bit(dut.shutdown_selection_timer_expired, 0,
                  "selection timeout inactive");

        wait_cycles(2);
        check_bit(dut.shutdown_timer_expired, 0,
                  "shutdown timer not early");

        wait_cycles(1);
        check_bit(dut.shutdown_timer_expired, 1,
                  "shutdown timer expired on configured edge");
        check_bit(dut.shutdown_committed, 0,
                  "shutdown not committed before expiry is sampled");

        wait_cycles(1);
        check_bit(dut.shutdown_committed, 1,
                  "shutdown committed");
        check_vector(dut.shutdown_cmd_latched, i[3:0],
                     "captured selection preserved");

        wait_cycles(1);

        check_state(EMERGENCY_SHUTDOWN,
                    "emergency shutdown state");
        check_vector(shutdown_cmd, i[3:0],
                     "shutdown command output");
        check_bit(alarm, 1,
                  "shutdown alarm");
    end

    finish_test();


    begin_test(55, "Committed shutdown cannot be overridden");

    clear_inputs();

    reset = 1'b1;
    @(posedge clk);
    #1;
    @(negedge clk);
    reset = 1'b0;
    uav_active = 1'b1;

    @(posedge clk);
    #1;
    @(posedge clk);
    #1;

    flight_active = 1'b1;

    @(posedge clk);
    #1;

    shutdown_select = 4'b1011;
    emergency_shutdown = 1'b1;

    wait_cycles(1);
    wait_cycles(3);
    wait_cycles(1);

    check_bit(dut.shutdown_committed, 1,
              "shutdown committed");

    wait_cycles(1);

    check_state(EMERGENCY_SHUTDOWN,
                "emergency shutdown active");

    emergency_shutdown = 1'b0;
    manual_flight_control = 1'b1;
    battery_critical = 1'b1;
    navigation_fault = 2'b11;
    payload_fault = 3'b111;
    battery_low = 1'b1;
    adverse_weather = 1'b1;
    propulsion_fault = 1'b1;

    @(posedge clk);
    #1;

    check_state(EMERGENCY_SHUTDOWN,
                "manual cannot override shutdown");
    check_bit(alarm, 1,
              "shutdown alarm remains active");
    check_vector(shutdown_cmd, 4'b1011,
                 "shutdown command remains latched");

    reset = 1'b1;
    @(posedge clk);
    #1;

    check_state(PREFLIGHT_CHECK,
                "committed shutdown reset enters preflight");
    check_vector(shutdown_cmd, 4'b0000,
                 "shutdown command cleared by reset");

    @(negedge clk);
    reset = 1'b0;

    finish_test();


    begin_test(56, "Committed shutdown reset -> fresh preflight recovery");

    clear_inputs();

    reset = 1'b1;
    @(posedge clk);
    #1;
    @(negedge clk);
    reset = 1'b0;
    uav_active = 1'b1;

    @(posedge clk);
    #1;
    @(posedge clk);
    #1;

    flight_active = 1'b1;

    @(posedge clk);
    #1;

    shutdown_select = 4'b0110;
    emergency_shutdown = 1'b1;

    wait_cycles(1);
    wait_cycles(3);
    wait_cycles(1);
    wait_cycles(1);

    check_state(EMERGENCY_SHUTDOWN,
                "shutdown state before recovery");

    emergency_shutdown = 1'b0;
    shutdown_select = 4'b0000;
    manual_flight_control = 1'b0;
    flight_active = 1'b1;
    uav_active = 1'b1;

    reset = 1'b1;
    @(posedge clk);
    #1;

    check_state(PREFLIGHT_CHECK,
                "shutdown recovery starts at preflight");
    check_bit(dut.shutdown_committed, 0,
              "shutdown commitment cleared");
    check_vector(shutdown_cmd, 4'b0000,
                 "shutdown command cleared");

    @(negedge clk);
    reset = 1'b0;

    @(posedge clk);
    #1;

    check_state(FLIGHT_READY,
                "fresh preflight reaches ready");
    check_bit(flight_ready, 1,
              "flight ready after recovery");

    flight_active = 1'b1;

    @(posedge clk);
    #1;

    check_state(NORMAL_FLIGHT,
                "normal flight after recovery");
    check_bit(flight_ready, 0,
              "flight ready cleared");
    check_bit(flight_inhibit, 0,
              "flight inhibit clear");
    check_bit(alarm, 0,
              "alarm clear after recovery");

    finish_test();


    begin_test(57, "0000 selection times out and locks request until low-high rearm");

    enter_normal_flight();

    shutdown_select = 4'b0000;
    emergency_shutdown = 1'b1;

    wait_cycles(3);

    check_bit(dut.shutdown_selection_timer_expired, 0,
              "selection timeout not early");
    check_bit(dut.shutdown_confirmation_active, 0,
              "zero selection does not start confirmation");
    check_bit(dut.shutdown_timer_expired, 0,
              "confirmation timer stays reset");
    check_bit(dut.shutdown_committed, 0,
              "zero selection does not commit");
    check_vector(shutdown_cmd, 4'b0000,
                 "zero selection asserts no command");

    wait_cycles(1);

    check_bit(dut.shutdown_selection_timer_expired, 1,
              "selection timeout expires on configured edge");
    check_bit(dut.shutdown_request_blocked, 1,
              "expired selection window blocks request");

    shutdown_select = 4'b0101;
    wait_cycles(1);

    check_bit(dut.shutdown_request_locked_out, 1,
              "selection timeout becomes persistent lockout");
    check_bit(dut.shutdown_confirmation_active, 0,
              "late selection cannot start confirmation");
    check_bit(dut.shutdown_committed, 0,
              "late selection cannot commit");

    wait_cycles(1);
    check_bit(dut.shutdown_confirmation_active, 0,
              "held-high request remains locked out");

    emergency_shutdown = 1'b0;
    wait_cycles(1);

    check_bit(dut.shutdown_request_blocked, 0,
              "low request re-arms shutdown path");
    check_bit(dut.shutdown_request_locked_out, 0,
              "lockout clears only after low");

    emergency_shutdown = 1'b1;
    wait_cycles(1);

    check_bit(dut.shutdown_confirmation_active, 1,
              "re-asserted request accepts valid selection");
    check_vector(dut.shutdown_cmd_latched, 4'b0101,
                 "re-asserted request captures selection");

    emergency_shutdown = 1'b0;
    wait_cycles(1);

    finish_test();


    begin_test(58, "Valid selection during selection window freezes target for confirmation");

    enter_normal_flight();

    emergency_shutdown = 1'b1;
    shutdown_select = 4'b0000;

    wait_cycles(2);

    check_bit(dut.shutdown_selection_timer_expired, 0,
              "selection window remains open");

    shutdown_select = 4'b0011;
    wait_cycles(1);

    check_bit(dut.shutdown_confirmation_active, 1,
              "valid selection starts confirmation");
    check_vector(dut.shutdown_cmd_latched, 4'b0011,
                 "valid target captured at confirmation start");
    check_bit(dut.shutdown_selection_timer_expired, 0,
              "selection timer clears after valid target");

    shutdown_select = 4'b1110;

    wait_cycles(2);
    check_bit(dut.shutdown_timer_expired, 0,
              "confirmation timer not early");
    check_vector(dut.shutdown_cmd_latched, 4'b0011,
                 "captured target ignores live selector changes");

    wait_cycles(1);
    check_bit(dut.shutdown_timer_expired, 1,
              "confirmation expires on third enabled edge");
    check_bit(dut.shutdown_committed, 0,
              "registered expiry has not committed early");

    wait_cycles(1);
    check_bit(dut.shutdown_committed, 1,
              "shutdown commits after confirmed expiry");
    check_vector(dut.shutdown_cmd_latched, 4'b0011,
                 "committed target remains originally captured value");

    wait_cycles(1);
    check_state(EMERGENCY_SHUTDOWN,
                "confirmed request enters emergency shutdown");
    check_vector(shutdown_cmd, 4'b0011,
                 "shutdown command uses captured target");

    finish_test();


    // ================================================================
    // ADDITIONAL ROBUSTNESS / EDGE-CASE REGRESSIONS
    // ================================================================

    begin_test(59, "Reset in Manual Safety restarts the full grace period");

    enter_normal_flight();

    navigation_fault = 2'b01;
    wait_cycles(1);

    check_state(MANUAL_SAFETY,
                "manual-safety fault enters grace state");

    // Allow one enabled timer edge, then synchronously reset it.
    wait_cycles(1);
    @(negedge clk);
    reset = 1'b1;

    @(posedge clk);
    #1;

    check_state(MANUAL_SAFETY,
                "reset re-evaluates active manual-safety fault");
    check_bit(dut.manual_timer_expired, 0,
              "manual timer expiry cleared by reset");
    check_bit(force_manual_mode, 0,
              "reset clears force-manual pulse");

    @(negedge clk);
    reset = 1'b0;

    wait_cycles(2);
    check_bit(dut.manual_timer_expired, 0,
              "restarted grace period is not shortened");
    check_bit(force_manual_mode, 0,
              "force-manual remains low before full restarted grace");

    wait_cycles(1);
    check_bit(dut.manual_timer_expired, 1,
              "restarted grace expires on configured edge");
    check_bit(force_manual_mode, 1,
              "force-manual pulses at restarted grace expiry");

    wait_cycles(1);
    check_state(MANUAL_FLIGHT,
                "manual flight follows restarted grace expiry");
    check_bit(force_manual_mode, 0,
              "force-manual pulse lasts one cycle");

    finish_test();


    begin_test(60, "Held valid shutdown request restarts confirmation after reset");

    enter_normal_flight();

    shutdown_select = 4'b1100;
    emergency_shutdown = 1'b1;

    // Capture the valid target and begin confirmation, but reset before expiry.
    wait_cycles(1);
    check_bit(dut.shutdown_confirmation_active, 1,
              "initial shutdown confirmation starts");
    check_vector(dut.shutdown_cmd_latched, 4'b1100,
                 "initial shutdown target captured");

    wait_cycles(1);

    @(negedge clk);
    reset = 1'b1;

    @(posedge clk);
    #1;

    check_bit(dut.shutdown_timer_expired, 0,
              "reset clears pending confirmation expiry");
    check_bit(dut.shutdown_committed, 0,
              "reset clears pending shutdown commitment");
    check_bit(dut.shutdown_confirmation_active, 0,
              "reset clears pending confirmation state");
    check_vector(dut.shutdown_cmd_latched, 4'b0000,
                 "reset clears pending captured target");

    // Keep request and valid selector asserted. After reset release the
    // transaction must start again and require the complete confirmation.
    @(negedge clk);
    reset = 1'b0;

    wait_cycles(1);
    check_bit(dut.shutdown_confirmation_active, 1,
              "held request begins a fresh confirmation after reset");
    check_vector(dut.shutdown_cmd_latched, 4'b1100,
                 "fresh confirmation recaptures valid target");

    wait_cycles(2);
    check_bit(dut.shutdown_timer_expired, 0,
              "fresh confirmation does not expire early");
    check_bit(dut.shutdown_committed, 0,
              "fresh confirmation does not commit early");

    wait_cycles(1);
    check_bit(dut.shutdown_timer_expired, 1,
              "fresh confirmation expires on configured edge");
    check_bit(dut.shutdown_committed, 0,
              "registered expiry precedes commitment");

    wait_cycles(1);
    check_bit(dut.shutdown_committed, 1,
              "shutdown commits after fresh confirmation");

    wait_cycles(1);
    check_state(EMERGENCY_SHUTDOWN,
                "freshly confirmed request enters shutdown state");
    check_vector(shutdown_cmd, 4'b1100,
                 "freshly confirmed request asserts captured command");

    finish_test();


    begin_test(61, "Committed shutdown bitmap persists after live input changes");

    enter_normal_flight();

    shutdown_select = 4'b0101;
    emergency_shutdown = 1'b1;

    wait_cycles(1);
    wait_cycles(3);
    wait_cycles(1);
    wait_cycles(1);

    check_state(EMERGENCY_SHUTDOWN,
                "shutdown committed for persistence test");
    check_vector(shutdown_cmd, 4'b0101,
                 "committed command initially matches captured bitmap");

    // Once committed, neither the live selector nor request level may alter
    // the latched shutdown action. Only reset can clear commitment.
    shutdown_select = 4'b1010;
    emergency_shutdown = 1'b0;

    wait_cycles(2);

    check_vector(dut.shutdown_cmd_latched, 4'b0101,
                 "captured bitmap remains unchanged after live selector change");
    check_vector(shutdown_cmd, 4'b0101,
                 "shutdown output ignores live selector change");
    check_state(EMERGENCY_SHUTDOWN,
                "request withdrawal cannot cancel committed shutdown");
    check_bit(dut.shutdown_committed, 1,
              "commit remains latched until reset");

    finish_test();


    begin_test(62, "Request withdrawal at confirmation expiry prevents commitment");

    enter_normal_flight();

    shutdown_select = 4'b1111;
    emergency_shutdown = 1'b1;

    wait_cycles(1);
    check_bit(dut.shutdown_confirmation_active, 1,
              "confirmation starts for cancellation test");

    wait_cycles(3);
    check_bit(dut.shutdown_timer_expired, 1,
              "confirmation expiry reached");
    check_bit(dut.shutdown_committed, 0,
              "expiry alone has not committed shutdown");

    // Withdraw the request before the next rising edge, where the registered
    // expiry would otherwise be consumed to commit the shutdown.
    @(negedge clk);
    emergency_shutdown = 1'b0;

    @(posedge clk);
    #1;

    check_bit(dut.shutdown_committed, 0,
              "withdrawal before commit cancels pending shutdown");
    check_bit(dut.shutdown_confirmation_active, 0,
              "withdrawal clears confirmation state");
    check_bit(dut.shutdown_timer_expired, 0,
              "withdrawal clears confirmation timer");
    check_vector(dut.shutdown_cmd_latched, 4'b0000,
                 "withdrawal clears pending captured target");
    check_vector(shutdown_cmd, 4'b0000,
                 "cancelled request asserts no shutdown command");
    check_state(NORMAL_FLIGHT,
                "cancelled request leaves flight state unchanged");

    // A later assertion is a fresh request and must receive a full new
    // confirmation interval.
    @(negedge clk);
    emergency_shutdown = 1'b1;

    @(posedge clk);
    #1;

    check_bit(dut.shutdown_confirmation_active, 1,
              "new request starts a fresh confirmation");

    wait_cycles(2);
    check_bit(dut.shutdown_timer_expired, 0,
              "new request receives the full confirmation period");
    check_bit(dut.shutdown_committed, 0,
              "new request does not commit early");

    @(negedge clk);
    emergency_shutdown = 1'b0;
    @(posedge clk);
    #1;

    finish_test();


    // ================================================================
    // FINAL RESULT
    // ================================================================

    $display("");
    $display("========================================");
    $display(" VERIFICATION SUMMARY");
    $display("========================================");

    $display("TOTAL_TESTS=%0d", total_tests);
    $display("PASSED=%0d", passed_tests);
    $display("FAILED=%0d", failed_tests);
    $display("INDIVIDUAL_CHECKS=%0d", total_checks);
    $display("INDIVIDUAL_CHECKS_PASSED=%0d", passed_checks);
    $display("INDIVIDUAL_CHECKS_FAILED=%0d",
             total_checks - passed_checks);
    $display("INVARIANT_FAILURES=%0d", invariant_failures);

    if (failures == 0 &&
        failed_tests == 0 &&
        passed_tests == total_tests) begin
        $display("STATUS=PASS");
    end else begin
        $display("STATUS=FAIL");
        $fatal(1, "Verification failed");
    end

    $display("========================================");

    $finish;
end

endmodule
