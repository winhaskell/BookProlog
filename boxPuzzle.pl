% define numbers for each box.
getbox(1). getbox(2). getbox(3). getbox(4). getbox(5).
% Box number, color, size.
box(1,black,3).
box(2,black,1).
box(3,white,1).
box(4,black,2).
box(5,white,3).
owners(A,B,C,D,E):-
getbox(A), getbox(B), getbox(C), getbox(D), getbox(E),
A\=B,A\=C,A\=D,A\=E,
B\=C,B\=D,B\=E,
C\=D,C\=E,
D\=E,
box(A,ColorA,_), box(B,ColorA,_), 
box(D,ColorD,_), box(E,ColorD,_), 
box(C,_,SizeC), box(D,_,SizeC), 
box(E,_,SizeE), box(B,_,SizeB),
SizeE < SizeB. 










