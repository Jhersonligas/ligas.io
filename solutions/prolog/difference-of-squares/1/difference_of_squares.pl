% square_of_sum(N, Result)
% Result is (1 + 2 + ... + N)^2
square_of_sum(N, Result) :-
    S is N * (N + 1) // 2,   % sum of first N naturals
    Result is S * S.

    %EXAMPLE S = 10 * 11 // 2 = 55  -> Result = 55 * 55 = 3025 -> IF THE N=10

% sum_of_squares(N, Result)
% Result is 1^2 + 2^2 + ... + N^2
sum_of_squares(N, Result) :-
    Result is N * (N + 1) * (2*N + 1) // 6.
    
    %EXAMPLE N=10 -> Result = 10 * 11 * 21 // 6 = 385



%First compute the square of the sum (SquareSum).
%Then compute the sum of the squares (SumSquares).
%Finally subtract them.
% difference(N, Result)
% Result is square_of_sum(N) - sum_of_squares(N)
difference(N, Result) :-
    square_of_sum(N, SquareSum),
    sum_of_squares(N, SumSquares),
    Result is SquareSum - SumSquares.


%SquareSum = 3025
%SumSquares = 385
%Result = 3025 - 385 = 2640


