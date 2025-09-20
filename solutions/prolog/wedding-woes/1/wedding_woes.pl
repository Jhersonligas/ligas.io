% Define the 'chatty' fact
chatty(gustavo).
chatty(valeria).

% Define the 'likes' fact
likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% Define the 'pairing' rule
% Two people are a good pairing if:
%   - one of them is chatty, OR
%   - they like each other mutually.
pairing(X, Y) :- chatty(X).
pairing(X, Y) :- chatty(Y).
pairing(X, Y) :- likes(X, Y), likes(Y, X).

% Define the 'seating' rule
% seating(A,B,C,D,E) is true if each neighbor pair is a good pairing
% Remember: round table → last and first are also neighbors
seating(A, B, C, D, E) :-
    pairing(A, B),
    pairing(B, C),
    pairing(C, D),
    pairing(D, E),
    pairing(E, A).

%Gustavo and Valeria are always considered chatty.
%These facts describe unidirectional liking.
%Example: Esteban likes Malena, and Malena likes Esteban back. That’s mutual.
%Gustavo likes Valeria, but we don’t say Valeria likes Gustavo — so that’s one-sided.

%pairing(gustavo, jaime). → true, because Gustavo is chatty.
%pairing(esteban, malena). → true, because each one likes the other.
%pairing(gustavo, valeria). → false, because only Gustavo likes Valeria.