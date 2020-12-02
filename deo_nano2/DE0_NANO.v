
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE0_NANO(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,

	//////////// LED //////////
	output		     [7:0]		LED,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// SW //////////
	input 		     [3:0]		SW
);



//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================

wire [1:0] a,b,c;

//hatalı vektor ifadesi, aslında array tanımı
// wire c[4:0]; array 

assign a = SW[1:0];
assign b = SW[3:2];

//SW  3 2
//b   1 0

mymodule_df m1(a,b,c);

assign LED[1:0] = c;

	
endmodule

module mymodule_df(input[1:0] a,b, output [1:0] c);

// DATAFLOW 
// bitwise and
//a    3 2
//     & &
//b    1 0
//   = = = = =   
//c    1 0

assign c = a & b ;

endmodule

module mymodule_st(input[2:0] a,b, output [4:0] c);

// STRUCTURAL  
wire not_d,not_e,net1,net2,net3;

and u0(c[0],a[0],b[0]);
and u1(c[1],a[1],b[1]);
and u2(c[2],a[2],b[2]);
and u3(c[3],a[3],b[3]);

endmodule

module mymodule_beh(input[4:0] a,b, output reg[4:0] c);

//BEHAVIORAL
always@(*)
begin
	c <= a & b;
end

endmodule


