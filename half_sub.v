module halfSub(

    input A,
    input B,
    output Y,
    output Bo
);

    assign Y = (A & ~B) | (~A & B);
    
    assign Bo = (~A & B);
    

endmodule