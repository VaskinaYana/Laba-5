permute([], []).
permute(L, [H | T]) :-
    select(H, L, R),
    permute(R, T).

go :-
    permute([vitya, yura, misha], P),
    nth0(Iv, P, vitya),
    nth0(Iy, P, yura),
    nth0(Im, P, misha),
    Iy > Iv,  
    Iy < Im,   
    format('Order: ~w~n', [P]).

:- go.