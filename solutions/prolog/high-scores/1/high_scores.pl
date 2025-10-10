:- use_module(library(clpfd)).

latest(Scores, Latest) :- last(Scores, Latest).
    
personal_best(Scores, Best) :- max_list(Scores, Best).
    
personal_top_three(Scores, TopThree) :-
    sort(0, @>=, Scores, ScoresSorted),
    take(3, ScoresSorted, TopThree).

take(0, _, []).
take(N, [X|Xs], [X|Ys]) :-
    N1 #= N-1,
    take(N1, Xs, Ys),
    !.
take(_, [], []).