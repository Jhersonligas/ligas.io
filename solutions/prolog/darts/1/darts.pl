% score(X, Y, Score) - calculates the dart score based on coordinates (X,Y)

score(X, Y, Score) :-
    D is sqrt(X*X + Y*Y),   % Euclidean distance from origin
    (   D =< 1  -> Score = 10    % inner circle (bullseye)
    ;   D =< 5  -> Score = 5     % middle circle
    ;   D =< 10 -> Score = 1     % outer circle
    ;   Score = 0                % outside target
    ).
