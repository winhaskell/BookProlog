/*office program */

adminWorker(black).
adminWorker(red).
officeJunior(green).
manager(brown).
manager(grey).

supervises(X,Y) :- manager(X), adminWorker(Y).
supervises(X,Y) :- adminWorker(X), officeJunior(Y).
supervises(X,Y) :- manager(X), officeJunior(Y).











