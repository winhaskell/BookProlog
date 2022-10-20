perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).   
perm([],[]).

takeout(X,[X|R],R).
takeout(X,[F|R],[F|S]) :- takeout(X,R,S).

solve(P) :-
     perm([1,2,3,4,5,6,7,8],P), 
     combine([1,2,3,4,5,6,7,8],P,S,D),
     all_diff(S),
     all_diff(D).

combine([X1|X],[Y1|Y],[S1|S],[D1|D]) :-
     S1 is X1 +Y1,
     D1 is X1 - Y1,
     combine(X,Y,S,D).
combine([],[],[],[]).

all_diff([X|Y]) :-  \+member(X,Y), all_diff(Y).
all_diff([X]).





?- solve(P).
P = [5, 2, 6, 1, 7, 4, 8, 3] .

?- setof(P,solve(P),Set),length(Set,L).
Set = [[1, 5, 8, 6, 3, 7, 2, 4], [1, 6, 8, 3, 7, 4, 2|...], [1, 7, 4, 6, 8, 2|...], [1, 7, 5, 8, 2|...], [2, 4, 6, 8|...], [2, 5, 7|...], [2, 5|...], [2|...], [...|...]|...],
L = 92.










