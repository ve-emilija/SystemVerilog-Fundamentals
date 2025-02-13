module struct_example;

    // struct {
    //     bit [7:0] data;
    //     bit       parity;
    //     bit       stop_bit;
    // } uart_tr; // Single variable 

    typedef struct packed {
        bit [7:0] data;
        bit       parity;
        bit       stop_bit;
    } uart_tr_ty;  // Creates a resuable struct type 

    /*
    Memory Layout (Gaps Between Members)
    data (8 bits)	(GAP)	parity (1 bit)	(GAP)	stop_bit (1 bit)
    */

    /*
    Memory Layout (Tightly Packed, No Gaps)
    data (8 bits)	parity (1 bit)	stop_bit (1 bit)
    8 bits	1 bit	1 bit
    */
    uart_tr_ty uart_tr, uart_tr2;

    initial begin
        uart_tr.data     = 8'hA5;
        uart_tr.parity   = 1'b1;
        uart_tr.stop_bit = 1'b1;

        uart_tr2 = uart_tr;

        if (uart_tr == uart_tr2)
            $display("Structures are identical");
            
        $display("UART transaction = Data = %h, Parity = %b, Stop bit = %b", uart_tr.data, uart_tr.parity, uart_tr.stop_bit);
    end

endmodule