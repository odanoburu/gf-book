concrete FoodPor of Food = {
  lincat
    Comment, Item, Kind, Quality, Signal = Str ;
  lin
    Pred item quality signal = item ++ signal ++ quality ;
    This kind = "Este" ++ kind ;
    That kind = "Esse" ++ kind ;
    Mod quality kind = kind ++ quality;
    With kind1 kind2 = kind1 ++ "com" ++ kind2 ;
    Wine = "vinho" ;
    Cheese = "queijo" ;
    Fish = "peixe" ;
    Very quality = "muito" ++ quality ;
    Fresh = "fresco" ;
    Warm = "quente" ;
    Italian = "italiano" ;
    Expensive = "caro" ;
    Delicious = "delicioso" ;
    Boring = "sem graça" ;
    Pos = "é" ;
    Neg = "não é" ;
}
