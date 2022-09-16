rainy(seattle).
rainy(rochester).
rainy(providence).
rainy(boston).
rainy(honolulu).

cold(potland).
cold(rochester).
cold(seattle).

sunny(providence).
sunny(boston).
sunny(honolulu).

wind(providence).
wind(boston).
wind(honolulu).

cloud(boston).
cloud(denver).

snowy(X) :- rainy(X), cold(X).
stormy(Y):- rainy(Y), wind(Y).




