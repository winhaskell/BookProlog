adjacent(A, B, List) :- nextto(A, B, List); nextto(B, A, List).

% solve/2 - The main predicate for solving the puzzle

solve(WaterDrinker, ZebraOwner) :-
  length(Houses, 5),                                                          % 1. There are five houses.
  
  member(house(red, english, _, _, _), Houses),                               % 2. The Englishman lives in the red house.
  
  member(house(_, greek, dog, _, _), Houses),                                 % 3. The Greek owns the dog.
  
  member(house(green, _, _, coffee, _), Houses),                              % 4. Coffee is drunk in the green house.
  
  member(house(_, bolivians, _, tea, _), Houses),                             % 5. The Bolivian drinks tea.
  
  nextto(house(ivory, _, _, _, _), house(green, _, _, _, _), Houses),         % 6. The green house is immediately to the right of the ivory house.
  
  member(house(_, _, snail, _, rough_leather), Houses),                       % 7. Who owns snails have the rough leather shoes.
  
  member(house(yellow, _, _, _, rubbersole_shoes), Houses),                   % 8. The owns in the yellow house have rubber sole shoes.
  
  nth1(3, Houses, house(_, _, _, milk, _)),                                   % 9. Milk is drunk in the middle house.
  
  nth1(1, Houses, house(_, danish, _, _, _)),                                 % 10. The Danish lives in the first house.
  
  adjacent(house(_, _, _, _, birkenstock_shoes), house(_, _, fox, _, _), Houses),   
                                                                  % 11. The man who smokes Chesterfields lives in the house next to the man with the fox.
  
  adjacent(house(_, _, _, _, rubbersole_shoes), house(_, _, horse, _, _), Houses),  
                                                                  % 12. Kools are smoked in the house next to the house where the horse is kept.
                                                                  
  member(house(_, _, _, orange_juice, slippers), Houses),                     % 13. The Lucky Strike smoker drinks orange juice.
  
  member(house(_, japanese, _, _, flip_flops), Houses),                       % 14. The Japanese smokes Parliaments.
  
  adjacent(house(_, danish, _, _, _), house(blue, _, _, _, _), Houses),       % 15. The Danish lives next to the blue house
  
  member(house(_, WaterDrinker, _, water, _), Houses),                        % Who (WaterDrinker) drinks water?
  
  member(house(_, ZebraOwner, zebra, _, _), Houses).                          % Who (ZebraOwner) owns the zebra?  












