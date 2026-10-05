% Sample family facts.
parent(john, mary).
parent(john, peter).
parent(john, lucy).
parent(mary, alice).
parent(peter, bob).

% Two people are siblings if they have the same parent
% and they are not the same person.
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Find all siblings of a given person.
all_siblings(Person, Siblings) :-
    findall(
        Sibling,
        sibling(Person, Sibling),
        Siblings
    ).
