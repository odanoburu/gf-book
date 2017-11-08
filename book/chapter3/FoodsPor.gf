concrete FoodsPor of Foods = open ResPor in {
  lincat
    Comment = {s : Str} ; 
    Quality = Adjective ;
    Kind = Noun ;
    Item = NounPhrase ; 
  lin
    Pred item quality = 
      {s = item.s ++ copula ! item.n ++ quality.s ! item.g ! item.n } ;
    This  = det Sg "este" "esta" ;
    That  = det Sg "esse" "essa" ;
    These = det Pl "estes" "estas" ;
    Those = det Pl "esses" "essas" ;
    Mod quality kind = 
      {s = \\n => kind.s ! n ++ quality.s ! kind.g ! n ; g = kind.g} ;
    Wine = regGenNoun "vinho" Masc ;
    Cheese = regGenNoun "queijo" Masc ;
    Fish = regGenNoun "peixe" Masc ;
    Pizza = regGenNoun "pizza" Fem ;
    Very a = {s = \\g,n => "muito" ++ a.s ! g ! n} ;
    Fresh = regAdj "fresco" ;
    Warm = adjGen "quente" ;
    Italian = regAdj "italiano" ;
    Expensive = regAdj "caro" ;
    Delicious = regAdj "delicioso" ;
    Boring = regAdj "chato" ;
}
