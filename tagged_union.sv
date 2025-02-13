module tagged_union;

    typedef union tagged {
        void Invalid;
        int  Valid;
    } VInt;

    VInt vi1, vi2;

    initial begin
        vi1 = tagged Valid( 23+34); // Creates Valid int
        vi2 = tagged Invalid; // Creates an Invalid value

        $display("v1 = %p v2 = %p", vi1, vi2);
    end

endmodule