module casex_example;

    logic [2:0] sensor;

    always @(*) begin
        casex (sensor)
            3'b1xz: $display("Sensor is ok");      // it ignores x and z's, so in this particular situation it will give result only on the MSB validity
            3'bx11: $display("Faulty sensor");
        endcase
    end

    initial begin
        sensor = 3'b11x;                          // it ignores x and z's
    end

endmodule