coins(S):- possible([S,Q,D,N,P]),
           write('Sum='),write(S),tab(3),	
           write('Q='),write(Q),tab(3),
           write('D='),write(D),tab(3),
           write('N='),write(N),tab(3),
           write('P='),write(P),tab(3).

possible([S,Q,D,N,P]):-  
		between(0,4,P),
		between(0,19,N),
		between(0,9,D),
		between(0,4,Q),
        S is Q * 25 + D * 10 + N * 5 + P.

start:- write('Transform in coins. What sum?'),read(S),coins(S),yes_or_no.

yes_or_no:-write('Continue(y/n)? '),read(X),(X=n; X=no; X=nu; X=q ).




Transform in coins. What sum?100.
Sum=100   Q=4   D=0   N=0   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=5   N=0   P=0   Continue(y/n)? |: y.
Sum=100   Q=3   D=2   N=1   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=7   N=1   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=4   N=2   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=9   N=2   P=0   Continue(y/n)? |: y.
Sum=100   Q=3   D=1   N=3   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=6   N=3   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=3   N=4   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=8   N=4   P=0   Continue(y/n)? |: y.
Sum=100   Q=3   D=0   N=5   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=5   N=5   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=2   N=6   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=7   N=6   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=4   N=7   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=1   N=8   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=6   N=8   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=3   N=9   P=0   Continue(y/n)? |: y.
Sum=100   Q=2   D=0   N=10   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=5   N=10   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=2   N=11   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=4   N=12   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=1   N=13   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=3   N=14   P=0   Continue(y/n)? |: y.
Sum=100   Q=1   D=0   N=15   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=2   N=16   P=0   Continue(y/n)? |: y.
Sum=100   Q=0   D=1   N=18   P=0   Continue(y/n)? |: y.




