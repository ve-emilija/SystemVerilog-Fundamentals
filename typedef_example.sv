module typedef_example;

// typedef <excisting_type> <new_type_name>;

    typedef bit [7:0] byte_t; // Alias for 8 bit type
    byte_t data; // Declaring a variable of type byte_t
    byte_t address;

    initial begin
        data = 8'hFF;
        address = 8'h53;
        $display("Data is = %h", data);
        $display("Address is = %h", address);
    end


endmodule