% Letter values
letter_value('A', 1).  letter_value('E', 1).  letter_value('I', 1).
letter_value('O', 1).  letter_value('U', 1).  letter_value('L', 1).
letter_value('N', 1).  letter_value('R', 1).  letter_value('S', 1).
letter_value('T', 1).

letter_value('D', 2).  letter_value('G', 2).

letter_value('B', 3).  letter_value('C', 3).  letter_value('M', 3).
letter_value('P', 3).

letter_value('F', 4).  letter_value('H', 4).  letter_value('V', 4).
letter_value('W', 4).  letter_value('Y', 4).

letter_value('K', 5).

letter_value('J', 8).  letter_value('X', 8).

letter_value('Q', 10). letter_value('Z', 10).

% Main predicate: compute the scrabble score of a word
score(Word, Score) :-
    string_upper(Word, Upper),                  % Convert to uppercase
    string_chars(Upper, Letters),               % Break into list of chars
    maplist(letter_value, Letters, Values),     % Convert each letter to value
    sum_list(Values, Score).                    % Sum all values
