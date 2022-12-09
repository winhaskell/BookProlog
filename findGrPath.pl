edge(a,b,7).
edge(b,d,22).
edge(b,e,11).
edge(e,f,23).
edge(a,c,5).
edge(c,d,18).
edge(d,f,13).
edge(d,g,28).
edge(g,h,24).
edge(h,d,36).

findapath(X, Y, W, [X,Y], _) :- edge(X, Y, W).
findapath(X, Y, W, [X|P], V) :- \+ member(X, V),
                                 edge(X, Z, W1),
                                 findapath(Z, Y, W2, P, [X|V]),
                                 W is W1 + W2.
