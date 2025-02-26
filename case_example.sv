module case_example;

    logic [1:0] light;

    always @(*) begin
        case (light)
            2'b00: $display("STOP - RED");
            2'b01: $display("GREEN - GO");
            2'b10: $display("SLOW DOWN - YELLOW");
        endcase
    end

    initial begin
        light = 2'b01;                // GO - green (strict match, x and z are treated as care)
    end
    
endmodule