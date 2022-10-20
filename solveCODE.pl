:- use_module(library(clpfd)).

hint_1([1,4,7]). % One digit right but wrong place
hint_2([1,8,9]). % One digit right and right place
hint_3([9,6,4]). % two digit right but both wrong place
hint_4([5,2,3]). % all digits wrong
hint_5([2,8,6]). % One digit right but wrong place

solve(Solution):-
    A in 0..9,
    B in 0..9,
    C in 0..9,
    hint_1(H1),
    (
       not_correct_space(A,1,H1), not_in(B,H1), not_in(C,H1);
       not_correct_space(B,2,H1), not_in(A,H1), not_in(C,H1);
       not_correct_space(C,3,H1), not_in(A,H1), not_in(B,H1)
    ),
    hint_2(H2),
    (
        correct_space(A,1,H2), not_in(B,H2), not_in(C,H2);
        correct_space(B,2,H2), not_in(A,H2), not_in(C,H2);
        correct_space(C,3,H2), not_in(A,H2), not_in(B,H2)
    ),
    hint_3(H3),
    (
       not_correct_space(A,1,H3), not_correct_space(B,2,H3), not_in(C,H3);
       not_correct_space(A,1,H3), not_correct_space(C,3,H3), not_in(B,H3);
       not_correct_space(B,2,H3), not_correct_space(C,3,H3), not_in(A,H3)
    ),
    hint_4(H4),
    (
        not_in(A,H4),
        not_in(B,H4),
        not_in(C,H4)
    ),
    hint_5(H5),
    (
       not_correct_space(A,1,H5), not_in(B,H5), not_in(C,H5);
       not_correct_space(B,2,H5), not_in(A,H5), not_in(C,H5);
       not_correct_space(C,3,H5), not_in(A,H1), not_in(B,H1)
    ),
    Solution is (A * 100 + B * 10 + C).
    
correct_space(X,Index,List):-
    nth1(Index,List,X).
    
not_correct_space(X,Index,List):-
    nth1(I,List,X),
    Index \== I.
    
not_in(_,[]).
not_in(X, [Y|T]):-
    X #\= Y,
    not_in(X,T).













