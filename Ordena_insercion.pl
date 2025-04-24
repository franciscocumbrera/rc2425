%-----------------------------------------------------
% ordena_insercion(+Lista, -ListaR).
%es cierto cuando ListaR unifica con la lista que
%contiene los mismos elementos que Lista oedenados 
% de menor a mayor.
%-----------------------------------------------------

/*

1. P(n0)
2. Parar todo n > n0, P(n-1) -> P(n)
	
    	P(N):- N2 is N - 1, P(N2).
   
*/

ordena_insercion([],[]).

ordena_insercion([Cab|Resto], R2):-
    ordena_insercion(Resto, R),
    inserta_en_lista_ord(Cab, R, R2).

%------------------------------------------------------
% inserta_en_lista_ord(+Elem, +Lista, -ListaR).
% es cierto cuando ListaR unifica con una lista
% que contiene los elementos de la lista ordenada
% Lista, con el elemento E insertado de forma ordenada 
%------------------------------------------------------


inserta_en_lista_ord(E, [], [E]).
inserta_en_lista_ord(E, [Cab|Resto], [E,Cab|Resto]):- E =< Cab.
inserta_en_lista_ord(E, [Cab|Resto], [Cab|R]):- E > Cab, inserta_en_lista_ord(E, Resto , R).
