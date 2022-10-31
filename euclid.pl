gcd(X,0,X).
gcd(X,Y,D):- R is X mod Y, gcd(Y,R,D).
lcm(X,Y,M):- gcd(X,Y,D),M is (X*Y)/D.

















