love(zhangxueyou,wangfei).
love(zhangxueyou,zhouhuimin).
love(wangfei,xietinfen).
love(xietinfen,wangfei).
love(zhouhuimin,nizhen).
love(nizhen,zhouhuimin).
love(xietinfen,zhangbozhi).
love(liudehua,suhuilun).
love(liudehua,zhangtianai).
love(wanfang,liudehua).

lovers(X,Y):-love(X,Y),love(Y,X).
jealous(X,Y):- love(X,Z), love(Y,Z),X\=Y.
rival_in_love(X,Y):-love(X,Z),not(love(Z,X)),love(Z,Y).








