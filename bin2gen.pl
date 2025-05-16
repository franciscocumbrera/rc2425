/*
  bin2gen(ArbolBinario, ArbolGenerico)
   es cierto si ArbolGenerico unifica con un árbol genético equivalente a ArbolBinario

  De examen
*/

bin2gen(a(Etiqueta, nil,nil), a(Etiqueta, [])).
bin2gen(a(Etiqueta, HI,nil), a(Etiqueta, [RI])) :- HI \= nil, bin2gen(HI, RI).
bin2gen(a(Etiqueta, nil,HD), a(Etiqueta, [RD])) :- HD \= nil, bin2gen(HD, RD).
bin2gen(a(Etiqueta, HI,HD), a(Etiqueta, [RI,RD])) :- bin2gen(HI,RI), bin2gen(HD,RD).
