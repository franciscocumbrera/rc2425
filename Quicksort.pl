/*
ordena_quicksort(+Lista, -ListaR).
es cierto cuando ListaR unifica con una lista con los mismos elementos de Lista, ordenados de menor a mayor.
*/


ordena_quick([],[]).

ordena_quick([Cab|Resto], R) :- divide(Cab, Resto, Men, May), ordena_quick(Men, RMen), ordena_quick(May , RMay), append(Rmen, [Cab|RMay], R).


divide(_,[],[],[]).
divide(E, [Cab|Resto], [Cab|Men], May) :- divide(E, Resto, Men, May), Cab =< E.
divide(E, [Cab|Resto], Men, [Cab|May]) :- divide(E, Resto, Men, May), Cab > E.
