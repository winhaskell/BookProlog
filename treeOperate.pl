% tree(Tree)
% "Tree" is a binary tree.

tree(void).
tree(tree(_,Left,Right)) :-  tree(Left),
                             tree(Right).


% tree_member(Element,Tree)
% "Element" is an element of the binary tree "Tree".

tree_member(X,tree(X,_,_)).
tree_member(X,tree(_,Left,_)) :- tree_member(X,Left).
tree_member(X,tree(_,_,Right)) :- tree_member(X,Right).



% preorder(Tree,Pre)
% "Pre" is a list of elements of "Tree" accumulated during a
% preorder traversal.

preorder(tree(X,L,R),Xs) :- preorder(L,Ls), preorder(R,Rs),
                            append([X|Ls],Rs,Xs).
preorder(void,[]).



% append(Xs,Ys,XsYs)
% "XsYs" is the result of appending the lists "Xs" and "Ys".

append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).


% Some sample trees
%
%    tree1       tree2         tree3
%
%      1           4             1
%     / \         / \           / \
%    2   3       5   6         2   3
%                             / \
%                            5   6
%                               /
%                              7
%

tree1(tree(1,tree(2,void,void),tree(3,void,void))).
tree2(tree(4,tree(5,void,void),tree(6,void,void))).
tree3(
        tree(   1,
                tree(   2,
                        tree(5,void,void),
                        tree(   6,
                                tree(7,void,void),
                                void
                        )
                ),
                tree(3,void,void)
        )
).



%%%%%%%%%%%%%%%%%%%%%%%%%%
% Place your code here


% Additional test data

tree4(tree(12,void,void)).
tree5(tree(5,tree(2,tree(1,void,void),tree(4,tree(3,void,void),void)),tree(6,void,void))).
tree6(tree(6,tree(2,tree(1,void,void),tree(4,tree(3,void,void),void)),tree(6,void,void))).
tree7(tree(7,tree(2,tree(1,void,void),tree(4,tree(3,void,void),void)),tree(6,void,void))).
tree8(tree(8,tree(8,tree(8,void,void),tree(8,void,void)),tree(8,void,void))).
tree9(tree(8,tree(8,tree(9,void,void),tree(9,void,void)),tree(9,void,void))).

% inorder(Tree, List)
inorder(void,[]).

inorder(tree(X,L,R),Xs) :- 
        inorder(L,Ls),
        inorder(R,Rs),
        append(Ls,[X|Rs],Xs).


% search - just invoke tree_member
search(Tree, X) :- tree_member(X, Tree), !.
% search(tree(X,_,_), X).
% search(tree(_,L,R), K) :-
%         search(L, K);
%         search(R, K).


% subtree(Subtree, Tree)
% checks if Subtree is a subtree of Tree.
subtree(T, T).
subtree(S, tree(_, L, R)) :-
        subtree(S, L);
        subtree(S, R).

% sumtree(TreeOfIntegers, Sum) 
% Sum is the sum of the integers in TreeOfIntegers
sumtree(T, S) :-
        inorder(T, L),
        sumlist(L, S).

sumlist(L, S) :- sumlist(L, 0, S).
sumlist([], S, S).
sumlist([H|T], A, S) :-
        A1 is H + A,
        sumlist(T, A1, S).

% ordered(Tree)
% checks if Tree is ordered like a binary search tree
ordered(tree(P, L, R)) :-
        bigger(P, L),
        smaller(P, R),
        !.

bigger(_, void).
bigger(X, tree(P, L, R)) :-
        X > P,
        bigger(X, L),
        bigger(X, R).

smaller(_, void).
smaller(X, tree(P, L, R)) :-
        X < P,
        smaller(X, L),
        smaller(X, R).

% substitute
% substitute(X, Y, TreeX, TreeY)
% TreeY is the result of replacing all occurrences of X in TreeX with Y

substitute(X, X, TreeX, TreeX) :- !.
substitute(_, _, void, void).

substitute(X, Y, tree(XP, XL, XR), tree(YP, YL, YR)) :-
        % (XP = X -> YP = Y ; XP = YP),
        % (YP = Y -> XP = X ; YP = XP),
        substituted(XP, YP, X, Y),
        substitute(X, Y, XL, YL),
        substitute(X, Y, XR, YR).


% substituted(XValue, YValue, X, Y)
% Either X got switched to Y or XP and YP are the same
substituted(X, Y, X, Y).
substituted(XP, YP, X, _) :-
        XP = YP,
        XP \== X.

% prettyprint
prettyprint(T) :- nl, prettyprint(T, 0), nl.
prettyprint(void, Depth) :- 
        tab_over(Depth),
        write("X"), nl.

prettyprint(tree(P, L, R), Depth) :-
        D1 is Depth + 1,
        prettyprint(R, D1),
        tab_over(Depth),
        write(P), nl,
        prettyprint(L, D1).

% alternatively, could use built-in tab/1
tab_over(0) :- !.
tab_over(Depth) :-
        write("   "),
        D1 is Depth - 1,
        tab_over(D1).

% binsearch
% binsearch(Tree, Key)
binsearch(Tree, Key) :- binsearch2(Tree, Key), !.
binsearch2(tree(P, L, R), Key) :-
        write(P),
        write(" "),
        P == Key;
        Key < P ->
                binsearch2(L, Key);
                binsearch2(R, Key).
                
        
        
        
        
        
        
        
        
        
        
        
                
                
