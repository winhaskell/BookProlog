rev_digits([], 0).
rev_digits([D | L], N) :- rev_digits(L, N1), N #= N1 * 10 + D.

% digits(L, N) is true if L is a list of digits (e.g. [3, 5, 2, 6]) and
% N is the corresponding decimal number (e.g. 3526).
digits(L, N) :- reverse(L, LR), rev_digits(LR, N).

solve(S1, S2, S3, R1) :-
    S1 = [A, P, P, L, E],
    S2 = [G, R, A, P, E],
    S3 = [P, L, U, M],
    R1 = [B, A, N, A, N, A],
    List = [A, B, E, G, L, M, N, P, R, U],
    List ins 0..9,
    all_distinct(List),
    [A, G, P, B] ins 1..9,
    digits(S1, Apple),
    digits(S2, Grape),
    digits(S3, Plum),
    digits(R1, Banana),
    Banana #= Apple + Grape + Plum,
    label(List).
    
    
    
    
    
    
    
    
    
    
    
    
