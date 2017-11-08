resource ResPor = open Prelude in {
  param
    Number = Sg | Pl ;
    Gender = Masc | Fem ;
  oper
    NounPhrase : Type = 
      {s : Str ; g : Gender ; n : Number} ; 
    Noun : Type = {s : Number => Str ; g : Gender} ;
    Adjective : Type = {s : Gender => Number => Str} ;

    det : Number -> Str -> Str -> Noun -> NounPhrase =
      \n,m,f,cn -> {
        s = table {Masc => m ; Fem => f} ! cn.g ++ 
            cn.s ! n ;
        g = cn.g ;
        n = n
      } ;
    noun : Str -> Str -> Gender -> Noun =
      \joao,jooes,g -> {
        s = table {Sg => joao ; Pl => jooes} ;
        g = g
      } ;
    regGenNoun : Str -> Gender -> Noun =
      \vinho,g -> {
        s = table {Sg => vinho ; Pl => vinho + "s"} ;
        g = g
      } ;
    adjective : (preto,preta,pretos,pretas : Str) -> Adjective =
      \preto,preta,pretos,pretas -> {
        s = table {
          Masc => table {Sg => preto ; Pl => pretos} ; 
          Fem => table {Sg => preta ; Pl => pretas}
          }
      } ;
    adjGen : Str -> Adjective = \quente ->
      adjective quente quente (quente + "s") (quente + "s") ;
    regAdj : Str -> Adjective = \preto ->
      let pret : Str = init preto
      in 
      adjective preto (pret+"a") (pret+"os") (pret+"as") ;
    copula : Number => Str = 
      table {Sg => "é" ; Pl => "são"} ;
}
