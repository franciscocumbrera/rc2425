/*
rna_transcription(Dna, Rna).
*/

rna_aux("G","C").
rna_aux("C","G").
rna_aux("T","A").
rna_aux("A","U").
rna_transcription(Dna, Rna) :- rna_aux(Dna, Rna).
