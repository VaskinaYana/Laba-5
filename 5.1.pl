fact(0, 1).
fact(N, F) :-
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.
	
sum_fact_odd(1, Sum) :-
    fact(1, Sum).

sum_fact_odd(N, Sum) :-
    N > 1,
    fact(N, F),
    N1 is N - 2,
    sum_fact_odd(N1, Sum1),
    Sum is Sum1 + F.

go :-
    write('Enter an odd number (for example 9.): '), flush_output,
    read(N),
    sum_fact_odd(N, Sum),
    format('Sum of factorials of odd numbers: ~w~n', [Sum]).

:- go.