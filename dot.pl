dot([],[],0).
dot([InHead1|InTail1],[InHead2|InTail2],Result) :-
              dot(InTail1,InTail2,ResultTails),
	      Result is (InHead1 * InHead2) + ResultTails.     
        
              
?- dot([],[],0).
true.

?- dot([56,23,41],[12,23,22],0).
false.

?- dot([66,27,99],[12,24,82],M).
M = 9558.
              
              
              
              
              
              
              
              
              
