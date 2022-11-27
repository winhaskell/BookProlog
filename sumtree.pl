% sumtree(TreeOfIntegers, Sum) 
% Sum is the sum of the integers in TreeOfIntegers
sumtree(T, S) :-
        inorder(T, L),
        sumlist(L, S).

sumlist(L, S) :- sumlist(L, 0, S).
sumlist([], S, S).
sumlist([H|T], A, S) :-
        A1 is H + A,
        sumlist(T, A1, S).





?- sumtree(tree(5,tree(2,tree(1,void,void),tree(4,
                  tree(3,void,void),void)),tree(6,void,void)), S).
S = 21.









