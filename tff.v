module tff(
    input T, CLK, rst,
    output Q,
    output NotQ
);

    dff dff1(
        .data(T ^ Q),
        .CLK(CLK),
        .rst(rst),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule