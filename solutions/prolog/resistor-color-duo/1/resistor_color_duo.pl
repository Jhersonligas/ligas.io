% resistor_color_duo.pl

% Map string -> digit
color_digit("black", 0).
color_digit("brown", 1).
color_digit("red", 2).
color_digit("orange", 3).
color_digit("yellow", 4).
color_digit("green", 5).
color_digit("blue", 6).
color_digit("violet", 7).
color_digit("grey", 8).
color_digit("white", 9).

% Take only the first two strings
value([C1, C2 | _], Value) :-
    color_digit(C1, D1),
    color_digit(C2, D2),
    Value is D1 * 10 + D2.
