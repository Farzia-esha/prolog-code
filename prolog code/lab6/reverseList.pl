reverse_list([], []).

reverse_list([H|T], Output) :-
    reverse_list(T, Rest),
    append_one(Rest, H, Output).

append_one([], X, [X]).
append_one([H|T], X, [H|R]) :-
    append_one(T, X, R).