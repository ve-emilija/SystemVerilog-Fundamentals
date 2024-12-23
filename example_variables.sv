module example_variable;

    // Declare variables
    logic [3:0] var_a;  // 4-bit logic variable
    logic [3:0] var_b;  // 4-bit logic variable
    logic [4:0] result; // 5-bit logic for the result (to handle overflow)

    // Procedural block
    initial begin
        // Assign values to variables
        var_a = 4'b1010; // Binary value (10 in decimal)
        var_b = 4'b0101; // Binary value (5 in decimal)

        // Perform an addition
        result = var_a + var_b;

        // Print the values
        $display("Time=%0t | var_a=%b, var_b=%b, result=%b (Decimal: %0d)", $time, var_a, var_b, result, result);

        // End simulation
        $finish;
    end

endmodule