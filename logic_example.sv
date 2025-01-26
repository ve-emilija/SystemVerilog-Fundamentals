module logic_example;

    logic one_bit; // 0 , 1 , x , z  
    logic [2:0] three_bits; // 3 bit logic variable (vector)

    /*
    Logical Operations:
    AND (&): Results in 1 if both operands are 1; otherwise, 0.
    OR (|): Results in 1 if at least one operand is 1; otherwise, 0.
    NOT (~): Inverts the value of the operand (1 becomes 0 and 0 becomes 1).

    Arithmetic Operations:
    Addition (+): Adds two operands.
    Subtraction (-): Subtracts one operand from another.
    Multiplication (*): Multiplies two operands.

    Relational Operations:
    Greater than (>): Returns 1 if the left operand is greater than the right; otherwise, 0.
    Equal (==): Returns 1 if both operands are equal; otherwise, 0.

    Bitwise Operations:
    AND (&): Performs a bitwise AND between two operands.
    OR (|): Performs a bitwise OR between two operands.
    XOR (^): Performs a bitwise XOR (exclusive OR) between two operands
    */
    
    logic c; // 2  bits from simulation memory  , 1 bit for each logic defined

    // logical AND
    logic [3:0] a = 4'b1010;
    logic [3:0] b = 4'b1100;
    logic [3:0] result;
    logic [2:0] light = 3'b001; // Green light on , other lights off

    initial begin
        result = a & b;
        $display("Result = %b", result);

        // unknown value x
        b = 4'bx111; 
        result = a - b;
        $display("Result = %b", result);

        // Initial state: Green light ON
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

        // Simulate a failure in Green light (Green becomes unknown)
        light = 3'b0x1;  // Green light is stuck in an unknown state (x)
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

        // Simulate Yellow light in high-impedance state
        light = 3'bz10;  // Yellow is high-impedance (z), Red is ON, Green is OFF
        $display("Red: %b, Yellow: %b, Green: %b", light[2], light[1], light[0]);

    end
        
endmodule