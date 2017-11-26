concrete ActionsEng of Actions = ActionsI ** open Prelude in {
  lin
    Play      = mkAction "play" ; -- play, player, playing, playable
    Live      = mkAction "live" ;
    Eat       = mkAction "eat" ;
    Leave     = mkAction "leave" ;
    Impeach   = mkAction "impeach" ;
    Display a = mkDisplay a ;
  oper
    mkAction : Str -> {verb, person, act, quality : Str} ;
    mkAction s = {verb = s ; person = mkPerson s ; act = mkAct s ; quality = s + "able"} ;
    mkPerson : Str -> Str ;
    mkPerson s = case s of {
      _ + "e" => s + "r" ;
      _       => s + "er"
      } ;
    mkAct : Str -> Str ;
    mkAct s = case s of {
      x + "e" => x + "ing" ;
      _       => s + "ing"
      } ;
    mkDisplay : {verb, person, act, quality : Str} -> Str ;
    mkDisplay a = a.verb ++ a.person ++ a.act ++ a.quality ;
}
