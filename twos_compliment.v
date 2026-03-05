module twosComp(
    input A0,
    input A1,
    input A2,
    input A3,
    input A4,
    input A5,
    input A6,
    input A7,
    output C0,
    output C1,
    output C2,
    output C3,
    output C4,
    output C5,
    output C6,
    output C7
);

    wire w0;
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire w5;
    wire w6;
    wire w7;
    
    full_adder fullAdd0(
        .A(~A0),
        .B(1),
        .Cin(1'b0),
        .Y(C0),
        .Cout(w0)
     );
    
    full_adder fullAdd1(
        .A(~A1),
        .B(0),
        .Cin(w0),
        .Y(C1),
        .Cout(w1)
     );

    full_adder fullAdd2(
        .A(~A2),
        .B(0),
        .Cin(w1),
        .Y(C2),
        .Cout(w2)
     );
     
    full_adder fullAdd3(
        .A(~A3),
        .B(0),
        .Cin(w2),
        .Y(C3),
        .Cout(w3)
     );
     
    full_adder fullAdd4(
        .A(~A4),
        .B(0),
        .Cin(w3),
        .Y(C4),
        .Cout(w4)
     );
     
    full_adder fullAdd5(
        .A(~A5),
        .B(0),
        .Cin(w4),
        .Y(C5),
        .Cout(w5)
     );

    full_adder fullAdd6(
        .A(~A6),
        .B(0),
        .Cin(w5),
        .Y(C6),
        .Cout(w6)
     );
     
    full_adder fullAdd7(
        .A(~A7),
        .B(0),
        .Cin(w6),
        .Y(C7),
        .Cout(w7)
     );
     
endmodule