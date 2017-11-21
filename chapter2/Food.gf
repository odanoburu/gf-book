abstract Food = {
  flags startcat = Comment ;
  cat
    Comment ; Item ; Kind ; Quality ; Signal ; ComplexKind ;
  fun
    Pred : Item -> Quality -> Signal -> Comment ;
    This, That : ComplexKind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    --With : Kind -> Kind -> Kind ;
    toComplex : Kind -> ComplexKind ;
    With : Kind -> ComplexKind -> ComplexKind ;
    Wine, Cheese, Fish : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
    Pos, Neg : Signal ;
}
