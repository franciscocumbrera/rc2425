arbol1( a(1, a(2,nil,nil), a(3,nil,nil)).
arbol2( a(

/*

cuenta_nodos(+Arbol_binario, ?Num_nodos)
es cieto cuando Num_nodos unifica con el numero de nodos del árbol Arbol_binario.

1) P(n0) -> n0 en Árboles Binarios es nil
2) n > n0, P(n-1) -> P(n)

*/
