module unpacked_array;

// data_type [width] array_name [index_range] ;
// bit [7:0] array_unpacked [0:5]         // 1D unpacked array with 5 elements, each 8 bits 
// bit [7:0] array_unpacked_2D [2:0][3:0] // 2D unpacked array with 3 rows and 4 columns 


    bit [7:0] unpacked_array [0:4];
    int array [2:0][3:0] = '{'{1, 2, 3, 4},
                            '{5, 6, 7, 8},
                            '{9, 10, 11, 12}
                            };

    initial begin
        unpacked_array = '{8'hAA, 8'hBB, 8'hDD, 8'hFF, 8'hEE};

        // Looop throu the unpacked array
        for (int i=0; i <5; i++) begin
            $display("Unpacked_array[%0d] = %0h", i, unpacked_array[i]);
        end

        unpacked_array[2] = 8'hFF;
        $display("Unpacked array[2] = %0h", unpacked_array[2]);

        foreach(array[i,j]) begin
            $display("array [%0d][%0d] = %0d", i, j, array[i][j]);
        end

    end

endmodule