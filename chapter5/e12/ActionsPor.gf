--# -path=.:./../../../gf-pt:present
concrete ActionsPor of Actions = ActionsI ** open Prelude in {
  lin
    Play      = mkAction "jogar" ; -- play, player, playing, playable
    Live      = mkAction "viver" ;
    Eat       = mkAction "comer" ;
    Leave     = mkAction "partir" ;
    Impeach   = mkAction "impedir" ;
    Display a = mkDisplay a ;
  oper
    mkAction : Str -> {verb, person, act, quality : Str} ;
    mkAction s = {verb = s ; person = mkPerson s ; act = mkAct s ; quality = mkQual s} ;
    mkPerson : Str -> Str ;
    mkPerson s = init s + "dor" ;
    mkAct : Str -> Str ;
    mkAct s = init s + "ndo" ;
    mkQual : Str -> Str ;
    mkQual s = case s of {
      x + "ar" => x + "ável" ;
      x + ? + "r" => x + "ível"
      };
    mkDisplay : {verb, person, act, quality : Str} -> Str ;
    mkDisplay a = a.verb ++ a.person ++ a.act ++ a.quality ;
}
