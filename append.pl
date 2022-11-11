?- append([a,b,c,d],[w,x,y,z],Out).
Out = [a, b, c, d, w, x, y, z].


?- append(X,Y,[a,b,c]).
X = [],
Y = [a, b, c] ;
X = [a],
Y = [b, c] ;
X = [a, b],
Y = [c] ;
X = [a, b, c],
Y = [] ;









