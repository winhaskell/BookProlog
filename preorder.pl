preorder(tree(X,L,R),Xs) :- preorder(L,Ls), preorder(R,Rs), append([X|Ls],Rs,Xs).
preorder(void,[]).
