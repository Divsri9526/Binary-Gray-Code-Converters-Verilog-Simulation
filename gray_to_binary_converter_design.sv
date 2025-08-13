module gray_to_binary #(parameter N = 4)(
    input  [N-1:0] gray_in,
    output [N-1:0] binary_out
);
    assign binary_out[N-1] = gray_in[N-1]; // MSB remains same
    genvar i;
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : gray2bin_loop
            assign binary_out[i] = binary_out[i+1] ^ gray_in[i];
        end
    endgenerate
endmodule
