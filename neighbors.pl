address(adam, 1, mouview_hill).
address(alice, 2, mouview_hill).
address(beth, 3, mouview_hill).
address(cameron, 4, mouview_hill).
address(david, 5, mouview_hill).
address(edgar, 6, mouview_hill).
address(frank, 7, washington_ave).
address(peth, 8, washington_ave).
address(aron, 9, washington_ave).
address(kok, 10, washington_ave).
address(zht, 11, washington_ave).
address(trump, 12, washington_ave).
address(greg, 2, rome_st).
address(harry, 3, rome_st).
address(ivan, 8, rome_st).
address(john, 9, rome_st).
address(kiwi, 10, rome_st).
address(lily, 10, rome_st).
address(kerry, 22, browdway).
address(alan, 23, rome_st).
address(istvan, 24, rome_st).
address(kiss, 25, rome_st).
address(olive, 100, rome_st).
address(bell, 101, rome_st).

neighbors(P1, P2) :- 
  address(P1, N1, S), address(P2, N2, S),
  number_neighbors(N1, N2).

number_neighbors(N1, N2) :- N1 is N2 - 1.
number_neighbors(N1, N2) :- N1 is N2 + 1.











