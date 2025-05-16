/*

  anchura(ArbolGenerico, Lista)
    es cierto si Lista unifica con las etiquetas de ArbolGenerico ordenadas según el recorrido de anchura del arbol.
    
    De examen
*/

anchura(a(Et, ListaHijos), [Et|R]):-
 anchura(ListaHijos, R).

anchura([], []).
anchura([a(Et, ListaHijos)|Resto], [Et|R2]):-
  append(Resto, ListaHijos, R),
  anchura(R, R2).
