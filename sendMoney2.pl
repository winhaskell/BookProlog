alpha1(S, E, N, D, M, O, R, Y, [S, E, N, D, M, O, R, E, M, O, N, E, Y]) :-
    between(1, 9, S),
    between(0, 9, E),
    E \=S,
    between(0, 9, N),
    N \= E, N \= S,
    between(0, 9, D),
    D \= N, D \= E, D \= S,
    between(1, 9, M),
    M \= D, M \= N, M \= E, M \= S,
    between(0, 9, O),
    O \= M, O \= D, O \= N, O \= E, O \= S,
    between(0, 9, R),
    R \= O, R \= M, R \= D, R \= N, R \= E, R \= S,
    between(0, 9, Y),
    Y \= R, Y \= O, Y \= M, Y \= D, Y \= N, Y \= E, Y \= S,
    Send is S*1000 + E*100 + N*10 + D,
    More is M*1000 + O*100 + R*10 + E,
    Money is M*10000 + O*1000 + N*100 + E*10 + Y,
    Money is Send + More.









