incomplete concrete ArithmI of Arithm =
  open Syntax, Predef, Symbolic in {
  lincat
    Prop = S ;
    Nat  = {np : NP ; n : Int} ;
  lin
    Zero     = mkNat 0 ;
    Succ nat = let n' : Int = plus nat.n 1 in mkNat n' ;
    Even nat = mkProp even_A nat.np ;
    And p q  = mkS and_Conj p q ;
  oper
    mkNat  : Int -> Nat ;
    mkNat int   = lin Nat {np = symb int ; n = int} ;
    mkProp : A -> NP -> S ;
    mkProp a np = mkS (mkCl np a) ;
} ;
