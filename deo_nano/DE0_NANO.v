
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

wire x,y,z,w;

assign x = SW[0];
assign y = SW[1];
assign LED[0] = z;
assign LED[1] = w;
 
andor_str inst1 (x,y,z,w);

endmodule

//STRUCTURAL
module andor_str(input a,b, output q0,q1);

	and u1(q0,a,b);
	or u2(q1,a,b);

endmodule

