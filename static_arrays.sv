module static_arrays;

    /* Static array:
        - fixed size in compile time 
        - once and remain the same through the execution

        data_type array_name [size];
        int       my_array   [5];

      Memory:
      - contigously (sequentially) stored

      Example (if stored at address 1000 in memory):
        Index	Value	Address
        0	    10	    1000
        1	    20	    1004
        2	    30	    1008
        (Assuming 4-byte integer storage per element)
    */

    int data[4] = {5, 10, 15, 20}; // Static array initialization - compile time
    int number[3];                 // Declaring an array of dize 3
    int therhold = 10;             // Limit, condition check

    initial begin

        // Run time assignment to the array
        number[0] = 10;
        number[1] = 20;
        number[2] = 30;

        $display("First Element = %0d", number[0]);
        $display("Second Element = %0d",number[1]);
        $display("Third Element = %0d", number[2]);

        foreach(data[i]) begin
            if (data[i] > therhold) begin
                $display("Element with index %0d (%0d) id above the therhold", i, data[i]);
            end
        end
    end

    /*
    Feature	Static Initialization	                   Assignment After Declaration
    When Values are Set	At declaration	               Inside initial or procedural block
    Flexibility	❌ No (Fixed values)	                 ✅ Yes (Values can change)
    Memory Allocation	Contiguous (sequential)	       Contiguous (sequential)
    Best For	Fast access, constant values	       Dynamic calculations, flexible logic

    */
endmodule