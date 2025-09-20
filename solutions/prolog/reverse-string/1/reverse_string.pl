% string_reverse/2
% Rule to reverse a string
string_reverse(Input, Output) :-
    string_chars(Input, Chars), % Convert string -> list of characters like Chars = ['s','t','r','e','s','s','e','d']
    reverse(Chars, RevChars),       % Reverse the list ->reverse(['s','t','r','e','s','s','e','d'], RevChars)
                                                                                       
                                                     %RevChars = ['d','e','s','s','e','r','t','s'].


                                                                                     
    string_chars(Output, RevChars). % Convert back -> string string_chars(Output, ['d','e','s','s','e','r','t','s']).
                                                      %Output = "desserts".

