scalarMult(_,[],[]).
scalarMult(N,[InHead|InTail],[OutHead|OutTail]) :-
              OutHead is N * InHead,
              scalarMult(N,InTail,OutTail).
 

?- scalarMult(6,[2,7,4],Result).
Result = [12, 42, 24] .

      
      
      
      
      
      
      
              

