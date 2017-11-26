abstract Arithm = {
  cat
    Nat ; Less Nat Nat ;
  fun
    Zero : Nat ;
    Succ : Nat -> Nat ;
    LessZ : (y : Nat) -> Less Zero (Succ y) ;
    LessS : (x,y : Nat) -> Less x y -> Less (Succ x) (Succ y) ;
}
