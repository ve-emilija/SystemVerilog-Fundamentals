module for_concept;

    int z = 3;
    int e = 3;

    // for (initialization; condition; update) begin
    //     // Code to execute
    // end
    
    initial begin
        for (int i = 0; i < 5; i++) begin
            $display("Iterations : %d", i);
        end

        for (int y = 0; y < 8; y++) begin
            $display("Sending UART data bit : %d", y);
        end

        $display("%0d", z++);   // Prints 3, then increments i to 4
        $display("%0d", z);     // Prints 4
        $display("%0d", ++e);   // Increments i to 4, then prints 4
        $display("%0d", e);     // Prints 4
    end
endmodule