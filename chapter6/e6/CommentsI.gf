incomplete concrete CommentsI of Comments = open Syntax in {
  lincat
    Comment = Cl ; 
    Item = NP ;
    Kind = CN ;
    Quality = AP ;
    Dom = Str ;
  lin
    Pred  _ item quality = mkCl item quality ;
    This  _ kind         = mkNP this_QuantSg kind ;
    That  _ kind         = mkNP that_QuantSg kind ;
    These _ kind         = mkNP these_QuantPl kind ;
    Those _ kind         = mkNP those_QuantPl kind ;
    Mod   _ quality kind = mkCN quality kind ;
    Very  _ quality      = mkAP very_AdA quality ;
    Food                 = [] ;
    Cloth                = [] ;
}
