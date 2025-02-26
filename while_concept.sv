module while_concept;

    // while (condition) begin
    //     // Code to execute as long as the condition is true
    // end

    integer count; // for counting

    initial begin
        count = 10; // initialize the count

        // Lets loop while the count is greater than or eual to 0
        while ( count >= 0) begin
            $display("Count = %0d", count);
                count = count - 1; // Decrement it by 1
        end

    end

endmodule