quicksort(Xs, Ys):-quicksort_1(Xs, Ys, []).
 
quicksort_1([], Ys, Ys).
quicksort_1([X|Xs], Ys, Zs):-
  partition(Xs, X, Ms, Ns),
  quicksort_1(Ns, Ws, Zs),
  quicksort_1(Ms, Ys, [X|Ws]).
 
/* partition(Ls, X, Ms, Ns) is true if the list Ms contains the elements   */
/*   of the list Ls which are less than or equal to X, and the list Ns     */
/*   contains the elements of Ls which are greater than X.                 */
partition([K|L], X, M, [K|N]):-
  X < K, !,
  partition(L, X, M, N).
partition([K|L], X, [K|M], N):-
  partition(L, X, M, N).
partition([], _, [], []).











