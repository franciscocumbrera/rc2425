/*

preorden(ArbolBinario, ListaRecorrido).

*/

preorden(nil,[])).
preorden(a(E,HI,HD), R) :- preorden(HI, RI), preorden(HD,RD), append([E,RI], RD, R).
