module int_example;

// Stores larger integer values ranging from -2,147,483,648 to 2,147,483,647
// Positive number: MSB = 0
// Negative number : MSB = 1;

/*  two's compilment
+127 - 0111_1111 + 1 = 1000_0000 = -128
*/

/* 
Operations on an Int
Arithmetic: +, -, *, /, %.
Bitwise: &, |, ^, ~.
Shift: <<, >>, >>>.
Comparison: <, <=, >, >=, ==, !=.
*/

// 100 → Binary: 00000000 00000000 00000000 01100100.
// -1 → Binary: 11111111 11111111 11111111 11111111.

    int a = 20000;
    int b = 200_000;
    int result;

    initial begin
        result = a + b;
        $display(" a + b = %b", result);
        $display(" a + b = %d", result);
    end


endmodule