%! create(+DimTuple)
%
% The create/1 predicate succeeds if the DimTuple contains valid chessboard 
% dimensions, e.g. (0,0) or (2,4).


%! attack(+FromTuple, +ToTuple)
%
% The attack/2 predicate succeeds if a queen positioned on ToTuple is 
% vulnerable to an attack by another queen positioned on FromTuple.


:- use_module(library(clpfd)).

create((DimX, DimX)) :- DimX > 0 .
attack((FromX, FromY), (ToX, ToY)) :- fail.

attack((X1, Y1), (X2, Y2)) :- X1 =:= X2.
attack((X1, Y1), (X2, Y2)) :- Y1 =:= Y2.
attack((X1, Y1), (X2, Y2)) :- abs(Y1-Y2) =:= abs(X1-X2).
