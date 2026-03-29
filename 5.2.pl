sign_changes([], 0).
sign_changes([_], 0).

sign_changes([X, Y | T], Count) :-
    sign_changes([Y | T], Count1),
    (
        X * Y < 0 -> Count is Count1 + 1
        ; Count is Count1
    ).

go :-
    write('Enter a list (for example [1,-2,3,-4].): '), flush_output,
    read(List),
    sign_changes(List, Count),
    format('Number of sign changes: ~w~n', [Count]).

:- go.