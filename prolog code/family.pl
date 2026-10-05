% ---------- Gender Facts ----------

male(george).
male(john).
male(paul).
male(tom).
male(alex).
male(bob).

female(mary).
female(linda).
female(susan).
female(jane).


% ---------- Parent Facts ----------

parent(george, john).
parent(george, linda).

parent(john, paul).
parent(john, mary).

parent(mary, tom).
parent(mary, susan).

parent(paul, alex).
parent(paul, jane).

parent(linda, bob).


% ---------- Father and Mother ----------

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).


% ---------- Sibling ----------

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.


% ---------- Brother and Sister ----------

brother(X, Y) :-
    sibling(X, Y),
    male(X).

sister(X, Y) :-
    sibling(X, Y),
    female(X).


% ---------- Grandparent ----------

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).


% ---------- Uncle and Aunt ----------

uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

aunt(X, Y) :-
    sister(X, Z),
    parent(Z, Y).


% ---------- Cousin ----------

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.


% ---------- Granddaughter ----------

granddaughter(X, Y) :-
    grandparent(X, Y),
    female(Y).