instance LexQueryEng of LexQuery = open SyntaxEng, ParadigmsEng in {
  oper
    even_A  = mkA "even"  ;
    odd_A   = mkA "odd"   ;
    prime_A = mkA "prime" ;
} ;
