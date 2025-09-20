% leap/1
% True if Year is a leap year

leap(Year) :-
    0 is Year mod 400, !.        % Divisible by 400 → leap year

leap(Year) :-
    0 is Year mod 100, !,        % Divisible by 100 (but not 400) → not leap year
    fail.

leap(Year) :-
    0 is Year mod 4.             % Divisible by 4 (but not 100) → leap year
