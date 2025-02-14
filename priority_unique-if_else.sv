module priority_unique_if_else;

    int x = 4;

    // priority if 
    initial begin
        priority if (x == 3) // checked first
            $display("X is 3");
        else if (x == 5)   // check this next 
            $display(" X is 5");
        else
            $display("None of the conditions were met from PRIORITY IF");
    end

    // unique if
    initial begin
        unique if (x == 7) // first condition checked
            $display("X is 4");
        else if ( x == 5) // second condition
            $display("x is 5");
        else
            $display("X is neither 4 nor 5 - UNIQUE IF");
    end

    // unique0 if
    initial begin
        unique0 if (x == 3)
            $display("X is 3");
        else if (x == 5)
            $display("X is 5");
        // No "else" is required since unique0 allows no match

    end
    
endmodule

