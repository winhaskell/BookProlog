/* A collection of useful PROLOG predicates.  This should be consulted by  */
/*                 ['library.pro'].                                        */
/*                 consult('library.pro').   or                            */
/*                 resonsult('library.pro').                               */

not(P) :- call(P),!,fail.  %% standard negation as failure predicate 
not(P).

member(Member, [Member|_]).         %% standard member predicate
member(Member, [Head|TailList]) :-  
    member(Member, TailList).

append([], List, List).             %% standard append predicate
append([Head|TailofList1], List2, [Head|TailofList3]) :- 
    append(TailofList1, List2, TailofList3).

firstN(N, List, FirstN) :-      %%  gets first N items from List
    append(FirstN, _, List),    %%  and puts them in FirstN
    length(FirstN, N).

lastN(N, List, LastN) :-         %% gets list N items from List
    append(_, LastN, List),      %% and puts them in LastN
    length(LastN, N).

front(Item,List) :- firstN(1,List,[Item|_]).
last(Item,List) :- lastN(1,List,[Item|_]).

delete(Item, OldList, NewList) :-        %% deletes Item from OldList 
    append(Something, [Item|Tail], OldList),
    append(Something, Tail, NewList).       

permutation_of([],[]).                   % permutes a list
permutation_of([PermHead|PermTail], List) :- 
    delete(PermHead, List, NewList),
    permutation_of(PermTail, NewList).

/*          similar to call but kall accepts a list of goals.              */
kall([]).
kall([H|T]) :-
    call(H),
    kall(T), !, true.
kall([H|T]) :-
    fail.

/*  forall the conditions on Alist,  then Clist where clauses in Alist and  */
/*  Clist have free variables.                                              */
/*  i.e.                                                                    */
/*             forall([X < 5, Y < 5, X \== Y], [Z is X + Y, Z = 4])        */



forall(Alist, Clist) :-
    append(Alist, [notl(Clist)], NewList), !,
    notl(NewList).
forall(Alist, Clist).

/*        like not but negates a list of predicates              */
notl([]).
notl([H|T]) :- 
    kall([H|T]), !,
    fail.
notl([H|T]).













