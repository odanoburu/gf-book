abstract Arithm = {
  flags startcat = Prop ;
  cat
    Prop ; -- proposition
    Nat  ; -- natural number
  fun
    Zero : Nat                  ; -- 0
    Succ : Nat  -> Nat          ; -- the successor of x
    Even : Nat  -> Prop         ; -- x is even
    And  : Prop -> Prop -> Prop ; -- A and B
}
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
concrete ArithmEng of Arithm = ArithmI with
  (Syntax = SyntaxEng),
  (LexArithm = LexArithmEng) ;
interface LexArithm = open Syntax in {
  oper
    even_A   : A ;
}
instance LexArithmEng of LexArithm = open SyntaxEng, ParadigmsEng in {
  oper
    even_A = mkA "even" ;
}
