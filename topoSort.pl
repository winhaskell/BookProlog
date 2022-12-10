graph1([[a,d],[b,d],[b,e],[c,e],[c,h],[d,f],[d,g],[d,h],[e,h]]).
 

getS(Graph,Set) :-
	getAllStarts(Graph, Starts),
	getAllEnds(Graph, Ends),
	getS(Graph, Starts, Ends, Set).


getS(_, [], _, []).

getS(Graph, [H|T], Ends, Set) :-
	not(member(H, Ends)),
	getS(Graph, T, Ends, S1),
	setAdd(H, S1, Set).


getS(Graph, [_|T], Ends, Set) :- getS(Graph, T, Ends, Set).


topoSort([],[]) :- writef("The graph is empty!").

topoSort(Graph, Answer) :-
	getS(Graph, Set),
	topoSort(Graph, Set, Answer),!.	

topoSort(_, [], []).

topoSort(Graph,	[H|T], Answer) :-
	topoSort(Graph, Graph, T, H, A1),
	setAdd(H, A1, Answer).

topoSort(Graph, [], Set, _, Answer) :-
	topoSort(Graph, Set, Answer).

topoSort(Graph, [Edge|Rest], Set, N, Answer) :-
	getStart(Edge, Start),
	equal(N, Start),
	getEnd(Edge, M),
	getAllEnds(Rest, Ends),
	not(member(M, Ends)),
	setAdd(M, Set, S1),
	reverse(S1, S2),	% keeps Set in the order that nodes were added
	topoSort(Graph, Rest, S2, N, Answer).	% Walk to next edge

topoSort(Graph, [_|Rest], Set, N, Answer) :- topoSort(Graph, Rest, Set, N, Answer).	

getAllStarts([],[]).
getAllStarts([[Start,_]|Rest], [Start|Starts]) :-
	getAllStarts(Rest, Starts).

getAllEnds([],[]).
getAllEnds([[_,End]|Rest], [End|Ends]) :-
	getAllEnds(Rest, Ends).

getStart([], []).
getStart([First, _], First).

getEnd([], []).
getEnd([_, Last], Last).

setAdd(X, Set, _) :- member(X, Set),!,fail.
setAdd(X, Set, [X|Set]).

equal(E1, E2) :- E1 = E2.








