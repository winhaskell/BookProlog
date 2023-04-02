/* queue.pl ADT */

empty_queue([]).

enqueue(E,[],[E]).
enqueue(E,[H|T],[H|TNew]) :-
	enqueue(E,T,TNew]).

dequeue(E,[E|T],T).
dequeue(E,[E|T],_).   /* peek */

member_queue(E,Q) :-
    member(E,Q).












