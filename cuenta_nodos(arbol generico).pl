/* Conexión Árbol con ListaHijos */
cuenta_nodos(a(_, ListaHijos, R) :- cuenta_nodos(ListaHijos, RLH), R is RLH + 1.

*/ Lista de Árboles */

cuenta_nodos([], 0).
cuenta_nodos([Cab|Resto, R) :- cuenta_nodos(Resto, RR), cuenta_nodos(Cab, RCa), R is RR + RCa.
