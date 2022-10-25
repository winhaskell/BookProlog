address(adam, 2, mouview_hill).
address(beth, 3, mouview_hill).
address(cameron, 4, mouview_hill).
address(david, 5, mouview_hill).
address(edgar, 6, mouview_hill).
address(frank, 7, mouview_hill).
address(adama, 1, mouview_hill).
address(ppeth, 8, mouview_hill).
address(aron, 9, mouview_hill).
address(kok, 10, mouview_hill).
address(zht, 11, mouview_hill).
address(trump, 12, mouview_hill).
address(greg, 2, abcc_hill).
address(harry, 3, abcc_hill).
address(ivan, 4, abcc_hill).
address(john, 5, abcc_hill).
address(kevin, 6, abcc_hill).
address(lee, 7, abcc_hill).

neighbors(P1, P2) :-
  address(P1, N1, S), address(P2, N2, S),
  number_neighbors(N1, N2).

number_neighbors(N1, N2) :- N1 is N2 - 1.
number_neighbors(N1, N2) :- N1 is N2 + 1.













