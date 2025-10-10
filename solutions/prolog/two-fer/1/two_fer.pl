two_fer(Dialogue) :- two_fer("you", Dialogue).
two_fer(Name, Dialogue) :-
    atomics_to_string(["One for ", Name, ", one for me."], Dialogue).