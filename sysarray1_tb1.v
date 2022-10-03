`timescale 1ns/1ps

module sysarray_tb();

parameter N = 31;
parameter n = 2;

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
    clk = 1;

    flg = 0;

    arr1 = 0;
    arr1 = arr1 + (1) + (2)*(2**(N+1)) ;
    arr2 = 0;
    arr2 = arr2 + (1) + (3)*(2**(N+1)) ;

    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;
    
    arr1 = 0;
    arr1 = arr1 + (3) + (4)*(2**(N+1));
    arr2 = 0;
    arr2 = arr2 + (2) + (4)*(2**(N+1));
    
    #10;
    clk = ~clk;
    #10;
    clk = ~clk;

    flg = flg + 1;

    arr1 = 0;
    arr2 = 0;

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