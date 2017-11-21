instance LexFoodsPor of LexFoods = open SyntaxPor, ParadigmsPor, IrregPor in {
  oper
    wine_N = mkN "vinho" ;
    pizza_N = mkN "pizza" ;
    cheese_N = mkN "queijo" ;
    fish_N = mkN "peixe" ;
    fresh_A = mkA "fresco" ;
    warm_A = mkA "quente" ;
    italian_A = mkA "italiano" ;
    expensive_A = mkA "caro" ;
    delicious_A = mkA "delicioso" ;
    boring_A = mkA "chato" ;

}
