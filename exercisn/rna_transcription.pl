
/*
rna_transcription(Dna, Rna).
unifica si RNA es la transcripcion de DNA
*/

rna_aux('G', 'C').
rna_aux('C', 'G').
rna_aux('T', 'A').
rna_aux('A', 'U').

rna_transcription("", "").

rna_transcription(Dna, Rna) :-
    string_chars(Dna, DnaList),        
    transcribe_list(DnaList, RnaList), 
    string_chars(Rna, RnaList).        

transcribe_list([], []).

transcribe_list([Cab|Resto], [X|Res]) :-
    rna_aux(Cab, X),
    transcribe_list(Resto, Res).
