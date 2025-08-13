module binary_to_gray #(parameter N = 4)(
    input  [N-1:0] binary_in,
    output [N-1:0] gray_out
);
    assign gray_out[N-1] = binary_in[N-1]; // MSB remains same
    genvar i;
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : bin2gray_loop
            assign gray_out[i] = binary_in[i+1] ^ binary_in[i];
        end
    endgenerate
endmodule
