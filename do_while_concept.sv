module do_while_concept;

    // do begin 
    // Code that will be evaluated goes here
    // end while (condtion)


    int count = 5;

    initial begin
        do begin
            $display("Count is = %0d", count);
            count = count + 1;
        end while (count < 5);
    end

endmodule




/*
Modified simulation command:
Summary of Execution Steps: 
1. Load the compiled module do_while_concept.
2. Run the simulation (run -all).
3. Enable logging of all signals (log -r /*).
4. Run the simulation again (run -all) to capture all signals.
5. Quit the simulation (quit).
*/