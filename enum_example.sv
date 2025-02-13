module enum_example;

    // GREEN = 0 , YELLOW = 1, RED = 2
    //enum {GREEN, YELLOW, RED} color1, color2, color3;
    typedef enum {GREEN, YELLOW, RED} colors;
    colors color1, color2, color3;

    initial begin
        color1 = GREEN;
        color2 = YELLOW;
        color3 = RED;

        $display("Color 1 : %d", color1);
        $display("Color 2 : %d", color2);
        $display("Color 3 : %d", color3);

        $display("First member from the enum is = %s", color1.first().name());
        $display("Next member from the enum is = %s", color1.next());

       /* List of Enum Methods
        first() – Returns the first value.
        last() – Returns the last value.
        next() – Returns the next value.
        prev() – Returns the previous value.
        name() – Returns the string representation of the enum value.
        */
    end


endmodule
