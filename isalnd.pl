
% Example 1
?- sat(A =:= ~A + B).
A = B, B = 1.


% Example 2
?- sat(A =:= ~A * B).
A = B, B = 0.


% Example 3
?-  sat(A =:= (~A * ~B * ~C)), sat(B =:= card([1],[A,B,C])).
A = C, C = 0,
B = 1.


% Example 4
?-  sat(A =:= ~B), sat(B =:= (A=:=C)).
C = 0,
sat(A=\=B).


% Example 5
?- sat(A =:= B ), sat(B =:= A), sat(C =:= (~A * ~B * ~C)).
A = B, B = 1,
C = 0.


% Example 6
?- sat(A =:= card([1,2],[~A,~B])).
A = 1,
B = 0.


% Example 7
?- sat(A =:= ~B),sat(B =:= ~C),sat(C =:= (~A * ~B)).
A = C, C = 0,
B = 1.









