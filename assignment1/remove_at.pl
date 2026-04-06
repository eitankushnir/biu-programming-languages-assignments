% the result of removing any element from any index in an empty list is an empty list.
remove_at(_, [], _, []).

% removing the first element is easy
remove_at(H, [H|T], 1, T).

% if N is bigger than 1 we remove the N'th - 1 element from the tail, plus and prepend the head to the result of that.
remove_at(X, [H|T], N, [H|R]) :- 
  N > 1,
  N1 is N - 1,
  remove_at(X, T, N1, R).
