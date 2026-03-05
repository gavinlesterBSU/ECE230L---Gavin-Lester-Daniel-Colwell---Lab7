module onesComp(

    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    output Comp0,
    output Comp1,
    output Comp2,
    output Comp3

);

    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire c1;
    wire c2;
    wire c3;
    wire c4;
    wire s1;
    wire s2;
    wire s3;
    wire s4;

//FIRST BLOCK 4 BIT ADDER

    full_adder fullAdd1(
        .A(A0),
        .B(B0),
        .Cin(1'b0),
        .Y(c1),
        .Cout(w1)
     );
     
    full_adder fullAdd2(
        .A(A1),
        .B(B1),
        .Cin(w1),
        .Y(c2),
        .Cout(w2)
     );     
     
    full_adder fullAdd3(
        .A(A2),
        .B(B2),
        .Cin(w2),
        .Y(c3),
        .Cout(w3)
     );
     
    full_adder fullAdd4(
        .A(A3),
        .B(B3),
        .Cin(w3),
        .Y(c4),
        .Cout(w4)
     );
     
     
//SECOND BLOCK 4 BIT ADDER

    full_adder compAdd1(
        .A(c1),
        .B(w4),
        .Cin(1'b0),
        .Y(Comp0),
        .Cout(s1)
     );
     
    full_adder compAdd2(
        .A(c2),
        .B(0),
        .Cin(s1),
        .Y(Comp1),
        .Cout(s2)
     );     
     
    full_adder compAdd3(
        .A(c3),
        .B(0),
        .Cin(s2),
        .Y(Comp2),
        .Cout(s3)
     );
     
    full_adder compAdd4(
        .A(c4),
        .B(0),
        .Cin(s3),
        .Y(Comp3),
        .Cout(s4)
     );
     
     
     endmodule