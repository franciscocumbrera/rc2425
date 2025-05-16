/*
1.- Definir el estado
2.- Definir EstadoInicial y EstadoFinal
3.- Definir los movimientos4.- Definir el Camino desde el Ei al Ef
4.- Definir el Camino desde el Ei al Ef

*/


/*   1   */

/* estado(L3,L5). */

/*   2   */

/* Ei = estado(0,0).
   Ef = estado(_,4).
*/


/*   3   */

mov(llenar_3, estado(_, L5), estado(3, L5)).
mov(llenar_5, estado(L3, _), estado(L3, 5)).
mov(vaciar_3, estado(_, L5), estado(0, L5)).
mov(vaciar_5, estado(L3, _), estado(L3, 0)).
mov(pasar_3a5, estado(L3,L5), estado(0, Sum)) :- Sum is L3 + L5, Sum =< 5.
mov(pasar_3a5, estado(L3,L5), estado(Res, 5)) :- Sum is L3 + L5, Sum > 5, Res is Sum - 5.
mov(pasar_5a3, estado(L3,L5), estado(Sum, 0)) :-  Sum is L3 + L5, Sum =< 3.
mov(pasar_5a3, estado(L3,L5), estado(3, Res)) :-  Sum is L3 + L5, Sum > 3, Res is Sum - 3.



/*   4   */

/*  camino(Ei, Ei, Visitados, Camino) .  */

camino(Ei, Ei, _, []).
camino(Ei, Ef, Visitados, [Mov|Camino]) :- mov(Mov, Ei, ETmp), \+ member(ETmp, Visitados), camino(ETmp, Ef, [ETmp|Visitados], Camino). 
