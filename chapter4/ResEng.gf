resource ResEng = open Prelude in {
  param
    Number = Sg | Pl ;
  oper
    det : Number -> Str -> 
      Noun -> NounPhrase = 
        \n,det,noun -> {s = det ++ noun.s ! n ; n = n} ;
    Noun : Type = {s : Number => Str} ;
    Adjective : Type = {s : Str} ;
    NounPhrase : Type = {s : Str ; n : Number} ;
    Sentence : Type = {s : Str} ;
    noun : Str -> Str -> Noun =
      \mouse,mice -> {
        s = table {Sg => mouse ; Pl => mice} ;
      } ;
    regNoun : Str -> Noun = 
      \car -> noun car (car + "s") ;
    adj : (good : Str) -> Adjective =
      \good -> {
        s = good
      } ;
    copula : Number => Str = 
      table {Sg => "is" ; Pl => "are"} ;
    mkSent : NounPhrase -> Adjective -> Sentence =
      \np,adj -> {
        s = np.s ++ copula ! np.n ++ adj.s
      };
    modNoun : Noun -> Adjective -> Noun =
      \noun,adj -> {
        s = \\num => adj.s ++ noun.s ! num
      } ;
}
