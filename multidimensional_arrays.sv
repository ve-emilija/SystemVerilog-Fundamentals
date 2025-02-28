module multidimensional_arrays;

    // data_type array_name[rows][columns];
    /*
       C0   C1   C2
    +----+----+----+
    | 10 | 20 | 30 | ← Row 0
    +----+----+----+
    | 40 | 50 | 60 | ← Row 1
    +----+----+----+
    */

    int matrix[2][3] = '{'{10, 20, 30}, '{40, 50, 60}};
    int matrix_second[2][2] = '{'{2, 4}, '{6,8}};

    initial begin
        foreach (matrix_second[i, j]) begin
            if (matrix_second[i] [j] % 2 == 0)
                $display("matrix_second[%0d][%0d] = %0d is even", i, j, matrix_second[i][j]);
        end
    end

    // Checking for a Symmetric Matrix  A symmetric matrix means matrix[i][j] == matrix[j][i] for all elements.
    // int matrix[3][3] = '{'{1, 2, 3}, '{2, 4, 5}, '{3, 5, 6}}; // Symmetric
    // bit is_symmetric = 1;

    // initial begin
    //   foreach (matrix[i, j]) begin
    //     if (matrix[i][j] != matrix[j][i]) begin
    //       is_symmetric = 0;
    //       break;
    //     end
    //   end
    //   if (is_symmetric)
    //     $display("Matrix is symmetric");
    //   else
    //     $display("Matrix is NOT symmetric");
    // end

endmodule