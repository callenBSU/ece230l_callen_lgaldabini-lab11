module dff(
    input data, rst,
    input CLK,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge CLK or posedge rst) begin
        if (rst)
            Q <= 0;
        else
            Q <= data;
    end

    assign NotQ = ~Q;

endmodule