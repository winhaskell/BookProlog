nim :- next_turn(12), !.
 
next_turn(N) :-
	% Player Turn
	format('How many dots would you like to take? '),
	read_line_to_codes(user_input, Line),
	number_codes(PlayerGuess, Line),
	member(PlayerGuess,[1,2,3]),
	N1 is N - PlayerGuess,
	format('You take ~d dots~n~d dots remaining.~n~n', [PlayerGuess, N1]),
  
	% Computer Turn
	CompGuess is 4 - PlayerGuess,
	N2 is N1 - CompGuess,
	format('Computer takes ~d dots~n~d dots remaining.~n~n', [CompGuess, N2]),
	(
		N2 = 0 
		-> format('Computer wins!')
		; next_turn(N2)
	).




?- nim.
How many dots would you like to take? 2
You take 2 dots
10 dots remaining.

Computer takes 2 dots
8 dots remaining.

How many dots would you like to take? 2
You take 2 dots
6 dots remaining.

Computer takes 2 dots
4 dots remaining.

How many dots would you like to take? 3
You take 3 dots
1 dots remaining.

Computer takes 1 dots
0 dots remaining.

Computer wins!
true.














