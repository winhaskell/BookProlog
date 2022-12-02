% preorder(Tree,Pre)
% "Pre" is a list of elements of "Tree" accumulated during a
% preorder traversal.

preorder(tree(X,L,R),Xs) :- preorder(L,Ls), preorder(R,Rs),
                            append([X|Ls],Rs,Xs).
preorder(void,[]).





% inorder(Tree, List)
inorder(void,[]).

inorder(tree(X,L,R),Xs) :- 
        inorder(L,Ls),
        inorder(R,Rs),
        append(Ls,[X|Rs],Xs).





postorder(leaf(X), [X]).
postorder(tree(Root, Left, Right), L) :- postorder(Left, T1), 
                                         postorder(Right, T2), 
                                         append(T1, T2, T), 
                                         append(T, [Root], L).








