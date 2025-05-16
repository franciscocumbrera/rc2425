/*

g([a,b,c,d]), [a(a,b), a(a,c), a(c,d), a(c,b)]).

      Ini -- Arista -- Temporal ---- Camino --- Fin

Formas de representar el camino
1.- Lista de vertices
2.- Lista de aristas


Casos más sencillos
1.- Ini = Fin
2.- Existe una arista entre Ini y Fin

 Inducción 

1) P(n0)
       1.a) camino(Grafo, Ini, Ini,  ).
       1.b) camino(Grafo, Ini, Fin,  ) :- existe(Ini, Fin, Grafo).


1. Camino: Grafo No Dirigido
          Lista de vertices, 
          Vertices Visitado, 
          n0 -> Ini = Fin
            camino(g(Vertices, Aristas), Ini, Fin, Visitados, Camino)

            camino(_, Ini, Ini, _, [Ini]).
            camino(g(Vertices, Aristas), Ini, Fin, Visitados,  [Ini|Camino]) :- conectado(g(Vertices, Aristas), Ini , TMP), camino(g(Vertices, Aristas), TMP, Fin, [TMP|Visitados], Camino)


            conectado(g(_, Aristas), Ini, Fin) :- member(a(Ini,Fin), Aristas).

*/
