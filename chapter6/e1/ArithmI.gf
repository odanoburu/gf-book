incomplete concrete ArithmI of Arithm =
  open Syntax, Predef, Symbolic, Combinators in {
  lincat
    Prop = S ;
    Nat  = {np : NP ; n : Int} ;
  lin
    Zero = {np: symb 0 ; n : 0} ;
    Succ nat = let n' : Int = plus nat.n 1 in {np = symb n' ; n = n'} ;
    Even nat = mkS (Combinators.pred even_A nat.np) ;
    And p q = mkS and_Conj p q ;
} ;
