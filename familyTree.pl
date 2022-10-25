  male(james1).
  male(charles1).
  male(charles2).
  male(james2).
  male(george1).
  female(catherine).
  female(elizabeth).
  female(kate).
  female(sophia).
  female(charm).
  female(lily).
  female(alice).

  parent(james1,charles1).
  parent(james1,elizabeth).
  parent(lily,charles1).
  parent(lily,elizabeth).
  parent(charles1,charles2).
  parent(charles1,catherine).
  parent(charles1,james2).
  parent(charles1,kate).
  parent(alice,charles2).
  parent(alice,catherine).
  parent(alice,james2).
  parent(alice,kate).
  parent(elizabeth,sophia).
  parent(sophia,george1).
  parent(sophia,charm).

  father(F,C):-male(F),parent(F,C). 
  mother(M,C):-female(M),parent(M,C). 

  son(S,P):-male(S),parent(P,S). 
  daughter(D,P):-female(D),parent(P,D). 

  siblings(A,B):-parent(P,A),parent(P,B),A\=B.
  % siblings have at least one common parent
  % the test A\=B preserves that siblings are different persons 

  uncle(U,N):-male(U),siblings(U,P),parent(P,N).
  aunt(A,N):-female(A),siblings(A,P),parent(P,N). 
  grand_parent(G,N):-parent(G,X),parent(X,N). 
  brother(X,Y) :- father(Z,X), father(Z,Y), male(X), male(Y), X\=Y.
  sister(X,Y) :- father(Z,X), father(Z,Y), female(X), female(Y), X\=Y.           

  yeye(X, Y) :- father(X, Z), father(Z, Y).   
  nainai(X, Y) :- mother(X, Z), father(Z, Y).      
  waigong(X, Y) :- father(X, Z), mother(Z, Y).   
  waipo(X, Y) :- mother(X, Z), mother(Z, Y).













