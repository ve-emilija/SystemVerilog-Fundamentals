module forever_concept;

    // forever begin
    //     // Do our continous logic
    // end

    reg clk;
    integer i;

    initial begin
        clk = 0;
        i   = 0;

        forever begin
            #5 clk = ~clk; // Toggle clock every 5 time units
            i = i + 1;
            if (i == 10) 
                break; // This will exit loop after 10 cycles ( 50 time units)
        end
    end

endmodule