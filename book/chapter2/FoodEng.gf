concrete FoodEng of Food = {
  lincat
    Comment, Item, Kind, Quality, Signal, ComplexKind = Str ;
  lin
    Pred item quality signal = item ++ signal ++ quality ;
    This kind = "this" ++ kind ;
    That kind = "that" ++ kind ;
    Mod quality kind = quality ++ kind ;
    toComplex kind = kind ;
    With kind1 kind2 = kind1 ++ "with" ++ kind2 ;
    Wine = "wine" ;
    Cheese = "cheese" ;
    Fish = "fish" ;
    Very quality = "very" ++ quality ;
    Fresh = "fresh" ;
    Warm = "warm" ;
    Italian = "Italian" ;
    Expensive = "expensive" ;
    Delicious = "delicious" ;
    Boring = "boring" ;
    Pos = "is" ;
    Neg = "isn't" ;
}
