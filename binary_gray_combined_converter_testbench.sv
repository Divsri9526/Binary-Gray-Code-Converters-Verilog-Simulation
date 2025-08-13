module binary_gray_converter_tb;
    reg  [3:0] binary_in;
    reg  [3:0] gray_in;
    wire [3:0] gray_out;
    wire [3:0] binary_out;

    binary_gray_converter #(4) uut (
        .binary_in(binary_in),
        .gray_in(gray_in),
        .gray_out(gray_out),
        .binary_out(binary_out)
    );

    initial begin
      $monitor("Binary_in = %b | Gray_out = %b |-|-| Gray_in = %b | Binary_out = %b", binary_in, gray_out, gray_in, binary_out);
      
        binary_in = 4'b0000; gray_in = 4'b0000; #10;
        binary_in = 4'b0001; gray_in = 4'b0001; #10;
        binary_in = 4'b0010; gray_in = 4'b0011; #10;
        binary_in = 4'b0100; gray_in = 4'b0110; #10;
        binary_in = 4'b1111; gray_in = 4'b1000; #10;

        $finish;
    end
endmodule
