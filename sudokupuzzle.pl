sudoku(Rows) :-
        length(Rows, 9), maplist(same_length(Rows), Rows),
        append(Rows, Vs), Vs ins 1..9,
        maplist(all_distinct, Rows),
        transpose(Rows, Columns),
        maplist(all_distinct, Columns),
        Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is],
        blocks(As, Bs, Cs),
        blocks(Ds, Es, Fs),
        blocks(Gs, Hs, Is).

blocks([], [], []).
blocks([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
        all_distinct([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
        blocks(Ns1, Ns2, Ns3).

problem(1, [[2,_,_,_,_,_,6,_,4],
            [_,_,9,_,4,6,5,_,_],
            [_,_,_,_,3,1,9,_,_],
            [_,_,2,3,_,5,4,7,8],
            [_,_,_,1,8,_,2,_,_],
            [_,9,_,4,6,_,_,_,_],
            [8,3,_,6,_,_,7,5,2],
            [5,_,_,_,_,4,3,9,6],
            [9,_,7,_,2,_,_,_,_]]).





?- problem(1, Rows), sudoku(Rows), maplist(portray_clause, Rows).
[2, 7, 3, 9, 5, 8, 6, 1, 4].
[1, 8, 9, 7, 4, 6, 5, 2, 3].
[4, 5, 6, 2, 3, 1, 9, 8, 7].
[6, 1, 2, 3, 9, 5, 4, 7, 8].
[3, 4, 5, 1, 8, 7, 2, 6, 9].
[7, 9, 8, 4, 6, 2, 1, 3, 5].
[8, 3, 4, 6, 1, 9, 7, 5, 2].
[5, 2, 1, 8, 7, 4, 3, 9, 6].
[9, 6, 7, 5, 2, 3, 8, 4, 1].
Rows = [[2, 7, 3, 9, 5, 8, 6, 1|...], [1, 8, 9, 7, 4, 6, 5|...], [4, 5, 6, 2, 3, 1|...], 
[6, 1, 2, 3, 9|...], [3, 4, 5, 1|...], [7, 9, 8|...], [8, 3|...], [5|...], [...|...]].







