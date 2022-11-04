/* pq.pl -- priority queue */

empty_pq([]).
member_pq(E,Q) :- member(E,Q).

dequeue(E,[E|T],T).
dequeue(E,[E|T],_).   /* peek */

insert_pq(State,[],[State]).
insert_pq(State,[H|Tail],[State,H|Tail]) :-
	precedes(State,H).
insert_pq(State,[H|T],[H|Tnew]) :-
	insert_pq(State,T,Tnew).

insert_list_pq([],L,L).
insert_list_pq([State|Tail],L,New_L) :-
	insert_pq(State,L,L2),
	insert_list_pq(Tail,L2,New_L).

/*  precedes(X,Y) :- X < Y.  */









