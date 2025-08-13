module binary_to_gray_tb;
    reg  [3:0] binary_in;
    wire [3:0] gray_out;

    binary_to_gray #(4) uut (.binary_in(binary_in), .gray_out(gray_out));

    initial begin
        $dumpfile("binary_to_gray_waveform.vcd");
        $dumpvars(1,binary_to_gray_tb);
        $monitor("Binary = %b | Gray = %b", binary_in, gray_out);
        
        binary_in = 4'b0000; #10;
        binary_in = 4'b0001; #10;
        binary_in = 4'b0010; #10;
        binary_in = 4'b0100; #10;
        binary_in = 4'b1111; #10;
        $finish;
    end
endmodule
