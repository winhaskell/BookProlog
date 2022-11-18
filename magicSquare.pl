solve([A1, A2, A3, B1, B2, B3, C1, C2, C3]):- 
  permutation([1,2,3,4,5,6,7,8,9], [A1, A2, A3, B1, B2, B3, C1, C2, C3]),

/* Makes sure that all of the rows, cols, and diags sum to 15*/

	A1 + A2 + A3 =:= 15, /*Checks the sum of Row 	1*/
	B1 + B2 + B3 =:= 15, /*Checks the sum of Row 	2*/
	C1 + C2 + C3 =:= 15, /*Checks the sum of Row 	3*/
	A1 + B1 + C1 =:= 15, /*Checks the sum of Col 	1*/
	A2 + B2 + C2 =:= 15, /*Checks the sum of Col 	2*/
	A3 + B3 + C3 =:= 15, /*Checks the sum of Col 	3*/
	A1 + B2 + C3 =:= 15, /*Checks the sum of Diag 1*/
	A3 + B2 + C1 =:= 15. /*Checks the sum of Diag 2*/
  
  
  
A1 = 2,
A2 = 7,
A3 = 6,
B1 = 9,
B2 = 5,
B3 = 1,
C1 = 4,
C2 = 3,
C3 = 8 .
  
  
  
  
  
  
  
  
