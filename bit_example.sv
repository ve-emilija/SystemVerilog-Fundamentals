module bit_example;

    bit single_bit ;     // result can be ONLY 0 or 1
    bit [3:0] four_bits; // 0000 , 0001, 1010, etc. (16 possible values)

    // Examples of operation that can be done on a bit
    /*
    Logic Operations: &, |, ~, ^ (AND, OR, NOT, XOR)
    Arithmetic Operations: +, -, *, /, %
    Shift Operations: <<, >>, <<<, >>> (logical and arithmetic shifts)
    */

    // Memory usage
    //
    // single_bit : 1 bit from the memory
    // four_bits  : 4 bits from the memory

    // Practical Examples 
    bit a = 1'bx;
    bit b = 0;
    bit [1:0] result;
    bit [2:0] light = 3'b001; // Green ON, Red and Yellow OFF (light[2] = Red, light[1] = Yellow, light[0] = Green)

    initial begin
        result = a & b;
        $display("Result = %b", result);

        b = 1; // 1 +1 = 2 , 1 +1 =10
        result = a + b;
        $display("Result = %d", result);

        // Initial state: Green light ON
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

        // Switch to Red light
        light = 3'b100;  // Red ON, others OFF
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

        // Switch to Yellow light
        light = 3'b010;  // Yellow ON, others OFF
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

    end

endmodule