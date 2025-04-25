:- use_module(library(clpfd)).

cell(Filas, X, Y, Cell) :- nth1(Y, Filas, Fila), nth1(X, Fila, Cell).

vida_vecino(Filas, X, Y) :- 
    between(-1, 1, Dx), 
    between(-1, 1, Dy),
    VecinoX #= X + Dx,
    VecinoY #= Y + Dy, 
    (VecinoX #\= X #\/ VecinoY #\= Y), 
    cell(Filas, VecinoX, VecinoY, 1).
    
siguiente_cell(Filas, Y, Cell, X, SiguienteCell) :- 
    findall(1, vida_vecino(Filas, X, Y), VidaVecinos),
    length(VidaVecinos, Contar), 
    (Contar #= 3; Contar #= 2, Cell = 1) -> SiguienteCell = 1; SiguienteCell = 0.
    
siguiente_fila(Filas, Y, Fila, Siguientefila) :- 
    length(Fila, Longitud), 
    numlist(1, Longitud, Xs),
    maplist(siguiente_cell(Filas, Y), Fila, Xs, Siguientefila).
    
tick([], []) :- !.
tick(Actual, Siguiente) :- 
    length(Actual, Altura), 
    numlist(1, Altura, Ys), 
    maplist(siguiente_fila(Actual), Ys, Actual, Siguiente).
