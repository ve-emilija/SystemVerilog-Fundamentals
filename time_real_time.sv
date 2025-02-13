module time_real_time;

    // 64 bit signed integer - 8 bytes from the memory

    /*
    Operators on a time, realtime
    Arithmetic: +, -, *, /, %.
    Bitwise: &, |, ^, ~.
    Shift: <<, >>, >>>.
    Comparison: <, <=, >, >=, ==, !=.
    */

    // 64 bit signed integer  , floating-point value  - 8 bytes from the memory

    time t1, t2; 
    real rt1, rt2; 

    initial begin
        t1 = $time;
        rt1 = $time;

        #1;
        t2 = $time;
        rt2 = $time;

        $display("Simulation time at t1: %0t, t2: %0t", t1, t2);
        $display("Simulation time at rt1: %0f, rt2: %0f", rt1, rt2);
        $display("Simulation time difference ( t2 - t1): %0t", t2 - t1);
    end
endmodule