--# -path=.:present
concrete FoodsEng of Foods = FoodsI with
  (Syntax = SyntaxEng),
  (LexFoods = LexFoodsEng) ** open SyntaxEng, ParadigmsEng in {
  oper
    i_like : NP -> Cl ;
    i_like it = mkCl i_NP (mkV2 "like") it ;
} ;