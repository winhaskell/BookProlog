% Data: fruit(X) :- attributes(Y)
fruit(banana) :- colour(yellow), shape(crescent).
fruit(apple) :- (colour(green); colour(red)), shape(sphere), stem(yes).
fruit(lemon) :- colour(yellow), (shape(sphere);shape('tapered sphere')), acidic(yes).
fruit(lime) :- colour(green), shape(sphere), acidic(yes).
fruit(pear) :- colour(green), shape('tapered sphere').
fruit(plum) :- colour(purple), shape(sphere), stone(yes).
fruit(grape) :- (colour(purple);colour(green)), shape(sphere).
fruit(orange) :- colour(orange), shape(sphere).
fruit(satsuma) :- colour(orange), shape('flat sphere').
fruit(peach) :- colour(peach).
fruit(rhubarb) :- (colour(red); colour(green)), shape(stick).
fruit(cherry) :- colour(red), shape(sphere), stem(yes), stone(yes).
 
% Asks
colour(X) :- menuask(colour, X, [red, orange, yellow, green, purple, peach]).
shape(X) :- menuask(shape, X, [sphere, crescent, 'tapered sphere', 'flat sphere', stick]).
acidic(X) :- ask(acidic, X).
stem(X) :- ask(stem, X).
stone(X) :- ask(stone, X).


:- dynamic(known/3).
:- discontiguous menuask/3.
:- discontiguous ask/2.

% Remember what I've been told is correct
ask(Attr, Val) :- known(yes, Attr, Val), !.
menuask(Attr, Val, _) :- known(yes, Attr, Val), !.
% Remember what I've been told is wrong
ask(Attr, Val) :- known(_, Attr, Val), !, fail.
menuask(Attr, Val, _) :- known(_, Attr, Val), !, fail.
% Remember when I've been told an attribute has a different value
ask(Attr, Val) :- known(yes, Attr, V), V \== Val, !, fail.
menuask(Attr, Val, _) :- known(yes, Attr, V), V \== Val, !, fail.
% % I don't know this, better ask!
ask(Attr, Val) :- write(Attr:Val), write('? '),
                           read(Ans),
                           asserta(known(Ans, Attr, Val)), Ans == yes.
menuask(Attr, Val, List) :-
                            write('What is the value for '), write(Attr), write('? '), nl,
                            write(List), nl,
                            read(Ans),
                            check_val(Ans, Attr, Val, List),
                            asserta(known(yes, Attr, Ans)),
                            Ans == Val.
check_val(Ans, _, _, List) :- member(Ans, List), !.
check_val(Ans, Attr, Val, List) :-
                            write(Ans), write(' is not a known answer, please try again.'), nl,
                            menuask(Attr, Val, List).

go :- fruit(Fruit), write('The fruit is '), write(Fruit), nl.




















