/* set.pl -- set data structure copied from Luger and Stubblefield */

empty_set([]).

member_set(E,S) :- member(E,S).

delete_if_in_set(E,[],[]).
delete_if_in_set(E,[E|T],T) :-!.
delete_if_in_set(E,[H|T],[H|T_new]) :-
	delete_if_in_set(E,T,T_new),!.

add_if_not_in_set(X,S,S) :-
	member(X,S),!.
add_if_not_in_set(X,S,[X|S]).

intersection([],_,[]).
intersection([H|T],S,[H|S_new]) :-
	member_set(H,S),
	intersection(T,S,S_new),!.
intersection([_|T],S,S_new) :-
	intersection(T,S,S_new),!.

union([],S,S).
union([H|T],S,S_new) :-
	union(T,S,S2),
	add_if_not_in_set(H,S2,S_new).

subset([],_).
subset([H|T],S) :-
	member_set(H,S),
	subset(T,S).

set_diff([],_,[]).
set_diff([H|T],S,T_new) :-
	member_set(H,S),
	set_diff(T,S,T_new),!.
set_diff([H|T],S,[H|T_new]) :-
	set_diff(S,T_new),!.

equal_set(S1,S2) :-
	subset(S1,S2),
	subset(S2,S1).




?- use_module(library(ordsets)).
true.


ord_intersection([[1,6],[1,4],[1,5]], I).

ord_subtract([1,2,3,4], [3,4,5,6], S).

ord_symdiff([1,2,3,4], [3,4,5,6], D).

ord_union([[1,3,4,5,6,7],[2,3,7,8,9]], U).















