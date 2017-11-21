abstract E2 = {
  flags startcat = Comment ;
  cat
    Comment ; Item ; Kind ; Quality ;
  fun
    Pred : Item -> Quality -> Comment ;
    A, Some, Most, All : Kind -> Item ;
    Mod : Quality -> Kind -> Kind ;
    Dog, Bear, Cat, Dinosaur, Mouse : Kind ;
    Very : Quality -> Quality ;
    Dumb, Strong, Fast, 
      Lazy, Fluffy, Small : Quality ;
}
