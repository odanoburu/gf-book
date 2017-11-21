resource ResVerbEng = open Prelude in {
  param
    Tense = Present | PastSimple | PastPerfect ;
  oper
    Verb : Type = Tense => Str ;
    
    mkVerb : (fall,fell,fallen : Str) -> Verb ;
    mkVerb fall fell fallen = table {
      Present => fall ;
      PastSimple => fell ;
      PastPerfect => fallen
      } ;

    twoVerb : (teach,taught : Str) -> Verb ;
    twoVerb teach taught = mkVerb teach taught taught ;

    regVerb : (love : Str) -> Verb ;
    regVerb love = let loved:Str = love + "d"
                         in mkVerb love loved loved ;
      
    mkV = overload {
      mkV : (love : Str) -> Verb = regVerb ;
      mkV : (teach,taught : Str) -> Verb = twoVerb ;
      mkV : (fall,fell,fallen : Str) -> Verb = mkVerb ;
      } ;
}