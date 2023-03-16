adjacent( 1, 2 ).
adjacent( 1, 3 ).
adjacent( 1, 4 ).
adjacent( 1, 5 ).
adjacent( 2, 3 ).
adjacent( 2, 1 ).
adjacent( 2, 4 ).
adjacent( 3, 1 ).
adjacent( 3, 2 ).
adjacent( 3, 4 ).
adjacent( 4, 5 ).
adjacent( 4, 1 ).
adjacent( 4, 2 ).
adjacent( 4, 3 ).
adjacent( 5, 4 ).
adjacent( 5, 1 ). 

color( red ).
color( yellow ).
color( pink ).
color( purple ).

conflict( color( Node1, Color ), color( Node2, Color )) :-
       adjacent( Node1, Node2 ).

noconflict( _, [] ).
noconflict( Coloring1, [Coloring2 | Colorings] ) :-
    not( conflict( Coloring1, Coloring2 )),
        noconflict( Coloring1, Colorings ).

findcoloring( [], [] ).
findcoloring( [Node | Nodes], [Coloring | Colorings] ) :-
    findcoloring( Nodes, Colorings ),
    Coloring = color( Node, Color ),
    color( Color ),
    noconflict( Coloring, Colorings ).
    
    
    
    
    
    ?- findcoloring([1,2,3,4,5], Answer).
Answer = [color(1, purple), color(2, pink), color(3, red), color(4, yellow), color(5, red)] ;
Answer = [color(1, pink), color(2, purple), color(3, red), color(4, yellow), color(5, red)] ;
Answer = [color(1, purple), color(2, red), color(3, pink), color(4, yellow), color(5, red)] ;
Answer = [color(1, pink), color(2, red), color(3, purple), color(4, yellow), color(5, red)] ;
Answer = [color(1, purple), color(2, yellow), color(3, red), color(4, pink), color(5, red)] ;
Answer = [color(1, yellow), color(2, purple), color(3, red), color(4, pink), color(5, red)] ;
Answer = [color(1, purple), color(2, red), color(3, yellow), color(4, pink), color(5, red)] ;
Answer = [color(1, yellow), color(2, red), color(3, purple), color(4, pink), color(5, red)] ;
Answer = [color(1, pink), color(2, yellow), color(3, red), color(4, purple), color(5, red)] ;
Answer = [color(1, yellow), color(2, pink), color(3, red), color(4, purple), color(5, red)] ;
Answer = [color(1, pink), color(2, red), color(3, yellow), color(4, purple), color(5, red)] ;
Answer = [color(1, yellow), color(2, red), color(3, pink), color(4, purple), color(5, red)] ;
Answer = [color(1, purple), color(2, pink), color(3, yellow), color(4, red), color(5, yellow)] ;
Answer = [color(1, pink), color(2, purple), color(3, yellow), color(4, red), color(5, yellow)] ;
Answer = [color(1, purple), color(2, yellow), color(3, pink), color(4, red), color(5, yellow)] ;
Answer = [color(1, pink), color(2, yellow), color(3, purple), color(4, red), color(5, yellow)] ;
Answer = [color(1, purple), color(2, yellow), color(3, red), color(4, pink), color(5, yellow)] ;
Answer = [color(1, purple), color(2, red), color(3, yellow), color(4, pink), color(5, yellow)] ;
Answer = [color(1, red), color(2, purple), color(3, yellow), color(4, pink), color(5, yellow)] ;
Answer = [color(1, red), color(2, yellow), color(3, purple), color(4, pink), color(5, yellow)] ;
Answer = [color(1, pink), color(2, yellow), color(3, red), color(4, purple), color(5, yellow)] ;
Answer = [color(1, pink), color(2, red), color(3, yellow), color(4, purple), color(5, yellow)] ;
Answer = [color(1, red), color(2, pink), color(3, yellow), color(4, purple), color(5, yellow)] ;
Answer = [color(1, red), color(2, yellow), color(3, pink), color(4, purple), color(5, yellow)] ;
Answer = [color(1, purple), color(2, pink), color(3, yellow), color(4, red), color(5, pink)] ;
Answer = [color(1, purple), color(2, yellow), color(3, pink), color(4, red), color(5, pink)] ;
Answer = [color(1, yellow), color(2, purple), color(3, pink), color(4, red), color(5, pink)] ;
Answer = [color(1, yellow), color(2, pink), color(3, purple), color(4, red), color(5, pink)] ;
Answer = [color(1, purple), color(2, pink), color(3, red), color(4, yellow), color(5, pink)] ;
Answer = [color(1, purple), color(2, red), color(3, pink), color(4, yellow), color(5, pink)] ;
Answer = [color(1, red), color(2, purple), color(3, pink), color(4, yellow), color(5, pink)] ;
Answer = [color(1, red), color(2, pink), color(3, purple), color(4, yellow), color(5, pink)] ;
Answer = [color(1, yellow), color(2, pink), color(3, red), color(4, purple), color(5, pink)] ;
Answer = [color(1, red), color(2, pink), color(3, yellow), color(4, purple), color(5, pink)] ;
Answer = [color(1, yellow), color(2, red), color(3, pink), color(4, purple), color(5, pink)] 




