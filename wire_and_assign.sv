module wire_and_assign;

    wire a, b, c;

    assign a = 1'b1; // a is driven to 1
    assign b = 1'b0;
    assign c = a & b;

    initial begin
        #1; 
        $display (" a = %b, b = %b , c = %b", a , b ,c);
    end

endmodule
