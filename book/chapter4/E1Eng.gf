concrete E1Eng of E1 = open ResEng in {
  lincat
    Comment = Sentence ;
    Quality = Adjective ;
    Kind = Noun ; 
    Item = NounPhrase ; 
  lin
    Pred item quality = mkSent item quality ;
    This  = det Sg "this" ;
    That  = det Sg "that" ;
    These = det Pl "these" ;
    Those = det Pl "those" ;
    Mod quality kind = modNoun kind quality ;
    Wine = regNoun "wine" ;
    Cheese = regNoun "cheese" ;
    Fish = noun "fish" "fish" ;
    Pizza = regNoun "pizza" ;
    Very a = {s = "very" ++ a.s} ;
    Fresh = adj "fresh" ;
    Warm = adj "warm" ;
    Italian = adj "Italian" ;
    Expensive = adj "expensive" ;
    Delicious = adj "delicious" ;
    Boring = adj "boring" ;
    }