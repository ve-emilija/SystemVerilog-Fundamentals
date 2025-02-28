module packed_array;

  // data_type [index_range][width] array_name;

  bit [31:0] status_register;

  typedef struct packed {
    bit [7:0] opcode;
    bit [3:0] reg1;
    bit [3:0] reg2;
    bit [7:0] immediate;
  } instruction_t;

  instruction_t instruct;

  initial begin
    status_register = 32'hDEAD_BEEF;
    $display("Status register value = %h", status_register);

    instruct = {8'hA5, 4'h7, 4'h5, 8'hA6 };
    $display("Instruction as 24 bit values %h", instruct);
  end

  /*
  bit [3:0][7:0] pixel_data; // 4 pixels, each 8-bit

  initial begin
    pixel_data = '{8'hFF, 8'h80, 8'h40, 8'h00}; // Assign grayscale values
    $display("Pixel 1: %h", pixel_data[0]); // FF (White)
    $display("Pixel 2: %h", pixel_data[1]); // 80 (Gray)
    $display("Pixel 3: %h", pixel_data[2]); // 40 (Darker Gray)
    $display("Pixel 4: %h", pixel_data[3]); // 00 (Black)
  end
  */

endmodule