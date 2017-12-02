incomplete concrete QueryI of Query =
  open Syntax, Symbolic in {
  lincat
    Answer   = Text ;
    Question = Text ;
    Object   = NP   ;
  lin
    Even obj  = mkQuestion obj even_A  ;
    Odd  obj  = mkQuestion obj odd_A   ;
    Prime obj = mkQuestion obj prime_A ;
    Number n  = symb n                 ;
    Yes       = mkAnswer yes_Utt       ;
    No        = mkAnswer no_Utt        ;
  oper
    mkQuestion : NP -> A -> Text ;
    mkQuestion obj a = mkText (mkQS (mkQCl (mkCl obj a))) ;
    mkAnswer : Utt -> Text ;
    mkAnswer ans = mkText ans fullStopPunct ;
} ;