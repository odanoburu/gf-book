incomplete concrete ArithmI of Arithm =
  open Syntax, Predef, Symbolic, Combinators in {
  lincat
    Prop = S ;
    Nat  = Int ;
  lin
    Zero = 0 ;
    Succ n = plus n 1 ;
    Even n = mkS (pred even_A (symb n)) ;
    And p q = mkS and_Conj p q ;
} ;
