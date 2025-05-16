/*

   suma_nodos(ArbolBinario, R)
      es cierto si R unifica con la suma de todas las etiquetas de ArbolBinario.

*/
suma_nodos(nil, 0).

suma_nodos(a(Etiqueta, Izq, Der), Sum) :- 
    suma_nodos(Izq, SumIzq), 
    suma_nodos(Der, SumDer), 
    Sum is SumIzq + SumDer + Etiqueta.



/*

pertenece(Elem, ArbolBinario)
    es cierto si Elem es una etiqueta de ArbolBinario

*/


pertenece(Elem, a(Elem, _, _)).
pertenece(Elem, a(_, HI, _)) :- pertenece(Elem,HI).
pertenece(Elem, a(_ ,_ ,HD)) :- pertenece(Elem, HD).
 
