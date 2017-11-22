--# -path=.:./../../../gf-pt:present
concrete FoodsPor of Foods = FoodsI with
  (Syntax = SyntaxPor),
  (LexFoods = LexFoodsPor)  ** open SyntaxPor, ParadigmsPor in {
  oper
    i_like : NP -> Cl ;
    i_like it = mkCl i_NP (mkV2 (mkV "gostar") (mkPrep "de")) it ;
};
