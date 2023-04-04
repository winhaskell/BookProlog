member_set(E,S) :- member(E,S).

subset([],_).
subset([H|T],S) :-
	member_set(H,S),
	subset(T,S).

equal_set(S1,S2) :-
	subset(S1,S2),
	subset(S2,S1).
  
  
  
  
  
  
  
  
  
  
  
  
  
