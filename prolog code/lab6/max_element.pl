max_list([X], X).

max_list([H|T], Max) :-
    max_list(T, TailMax),
    max_two(H, TailMax, Max).

max_two(A, B, A) :-
    A >= B.

max_two(A, B, B) :-
    A < B.