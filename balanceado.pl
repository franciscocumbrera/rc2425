

/*
crea_ab(Lista, ArbolBinario)
  es cierto si ArbolBinario unifica con un arbol binario balanceado que contene todas las etiquetas de Lista

*/

crea_ab([], nil).
crea_ab([Cab|_], a(Cab,A1,A2)) :-
length(Lista, L),
Med is L div 2,
length(L1, Med),
apppend(L1, L2, Lista),
crea_ab(L1, A1),
crea_ab(L2, A2).


 /*
balanceado(Arbol)
  es cierto si <<para todo nodo>> de Arbol la diferencia entre la altura del sub arbol izquierda y la altura del sub arbol derecho

*/

balanceado(nil).
balanceado(a(_,Izq, Der)) :- altura(Izq,AltIzq), altura(Der,AltDer), abs(AltIzq-AltDer) =< 1, balanceado(Izq), balanceado(Der).


/*
altura(ArbolBinario, Alt)
   es cierto si Alt unifica con la altura del ArbolBinario.

*/

altura(nil, 0).
altura(a(_, Izq, Der), Alt) :- altura(Izq, AltIzq), altura(Der, AltDer), Alt is max(AltIzq, AltDer) + 1.
