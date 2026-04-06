% if the index is 1 we return the first item in the list
element_at(X, [X|_], 1).

% if N is larger then 1, we keep going recurseivly in the tail
element_at(X, [_|T], N) :-
    N > 1,
    N1 is N - 1,
    element_at(X, T, N1).
