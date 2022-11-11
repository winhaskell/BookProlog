We can easily map this task to a combinatorial task over integers, 
by using one variable for each region, and one integer for each colour.

For concreteness, let us colour the following map:


We shall use the integers 0, 1, 2, ..., to represent suitable colours.

The following Prolog program describes the task using CLP(FD) constraints:
regions(Rs) :-
        Rs = [A,B,C,D,E,F],
        Rs ins 0..3,
        A #\= B, A #\= C, A #\= D, A #\= F,
        B #\= C, B #\= D,
        C #\= D, C #\= E,
        D #\= E, D #\= F,
        E #\= F.
        
 
 
 
 ?- regions(Rs), label(Rs).
   Rs = [0,1,2,3,0,1]
;  Rs = [0,1,2,3,0,2]
;  Rs = [0,1,2,3,1,2]
;  Rs = [0,1,3,2,0,1]
;  ... .



To obtain more readable solutions, we can relate integers to colours. For example:
integer_color(0, red).
integer_color(1, green).
integer_color(2, blue).
integer_color(3, yellow).
    
    
This allows us to query:
?- regions(Rs), label(Rs),
   maplist(integer_color, Rs, Cs),
   pairs_keys_values(Pairs, [a,b,c,d,e,f], Cs).
Rs = [0, 1, 2, 3, 0, 1],
Cs = [red, green, blue, yellow, red, green],
Pairs = [a-red, b-green, c-blue, d-yellow, e-red, f-green] ;
Rs = [0, 1, 2, 3, 0, 2],
Cs = [red, green, blue, yellow, red, blue],
Pairs = [a-red, b-green, c-blue, d-yellow, e-red, f-blue] ;
etc.
    
    
    
    
The following query shows that at least 4 colours are needed in this case:

?- regions(Rs), Rs ins 0..2, label(Rs).
   false.


?- regions(Rs), Rs ins 0..1, label(Rs).
   false.








