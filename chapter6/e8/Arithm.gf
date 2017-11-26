abstract Arithm = {
  cat
    Nat ; Less Nat Nat ; Even Nat ; Odd Nat ;
  fun
    Zero  : Nat ;
    Succ  : Nat -> Nat ;
    LessZ : (n : Nat) -> Less Zero (Succ n) ;
    LessS : (x,y : Nat) -> Less x y -> Less (Succ x) (Succ y) ;
    EvenZ : Even Zero ;
    EvenO : (n : Nat) -> Odd n  -> Even (Succ n) ;
    OddE  : (n : Nat) -> Even n -> Odd  (Succ n) ;
}
-- Arithm> gt (EvenO ? ?)