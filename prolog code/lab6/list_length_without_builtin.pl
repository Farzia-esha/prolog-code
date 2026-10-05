% Empty list has length 0.
my_length([], 0).

% Remove one element and increase the length by 1.
my_length([_|T], N) :-
    my_length(T, N1),
    N is N1 + 1.