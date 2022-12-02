tree_depth( nil         , 0 ) .   
tree_depth( tree(_,L,R) , D ) :-     tree_depth(L,L1) ,   tree_depth(R,R1) ,    
                                     D is 1 + max(L1,R1)              
  .                               








