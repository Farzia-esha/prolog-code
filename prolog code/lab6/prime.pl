is_prime(N) :-
    N > 1,
    \+ has_divisor(N, 2).

% A number has a divisor when D divides N exactly.
has_divisor(N, D) :-
    D * D =< N,
    ( N mod D =:= 0
    ; D1 is D + 1,
      has_divisor(N, D1)
    ).