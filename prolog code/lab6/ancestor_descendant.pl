% Sample family facts.
parent(john, mary).
parent(john, peter).
parent(mary, alice).
parent(mary, david).
parent(peter, sophia).

% Direct parent is an ancestor.
ancestor(X, Y) :-
    parent(X, Y).

% If X is a parent of Z and Z is an ancestor of Y,
% then X is also an ancestor of Y.
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% Descendant is the reverse relation of ancestor.
descendant(X, Y) :-
    ancestor(Y, X).