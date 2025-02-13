module byte_example;

// -128 until 127 - signed integer 
// Positive numbers : MSB = 0
// Negative numbers : MSB = 1

/* 
127 -> 0111_1111
-128 -> 1000_0000

Operations on a Byte:
Arithmetic: +, -, *, /, %.
Bitwise: &, |, ^, ~.
Shift: <<, >>, >>>.
Comparison: <, <=, >, >=, ==, !=.

*/

    byte b = 127; 
    byte c = "A";

    initial begin
        $display("Value of b = %b", b);
        $display("Value of c = %c", c);

        b = b + 1;
        $display(" Value of b = %b", b);
    end

endmodule