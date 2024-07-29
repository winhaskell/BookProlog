% inorder(Tree, List) 

inorder(void,[]).
inorder(tree(X,L,R),Xs) :- inorder(L,Ls), inorder(R,Rs), append(Ls,[X|Rs],Xs).
