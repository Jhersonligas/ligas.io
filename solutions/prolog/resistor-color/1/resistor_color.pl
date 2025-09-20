% List of resistor colors in order (strings)
colors([
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white"
]).
% Rule to map a color (string) to its code (index in the list)
color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color).