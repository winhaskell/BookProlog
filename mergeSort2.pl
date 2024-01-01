% 归并排序主谓
merge_sort(List, SortedList) :-
    length(List, Len),
    Len > 1,
    split(List, Left, Right),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge(SortedLeft, SortedRight, SortedList).
merge_sort(List, List).

% 列表分割
split(List, Left, Right) :-
    length(List, Len),
    HalfLen is Len // 2,
    length(Left, HalfLen),
    append(Left, Right, List).

% 合并两个有序列表
merge([], Right, Right).
merge(Left, [], Left).
merge([X|Left], [Y|Right], [X|Merged]) :-
    X =< Y,
    merge(Left, [Y|Right], Merged).
merge([X|Left], [Y|Right], [Y|Merged]) :-
    X > Y,
    merge([X|Left], Right, Merged).

% 归并排序举例
example_usage :-
    List = [5, 3, 8, 4, 2],
    merge_sort(List, SortedList),
    write('Original List: '), write(List), nl,
    write('Sorted List: '), write(SortedList).



