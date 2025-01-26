module always_block_SV_specific;

    // Variables for combinational logic
    logic a, b, y;

    // Combinational logic block
    always_comb begin
        y = a & b;
    end

    // Variables for sequential logic
    logic clk, reset, d, q;

    // Sequential logic block
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else
            q <= d;
    end

    // Variables for latch logic
    logic enable, latch_d, latch_q;

    // Latch logic block
    always_latch begin
        if (enable)
            latch_q = latch_d;
    end

endmodule