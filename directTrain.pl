directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(fahlquemont,forbach).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).
directTrain(budapest,nancy).
directTrain(vienna,budapest).
directTrain(frankfurt,vienna).
directTrain(strasbourg,frankfurt).
directTrain(paris,strasbourg).
directTrain(munich,prague).

travelFromTo(X,Y):- directTrain(X,Y).
travelFromTo(X,Y):- directTrain(Y,X).

travelFromTo(X,Y):-
    directTrain(X,Z),
    travelFromTo(Z,Y).

travelFromTo(X,Y):-
    directTrain(Y,Z),
    travelFromTo(Z,X).
    
    
    
    
    
    
    
    

directPath(X, Y) :-
    directTrain(X, Y).

directPath(X, Y) :-
    directTrain(Y, X),!.

%% base case
route(Y, Y, RevL, L) :-
    reverse(RevL, L).

%% inductive case
route(X, Y, RevL, L) :-
    directPath(X, Z),
    not(member(Z, RevL)),
    route(Z, Y, [Z | RevL], L).

%% main
route(X, Y, L) :-
    route(X, Y, [X], L).
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
