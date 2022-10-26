before_in_year(X, Y, Months) :-
	nth1(Xi, Months, X),
	nth1(Yi, Months, Y),
	Xi < Yi.

print_solution([Head|Tail]) :-
	write(Head),
	nl,
	print_solution(Tail).	

solution(S) :-

	S = [[Name1, Month1, Day1],
	     [Name2, Month2, Day2],
	     [Name3, Month3, Day3],
	     [Name4, Month4, Day4],
	     [Name5, Month5, Day5]],

	% Five sisters; Abigail, Brenda, Mary, Paula, Tara	
	Girls = [abigail, brenda, mary, paula, tara],
	Girls = [Name1, Name2, Name3, Name4, Name5],

	% All have their birthday in a different month
	Months =[february, march, june, july, december],
	permutation(Months, [Month1, Month2, Month3, Month4, Month5]),

	% and each of a different day of the week.	
	Days = 	[sunday, monday, wednesday, friday, saturday],
	permutation(Days, [Day1, Day2, Day3, Day4, Day5]),

	% Paula was born in March but not on Saturday.	
	member([paula, march, Day4], S), Day4 \= saturday,
	
	% Abigail's birthday was not on Friday or Wednesday.	
	Day1 \= friday, Day1 \= wednesday,

	% The girl whose birthday is on Monday was born
	% earlier in the year than Brenda and Mary.
	member([_, C1, monday], S),
	member([brenda, Month2, Day2], S), before_in_year(C1, Month2, Months),
	member([mary, Month3, _], S), before_in_year(C1, Month3, Months),

	% Tara wasn't born in February, and 
	% her birthday was on the weekend.
	member([tara, Month5, Day5], S), Month5 \= february, (Day5 = saturday ; Day5 = sunday),

	% Mary was not born in December nor was her
	% birthday on a weekday.
	member([mary, Month3, Day3], S), Month3 \= december, (Day3 = saturday ; Day3 = sunday),

	% The girl whose birthday was in June was 
	% born on Sunday.
	member([_, june, sunday], S),

	% Tara was born before Brenda, whose birthday
	% wasn't on Friday.
	member([brenda, Month2, Day2], S), Day2 \= friday,
	member([tara, Month5, _], S), before_in_year(Month5, Month2, Months),

	Day2 \== friday,

	% Mary wasn't born in July.
	Month3 \== july,

	print_solution(S).







	
