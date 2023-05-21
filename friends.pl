likes(alice,tom).
likes(tom,jane).
likes(tom,alice).

friends(X,Y):- likes(X,Y),likes(Y,X).






