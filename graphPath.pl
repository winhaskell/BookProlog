edge(1, 3).
edge(1, 5).
edge(2, 4).
edge(3, 2).
edge(3, 5).
edge(4, 3).
edge(6, 1).
edge(6, 5).
 

% "connected" if there is there a way to get from X to Z.
connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(X, Z), connected(Z, Y).

% "path" if the third arg  is a path from X to Y.
path(X, Y, [X,Y]) :- edge(X, Y).
path(X, Y, [X|Path]) :-
    edge(X, Z),
path(Z, Y, Path).









