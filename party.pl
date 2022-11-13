/*

  Four ladies meet each week on Thursday to play bridge.
  On each meeting they decide what everyone has to bring 
  for the next meeting.

  1. Mrs. Andrew will  bring chocolate cake.
  2. Neither Mrs. Brown, nor Vivien, nor Ann Clark will bring cookies.
  3. Rachel, which is not from Davidson's family, will bring coffee.
  4. Mary will not bring the wine.
 
  Find the whole name of each lady and what is she supposed to bring next week?

  Final = [[ Last_name, First_name, Bring]...]
  Solution proposed:
  s([[clark,ann,wine],[davidson,mary,cookie],[brown,rachel,cofee],[andrews,vivien,chocolate]]).

  Solutions found with the program:
  | ?- sol(I).
  I = [[davidson,vivien,wine],[clark,ann,cookie],[brown,rachel,cofee],[andrews,mary,chocolate]] ;
  I = [[clark,ann,wine],[davidson,vivien,cookie],[brown,rachel,cofee],[andrews,mary,chocolate]] ;
  I = [[clark,ann,wine],[davidson,mary,cookie],[brown,rachel,cofee],[andrews,vivien,chocolate]] ;
  """

  Note: In the Prolog program there where two lines which contained typos 
        (see "original line" and "fixed"). After these where fixed then 
        there is only one solution:
  [[clark,ann,wine],[davidson,mary,cookie],[brown,rachel,cofee],[andrews,vivien,chocolate]]


  This Picat model was created by Hakan Kjellerstrand, hakank@gmail.com
  http://www.hakank.org/picat/

*/


% import util.
% import cp.


main => go.


go =>
  Sols = findall(Sol, sol(Sol)),
  foreach(Sol in Sols) writeln(Sol) end,
 
  nl.

sol(Final) =>
   Final=[[_,_,wine],[_,_,cookie],[_,_,cofee],[_,_,_]],
   member([andrews,_,chocolate],Final),
   member([brown,_,Bb],Final), Bb!==cookie,
   % member([_,vivien,Bv],Final),Bb!==cookie, % original line
   member([_,vivien,Bv],Final),Bv!==cookie, % hakank: fixed line
   % member([clark,ann,Ba],Final), Bb!==cookie, % original line
   member([clark,ann,Ba],Final), Ba!==cookie, % hakank: fixed line
   member([_,mary,Bm],Final), Bm !== wine,
   member([davidson,_,_],Final), 
   member([X,rachel,cofee],Final), X !== davidson.
   
   
   
   
   
start(Final):- Final=[[_,_,wine],[_,_,cookie],[_,_,cofee],[_,_,_]],
			member([andrew,_,chocolate],Final),
			member([brown,_,Bb],Final), Bb \== cookie),
			member([_,vivien,Bv],Final),Bv \== cookie,
            member([clark,ann,Ba],Final), Ba \== cookie,
            member([_,mary,Bm],Final), Bm \== wine,
            member([davidson,_,_],Final), 
            member([X,rachel,cofee],Final), X \== davidson.
            
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
