/*
 my_append(?Lista1, ?Lista2, ?Result)
 	es cierto si Result unifica con una Lista que contiene los elementos de List1 seguidos de los elementos 
    de List2 en el mismo orden.
    
Principio de Inducción
1) P(n0)
2) para todo n > n0, P(n-1) -> P(n2)

*/

my_append([], Lista2, Lista2).
my_append([Cab|Resto], Lista2, [Cab|R]):- my_append(Resto, Lista2, R).
