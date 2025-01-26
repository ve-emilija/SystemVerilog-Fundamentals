module initial_begin;

    // executed only once, at simulatiion time 0
    // it is not syntazable , used for simulation purpose ONLY

    logic a, b;
    initial begin
        a = 0;
        b = 1;
        $display(" a = %b , b = %b at time = %t", a , b, $time);
        #10 a = 1;
        $display(" a = %b at time = %t", a, $time);
    end

endmodule