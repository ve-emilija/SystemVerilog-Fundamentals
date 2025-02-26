module casez_example;

    logic [3:0] address;

    always @(*) begin
        casez (address)
            4'b101z: $display(" Address matched ");                // will display because the least significant bit is marked as don't care (rest of the bits are same)
            4'b001z: $display(" Address is not a match! ");
        endcase
    end

    initial begin
        address = 4'b1011;                                         // z are defined as don't care, even if least significant bit is 1/0
    end


endmodule