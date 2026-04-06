% 2 and 3 are the base case.
is_prime(2).
is_prime(3).

% we check if the number is even, and if there is no divisor.
is_prime(N) :-
    N > 3,
    N mod 2 =\= 0,
    \+ has_divisor(N, 3).

% true if N is divisible by P,
has_divisor(N, P) :-
    N mod P =:= 0.

% check for all odd numbers until square root on N
has_divisor(N, P) :- 
    P * P < N, 
    NP is P + 2, 
    is_divisor(N, NP).
