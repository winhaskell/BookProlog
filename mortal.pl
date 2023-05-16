mortal(X) :- person(X).

person(descartes).
person(euclid).
person(newton).
person(tesla).


mortal_report:-
    write('Known mortals are:'),
    nl,
    mortal(X),
    write(X),
    nl,
    fail.
    
    
    
    
    
    
    
    
    
    
