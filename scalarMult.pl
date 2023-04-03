scalarMult(_,[],[]).
scalarMult(N,[InHead|InTail],[OutHead|OutTail]) :-
              OutHead is N * InHead,
              scalarMult(N,InTail,OutTail).
              
              
              
              
              
              
              
              
              
