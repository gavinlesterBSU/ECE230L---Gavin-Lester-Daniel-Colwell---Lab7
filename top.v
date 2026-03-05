module top(
    input [9:0] sw,
    output [13:0] led

);

    halfSub halfSubA(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Bo(led[1])
    );
    
    onesComp onesComp1(
        .A0(sw[2]),
        .A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        .B0(sw[6]),
        .B1(sw[7]),
        .B2(sw[8]),
        .B3(sw[9]),
        .Comp0(led[2]),
        .Comp1(led[3]),
        .Comp2(led[4]),
        .Comp3(led[5])
    );
    
    twosComp twosComp1(
        .A0(sw[2]),
        .A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        .A4(sw[6]),
        .A5(sw[7]),
        .A6(sw[8]),
        .A7(sw[9]),
        .C0(led[6]),
        .C1(led[7]),
        .C2(led[8]),
        .C3(led[9]),
        .C4(led[10]),
        .C5(led[11]),
        .C6(led[12]),
        .C7(led[13])
    
    );
    
    
endmodule