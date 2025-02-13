module union_example;

    // UNPACKED UNION:
    typedef union {
        int  value;
        byte byteVal;
        int  intVal;
    } my_union_u;

    my_union_u myData_u;

    initial begin
        myData_u.value = 32'hA56;
        $display("Value = %h", myData_u.value);
        $display("byteVal = %h", myData_u.byteVal);
        $display("intVal = %h", myData_u.intVal);
    end

    // Operations on unions
    // Assignment (=): Assigns data to a union member.
    // Access (.): Accesses a specific member of the union.
    // Arithmetic & Logical Operations: Only applicable to packed unions for bitwise operations.
    // Type Safety Enforcement: Only enforced in tagged unions, ensuring that the correct type is accessed.
 
    // PACKED UNION
    typedef union packed {
        bit [31:0] word;
        bit [31:0] word_second;
    } my_union;

    bit [31:0] word_s, word_result;     
    my_union myData;

    initial begin
        word_s = 32'h0000_FFFF;
        myData.word = 32'hDEAD_BEEF; 

        word_result = myData.word & word_s;   // Bitwise AND

        $display(" Word = %h , word_second = %h", myData.word, myData.word_second);
        $display("Result from AND operation between two words = %h", word_result);
    end

endmodule