module if_else_concept;

    // if (condition) begin
        // if true -> this will execute
    // end else begin
        // something else

    int x =10;

    initial begin
        if (x < 5) begin
            $display("X is greater than 5");
        end
        else if (x == 10) begin
            $display(" X is = 10");
        end
        else begin
            $display ("X is 5 or less");
        end

    end


    /*
    Nested Conditions: Multiple levels of decision-making.
    Comparison Operators: ==, !=, >, <, >=, <=.
    Logical Operators: &&, ||, !.
    Integration with procedural blocks: Used in always, initial, and forever blocks.
    */
endmodule