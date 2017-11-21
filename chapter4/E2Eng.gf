concrete E2Eng of E2 = open ResEng in {
  lincat
    Comment = Sentence ;
    Item = NounPhrase ;
    Kind = Noun ;
    Quality = Adjective ;
  lin
    Pred item quality = mkSent item quality ;
    A = det Sg "A" ;
    Some = det Sg "Some" ;
    Most = det Pl "Most" ;
    All = det Pl "All" ;
    Mod quality kind = modNoun kind quality ;
    Very quality = {s = "very" ++ quality.s} ;
    Dog = regNoun "dog" ;
    Bear = regNoun "bear" ;
    Cat = regNoun "cat" ;
    Dinosaur = regNoun "dinosaur" ;
    Mouse = noun "mouse" "mice" ;
    Dumb = adj "dumb" ;
    Strong = adj "strong" ;
    Fast = adj "fast" ;
    Lazy = adj "lazy" ;
    Fluffy = adj "fluffy" ;
    Small = adj "small" ;
    }