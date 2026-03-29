module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    wire x1, c1, c2;

    // XOR for Sum
    xor (x1, A, B);
    xor (Sum, x1, Cin);

    // Carry logic
    and (c1, A, B);
    and (c2, x1, Cin);
    or  (Cout, c1, c2);

endmodule
