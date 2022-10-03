`timescale 1ns/1ps

module sysarray_tb();

parameter N = 31;
parameter n = 3;

reg clk;
// reg [N:0]arr1[n-1:0];
// reg [N:0]arr2[n-1:0];
reg [((N+1)*(n))-1 :0]arr1;
reg [((N+1)*(n))-1 :0]arr2;
reg [6:0] flg;

sysarray uut(
    .clk(clk),
    .flg(flg),
    .arr1(arr1),
    .arr2(arr2)
);

initial begin
    clk = 0;

    flg = 0;
    arr1 = 0;
    arr1 = arr1 + (1) + (2)*(2**(N+1)) + (3)*(2**(2*(N+1)));
    arr2 = 0;
    arr2 = arr2 + (1) + (2)*(2**(N+1)) + (3)*(2**(2*(N+1)));

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;
    
    arr1 = 0;
    arr1 = arr1 + (4) + (5)*(2**(N+1)) + (6)*(2**(2*(N+1)));
    arr2 = 0;
    arr2 = arr2 + (4) + (5)*(2**(N+1)) + (6)*(2**(2*(N+1)));


    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;
    arr1 = 0;
    arr1 = arr1 + (7) + (8)*(2**(N+1)) + (9)*(2**(2*(N+1)));
    arr2 = 0;
    arr2 = arr2 + (7) + (8)*(2**(N+1)) + (9)*(2**(2*(N+1)));
    
    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

end

endmodule