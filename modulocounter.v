module DAdder(
    input B, CLK, rst, clr, Cin,
    output Cout,
    output Q
);
wire sum;

    full_adder fa(
        .A(Q),
        .B(B),
        .C(Cin),
        .Y(sum),
        .Cout(Cout)
    );

    // clr (comparator) goes through D so the count clears on the next clock edge
    dff dff1(
        .data(sum & ~clr),
        .CLK(CLK),
        .rst(rst),
        .Q(Q),
        .NotQ()
    );
endmodule

module modulocounter(
    input CLK, rst, EN,
    output mc0, mc1, mc2,
    output out
);
wire w1;
wire w2;
wire comp;
assign comp = mc0 & (~mc1) & mc2;

    DAdder DAdder1(
        .B(EN),
        .CLK(CLK),
        .Cin(1'b0),
        .rst(rst),
        .clr(comp),
        .Cout(w1),
        .Q(mc0)
    );

    DAdder DAdder2(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w1),
        .rst(rst),
        .clr(comp),
        .Cout(w2),
        .Q(mc1)
    );

    DAdder DAdder3(
        .B(1'b0),
        .CLK(CLK),
        .Cin(w2),
        .rst(rst),
        .clr(comp),
        .Cout(),
        .Q(mc2)
    );

    dff dff2(
        .data(comp ^ out),
        .CLK(CLK),
        .rst(rst),
        .Q(out),
        .NotQ()
    );

endmodule