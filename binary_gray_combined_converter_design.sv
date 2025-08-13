module binary_gray_converter #(parameter N = 4)(
    input  [N-1:0] binary_in,
    input  [N-1:0] gray_in,
    output [N-1:0] gray_out,
    output [N-1:0] binary_out
);
    // Binary to Gray conversion
    assign gray_out[N-1] = binary_in[N-1];
    genvar i;
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : bin2gray_loop
            assign gray_out[i] = binary_in[i+1] ^ binary_in[i];
        end
    endgenerate

    // Gray to Binary conversion
    assign binary_out[N-1] = gray_in[N-1];
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : gray2bin_loop
            assign binary_out[i] = binary_out[i+1] ^ gray_in[i];
        end
    endgenerate
endmodule
