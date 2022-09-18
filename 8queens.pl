queens(N, Queens) :-
    length(Queens, N),
	board(Queens, Board, 0, N, _, _),
	queens(Board, 0, Queens).

board([], [], N, N, _, _).
board([_|Queens], [Col-Vars|Board], Col0, N, [_|VR], VC) :-
	Col is Col0+1,
	functor(Vars, f, N),
	constraints(N, Vars, VR, VC),
	board(Queens, Board, Col, N, VR, [_|VC]).

constraints(0, _, _, _) :- !.
constraints(N, Row, [R|Rs], [C|Cs]) :-
	arg(N, Row, R-C),
	M is N-1,
	constraints(M, Row, Rs, Cs).

queens([], _, []).
queens([C|Cs], Row0, [Col|Solution]) :-
	Row is Row0+1,
	select(Col-Vars, [C|Cs], Board),
	arg(Row, Vars, Row-Row),
	queens(Board, Row, Solution).
 
 
 
 
?- queens(8, Queens). 
Queens = [1, 5, 8, 6, 3, 7, 2, 4] ;
Queens = [1, 6, 8, 3, 7, 4, 2, 5] ;
Queens = [1, 7, 4, 6, 8, 2, 5, 3] ;
Queens = [1, 7, 5, 8, 2, 4, 6, 3] ;
Queens = [2, 4, 6, 8, 3, 1, 7, 5] ;
Queens = [2, 5, 7, 1, 3, 8, 6, 4] ;
Queens = [2, 5, 7, 4, 1, 8, 6, 3] ;
Queens = [2, 6, 1, 7, 4, 8, 3, 5] ;
Queens = [2, 6, 8, 3, 1, 4, 7, 5] ;
Queens = [2, 7, 3, 6, 8, 5, 1, 4] ;
Queens = [2, 7, 5, 8, 1, 4, 6, 3] ;
Queens = [2, 8, 6, 1, 3, 5, 7, 4] ;
Queens = [3, 1, 7, 5, 8, 2, 4, 6] ;
Queens = [3, 5, 2, 8, 1, 7, 4, 6] ;
Queens = [3, 5, 2, 8, 6, 4, 7, 1] ;
Queens = [3, 5, 7, 1, 4, 2, 8, 6] ;
Queens = [3, 5, 8, 4, 1, 7, 2, 6] ;
Queens = [3, 6, 2, 5, 8, 1, 7, 4] ;
Queens = [3, 6, 2, 7, 1, 4, 8, 5] ;
Queens = [3, 6, 2, 7, 5, 1, 8, 4] ;
Queens = [3, 6, 4, 1, 8, 5, 7, 2] ;
Queens = [3, 6, 4, 2, 8, 5, 7, 1] ;
Queens = [3, 6, 8, 1, 4, 7, 5, 2] ;
Queens = [3, 6, 8, 1, 5, 7, 2, 4] ;
Queens = [3, 6, 8, 2, 4, 1, 7, 5] ;
Queens = [3, 7, 2, 8, 5, 1, 4, 6] ;
Queens = [3, 7, 2, 8, 6, 4, 1, 5] ;
Queens = [3, 8, 4, 7, 1, 6, 2, 5] ;
Queens = [4, 1, 5, 8, 2, 7, 3, 6] ;
Queens = [4, 1, 5, 8, 6, 3, 7, 2] ;
Queens = [4, 2, 5, 8, 6, 1, 3, 7] ;
Queens = [4, 2, 7, 3, 6, 8, 1, 5] ;
Queens = [4, 2, 7, 3, 6, 8, 5, 1] ;
Queens = [4, 2, 7, 5, 1, 8, 6, 3] ;
Queens = [4, 2, 8, 5, 7, 1, 3, 6] ;
Queens = [4, 2, 8, 6, 1, 3, 5, 7] ;
Queens = [4, 6, 1, 5, 2, 8, 3, 7] ;
Queens = [4, 6, 8, 2, 7, 1, 3, 5] ;
Queens = [4, 6, 8, 3, 1, 7, 5, 2] ;
Queens = [4, 7, 1, 8, 5, 2, 6, 3] ;
Queens = [4, 7, 3, 8, 2, 5, 1, 6] ;
Queens = [4, 7, 5, 2, 6, 1, 3, 8] ;
Queens = [4, 7, 5, 3, 1, 6, 8, 2] ;
Queens = [4, 8, 1, 3, 6, 2, 7, 5] ;
Queens = [4, 8, 1, 5, 7, 2, 6, 3] ;
Queens = [4, 8, 5, 3, 1, 7, 2, 6] ;
Queens = [5, 1, 4, 6, 8, 2, 7, 3] ;
Queens = [5, 1, 8, 4, 2, 7, 3, 6] ;
Queens = [5, 1, 8, 6, 3, 7, 2, 4] ;
Queens = [5, 2, 4, 6, 8, 3, 1, 7] ;
Queens = [5, 2, 4, 7, 3, 8, 6, 1] ;
Queens = [5, 2, 6, 1, 7, 4, 8, 3] ;
Queens = [5, 2, 8, 1, 4, 7, 3, 6] ;
Queens = [5, 3, 1, 6, 8, 2, 4, 7] ;
Queens = [5, 3, 1, 7, 2, 8, 6, 4] ;
Queens = [5, 3, 8, 4, 7, 1, 6, 2] ;
Queens = [5, 7, 1, 3, 8, 6, 4, 2] ;
Queens = [5, 7, 1, 4, 2, 8, 6, 3] ;
Queens = [5, 7, 2, 4, 8, 1, 3, 6] ;
Queens = [5, 7, 2, 6, 3, 1, 4, 8] ;
Queens = [5, 7, 2, 6, 3, 1, 8, 4] ;
Queens = [5, 7, 4, 1, 3, 8, 6, 2] ;
Queens = [5, 8, 4, 1, 3, 6, 2, 7] ;
Queens = [5, 8, 4, 1, 7, 2, 6, 3] ;
Queens = [6, 1, 5, 2, 8, 3, 7, 4] ;
Queens = [6, 2, 7, 1, 3, 5, 8, 4] ;
Queens = [6, 2, 7, 1, 4, 8, 5, 3] ;
Queens = [6, 3, 1, 7, 5, 8, 2, 4] ;
Queens = [6, 3, 1, 8, 4, 2, 7, 5] ;
Queens = [6, 3, 1, 8, 5, 2, 4, 7] ;
Queens = [6, 3, 5, 7, 1, 4, 2, 8] ;
Queens = [6, 3, 5, 8, 1, 4, 2, 7] ;
Queens = [6, 3, 7, 2, 4, 8, 1, 5] ;
Queens = [6, 3, 7, 2, 8, 5, 1, 4] ;
Queens = [6, 3, 7, 4, 1, 8, 2, 5] ;
Queens = [6, 4, 1, 5, 8, 2, 7, 3] ;
Queens = [6, 4, 2, 8, 5, 7, 1, 3] ;
Queens = [6, 4, 7, 1, 3, 5, 2, 8] ;
Queens = [6, 4, 7, 1, 8, 2, 5, 3] ;
Queens = [6, 8, 2, 4, 1, 7, 5, 3] ;
Queens = [7, 1, 3, 8, 6, 4, 2, 5] ;
Queens = [7, 2, 4, 1, 8, 5, 3, 6] ;
Queens = [7, 2, 6, 3, 1, 4, 8, 5] ;
Queens = [7, 3, 1, 6, 8, 5, 2, 4] ;
Queens = [7, 3, 8, 2, 5, 1, 6, 4] ;
Queens = [7, 4, 2, 5, 8, 1, 3, 6] ;
Queens = [7, 4, 2, 8, 6, 1, 3, 5] ;
Queens = [7, 5, 3, 1, 6, 8, 2, 4] ;
Queens = [8, 2, 4, 1, 7, 5, 3, 6] ;
Queens = [8, 2, 5, 3, 1, 7, 4, 6] ;
Queens = [8, 3, 1, 6, 2, 5, 7, 4] ;
Queens = [8, 4, 1, 3, 6, 2, 7, 5] ;
false.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
