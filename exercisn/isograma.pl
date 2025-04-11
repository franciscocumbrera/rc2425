
:- use_module(library(clpfd)).

/* 

isogram(String)
    es cierto si la cadena contiene caracteres diferentes excepto los espacios en blanco y los guiones que si se podran repetir
*/

blanco(32).
blanco(45).

quita_blancos(Lista, R) :- exclude(blanco, Lista, R).

isogram(String):- string_lower(String, Minusculas), string_chars(Minusculas, Caracteres), string_codes(Caracteres, Codigo), quita_blancos(Codigo, R2), all_distinct(R2).
