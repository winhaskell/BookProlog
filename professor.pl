studies(olive, cs61400).
studies(jim, cs61800).
studies(bob, cs63700).
studies(arthur, cs65831).
studies(kate, cs18404).

teaches(juniper, cs61400).
teaches(thompson, cs18404).
teaches(thompson, cs65831).
teaches(curry, cs61800).
teaches(curry, cs63700).

professor(X,Y):-teaches(X, C), studies(Y, C).









