instance LexQueryPor of LexQuery = open SyntaxPor, ParadigmsPor in {
  oper
    even_A  = mkA "par"  ;
    odd_A   = mkA "ímpar"   ;
    prime_A = mkA "primo" ;
} ;
