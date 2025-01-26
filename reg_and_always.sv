module req_and_always;

    reg q, d;
    always @(*) begin
        q < = d; // on the raisig edge of the clk , the value of d is stored in q
    end

endmodule