word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3) :-
	word(V1, _,V1H1,_,V1H2,_,V1H3,_),
	word(V2, _,V2H1,_,V2H2,_,V2H3,_),
	word(V3, _,V3H1,_,V3H2,_,V3H3,_),
	word(H1, _,V1H1,_,V2H1,_,V3H1,_),
	word(H2, _,V1H2,_,V2H2,_,V3H2,_),
	word(H3, _,V1H3,_,V2H3,_,V3H3,_),
	V1 \= V2,
	V2 \= V3,
	V1 \= V3,
	V3 \= H1,
	H1 \= H2,
	H2 \= H3.





?- crossword(V1, V2, V3, H1, H2, H3).
V1 = H1, H1 = astante,
V2 = H2, H2 = baratto,
V3 = H3, H3 = statale ;

V1 = astante,
V2 = cobalto,
V3 = pistola,
H1 = astoria,
H2 = baratto,
H3 = statale ;

V1 = astoria,
V2 = baratto,
V3 = statale,
H1 = astante,
H2 = cobalto,
H3 = pistola ;

V1 = H1, H1 = astoria,
V2 = H2, H2 = cobalto,
V3 = H3, H3 = pistola ;

V1 = H1, H1 = cobalto,
V2 = H2, H2 = baratto,
V3 = H3, H3 = statale ;
false.











