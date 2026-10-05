% Numbers evaluate to themselves.
eval(N, N) :-
    number(N).

% Addition.
eval(add(X, Y), Result) :-
    eval(X, A),
    eval(Y, B),
    Result is A + B.

% Subtraction.
eval(sub(X, Y), Result) :-
    eval(X, A),
    eval(Y, B),
    Result is A - B.

% Multiplication.
eval(mul(X, Y), Result) :-
    eval(X, A),
    eval(Y, B),
    Result is A * B.

% Division.
eval(div(X, Y), Result) :-
    eval(X, A),
    eval(Y, B),
    B =\= 0,
    Result is A / B.