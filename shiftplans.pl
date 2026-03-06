available(alice, monday_morning).
available(alice, wednesday_morning).
available(alice, friday_morning).

available(bob, monday_afternoon).
available(bob, tuesday_afternoon). 
available(bob, wednesday_afternoon).
                              
available(charlie, wednesday_night).
available(charlie, thursday_night).
available(charlie, friday_night).

available(diana, monday_night).
available(diana, tuesday_night).
available(diana, thursday_morning).

% Define shifts
shift(monday_morning).
shift(monday_afternoon).
shift(monday_night).
shift(tuesday_afternoon).
shift(tuesday_night).
shift(wednesday_morning).
shift(wednesday_afternoon).
shift(wednesday_night).
shift(thursday_morning).
shift(thursday_night).
shift(friday_morning).
shift(friday_night).

schedule(Shift, Staff) :- shift(Shift), available(Staff, Shift).