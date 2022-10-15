parse(L) :- start(S), trans(S,L).

trans(X,[A|B]) :- 
      state(X,A,Y),   /*  X ---A---> Y */
      write(X),
      write('  '),
      write([A|B]),
      nl,
      trans(Y,B).  
trans(X,[]) :- 
      final(X),
      write(X),
      write('  '),
      write([]), nl.
	  
state(0,a,1).   
state(0,b,0).
state(1,a,1).
state(1,b,2).
state(2,b,2).
state(2,c,2).
 
start(0).

final(2).








