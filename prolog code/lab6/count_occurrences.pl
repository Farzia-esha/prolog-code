
% Empty list: element occurs 0 times.
count_elem([], _, 0).

% Head is the element being counted.
count_elem([H|T], H, Count) :-
    count_elem(T, H, Rest),
    Count is Rest + 1.

% Head is different from the element being counted.
count_elem([H|T], Elem, Count) :-
    H \= Elem,
    count_elem(T, Elem, Count).