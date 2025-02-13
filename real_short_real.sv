module real_short_real;

    // 64 bit double precision floating number
    // 32 bit single precision floating number

    real t1, t2;
    shortreal t3, t4;

    initial begin
        // Assigning values with high precision
        t1 = 10.123456789012345;    // Assigning to real (double precision)
        t2 = 20.987654321098765;    // Assigning to real (double precision)
        t3 = 10.1234567;            // Assigning to short real (single precision)
        t4 = 20.9876543;            // Assigning to short real (single precision)

        $display("Real t1: %0.16f", t1);
        $display("Short real t3: %0.7f", t1);
    end
endmodule