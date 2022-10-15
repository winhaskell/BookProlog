grade(error, Mark) :-
    Mark >=101.
grade(distinction, Mark) :-
    Mark >= 90,
    Mark <101.
grade(good, Mark) :-
    Mark >= 75,
    Mark < 90.
grade(pass, Mark) :-
    Mark >= 60,
    Mark < 75.
grade(fail, Mark) :-
    Mark >= 0,
    Mark < 60.
grade(error, Mark) :-
    Mark < 0.



    
    
    
    
    
    
