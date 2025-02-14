module break_continue;

    initial begin

    // break
    //    for (int i = 0; i<10; i++) begin
    //        if (i == 5)
    //          break;
    //          $display("i = %0d", i);
    //    end 

    // continue
        for (int i = 0; i<10; i++) begin
            if (i == 5)
                continue;                     // Skips the iteration when i is 5
            $display("i = %0d", i);
       end 
    end

endmodule