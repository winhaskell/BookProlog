% knights(N,Knights) :- 骑士是NxN棋盘上的骑士巡游 

knights(N,Knights) :- 
	M is N*N-1,  
	knights(N,M,[1/1],Knights).
  
  

% closed_knights(N,Knights) :- 骑士是在NxN棋盘上进行的骑士巡游，棋盘的起点与终点的位置相同。


closed_knights(N,Knights) :- 
	knights(N,Knights), 
	Knights = [X/Y|_], 
	jump(N,X/Y,1/1).  



% knights(N,M,Visited,Knights) :- 所访问的方格列表必须再扩展M个方格，才能解决NxN棋盘骑士的游览问题。 

knights(_,0,Knights,Knights).
knights(N,M,Visited,Knights) :-
	Visited = [X/Y|_],
	jump(N,X/Y,U/V),
	\+ memberchk(U/V,Visited),
	M1 is M-1,
	knights(N,M1,[U/V|Visited],Knights).



% 在NxN棋盘上从正方形A/B跳到C/D
jump(N,A/B,C/D) :- 
	jump_dist(X,Y), 
	C is A+X, 
	C > 0, 
	C =< N,
	D is B+Y, 
	D > 0, 
	D =< N.



% 跳跃的距离规则
jump_dist(1,2).
jump_dist(2,1).
jump_dist(2,-1).
jump_dist(1,-2).
jump_dist(-1,-2).
jump_dist(-2,-1).
jump_dist(-2,1).
jump_dist(-1,2).



% 以更人性化的方式呈现结果 ------------------------

show_knights(N) :- 
	get_time(Time), 
	convert_time(Time,Tstr),
	write('Start: '), write(Tstr), nl, nl,
	knights(N,Knights), 
	nl, 
	show(N,Knights).



show(N,Knights) :-
	get_time(Time), 
	convert_time(Time,Tstr),
	write(Tstr), nl, nl,
	length(Chessboard,N),
	Pred =.. [invlength,N],
	checklist(Pred,Chessboard),
	fill_chessboard(Knights,Chessboard,1),
	checklist(show_row,Chessboard),
	nl, fail.


invlength(N,L) :- 
	length(L,N).

show_row([]) :- 
	nl.
show_row([S|Ss]) :- 
	writef('%3r',[S]), 
	show_row(Ss). 

fill_chessboard([],_,_).
fill_chessboard([X/Y|Ks],Chessboard,K) :-
	nth1(Y,Chessboard,Row),
	nth1(X,Row,K),
	K1 is K+1,
	fill_chessboard(Ks,Chessboard,K1).






