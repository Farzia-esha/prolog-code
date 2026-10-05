% Empty and one-element lists are sorted.
sorted([]).
sorted([_]).

% Check each pair of consecutive elements.
sorted([A,B|T]) :-
    A =< B,
    sorted([B|T]).
