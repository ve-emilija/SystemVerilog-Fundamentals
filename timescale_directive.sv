//`timescale <time_unit> / <time_precision>

`timescale 1ns/1ps

module timescale_directive;

    initial begin
        #10; // 10 ns deplay 
        #1.5; // 1.5ns given that our precision is 1 ps
    end


endmodule