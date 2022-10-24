use_module(library(clpfd)).

zebra_puzzle(Pairs, Water, Zebra, Vs) :-
    Table   = [Houses,Nations,Drinks,Smokes,Animals],
    Houses  = [Red,Green,Yellow,Blue,Ivory],
    Nations = [England,Spain,Ukraine,Norway,Japan],
    Names   = [england,spain,ukraine,norway,japan],
    Drinks  = [Coffee,Milk,OrangeJuice,Tea,Water],
    Smokes  = [OldGold,Kools,Chesterfield,LuckyStrike,Parliaments],
    Animals = [Dog,Snails,Horse,Fox,Zebra],
    pairs_keys_values(Pairs, Nations, Names),
    maplist(all_distinct, Table),
    append(Table, Vs),
    Vs ins 1..5,
    England #= Red,               % hint 2
    Spain #= Dog,                 % hint 3
    Coffee #= Green,              % hint 4
    Ukraine #= Tea,               % hint 5
    Green #= Ivory + 1,           % hint 6
    OldGold #= Snails,            % hint 7
    Kools #= Yellow,              % hint 8
    Milk #= 3,                    % hint 9
    Norway #= 1,                  % hint 10
    next_to(Chesterfield, Fox),   % hint 11
    next_to(Kools, Horse),        % hint 12
    LuckyStrike #= OrangeJuice,   % hint 13
    Japan #= Parliaments,         % hint 14
    next_to(Norway, Blue).        % hint 15

next_to(H, N) :- abs(H-N) #= 1.









