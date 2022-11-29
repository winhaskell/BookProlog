btInsert(E, nil, bt(E, nil, nil)).
btInsert(E, bt(E, L, R), bt(E, L, R)).
btInsert(E, bt(E1, L, R), bt(E1, L1, R)) :- btInsert(E, L, L1), E < E1.
btInsert(E, bt(E1, L, R), bt(E1, L, R1)) :- btInsert(E, R, R1), E > E1.









