
% The first element is at position 1.
nth_element(1, [H|_], H).

% For later positions, move to the tail and decrease N.
nth_element(N, [_|T], Elem) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, T, Elem).