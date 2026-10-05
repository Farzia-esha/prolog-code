sum_even([], 0).

sum_even([H|T], Sum) :-
    0 is H mod 2,
    sum_even(T, Rest),
    Sum is H + Rest.

sum_even([H|T], Sum) :-
    1 is H mod 2,
    sum_even(T, Sum).