% Facts
parent(john, mary).
parent(john, tom).
parent(mary, alice).
parent(tom, david).

% Rule
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).