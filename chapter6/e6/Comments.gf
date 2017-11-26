abstract Comments = {
  flags startcat = Comment ;
  cat
    Comment ; Item Dom ; Kind Dom; Quality Dom ; Dom ;
  data
    Food  : Dom ;
    Cloth : Dom ;
  fun
    Pred           : (d : Dom) -> Item d -> Quality d -> Comment ;
    This, That,
      These, Those : (d : Dom) -> Kind d -> Item d ;
    Mod            : (d : Dom) -> Quality d -> Kind d -> Kind d ;
    Very           : (d : Dom) -> Quality d -> Quality d ;
    Italian,
      Expensive,
      Elegant      : (d : Dom) -> Quality d ;
}
