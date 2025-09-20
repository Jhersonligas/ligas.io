% Mapping DNA -> RNA
dna_to_rna('G', 'C').
dna_to_rna('C', 'G').
dna_to_rna('T', 'A').
dna_to_rna('A', 'U').

% Main transcription predicate
rna_transcription(Dna, Rna) :-
    string_chars(Dna, DnaChars),              % DNA string -> list of chars
    maplist(dna_to_rna, DnaChars, RnaChars),  % Translate each nucleotide
    string_chars(Rna, RnaChars).              % List of chars -> RNA string
