% "hailstone" if the list is the hailstone sequence after N.

hailstone(1, []).
hailstone(N, [H|Tail]) :-
    N > 1,
    mod(N, 2) =:= 0,
    H is div(N, 2),
    hailstone(H, Tail).
hailstone(N, [H|Tail]) :-
    N > 1,
    mod(N, 2) =:= 1,
    H is 3*N + 1,
hailstone(H, Tail).











