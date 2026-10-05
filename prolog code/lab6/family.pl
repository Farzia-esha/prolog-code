% Sample family facts.
parent(john, mary).
parent(john, peter).
parent(john, lucy).
parent(mary, alice).
parent(peter, bob).
parent(lucy, carol).

% Sibling relation.
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% An uncle is a male sibling of one of the person's parents.
uncle(Uncle, Person) :-
    parent(Parent, Person),
    sibling(Uncle, Parent),
    male(Uncle).

% An aunt is a female sibling of one of the person's parents.
aunt(Aunt, Person) :-
    parent(Parent, Person),
    sibling(Aunt, Parent),
    female(Aunt).

% Gender facts.
male(peter).
male(john).
female(lucy).
female(mary).