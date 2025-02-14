module foreach_concept;

    // foreach (collection[index]) begin
    //     // Do something with the collection [index]
    // end

    int array[5] = '{1,2,3,4,5};

    initial begin
        foreach(array[i]) 
            $display("array[%0d] = %0d", i, array[i]);

    end
endmodule