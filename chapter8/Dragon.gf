concrete Dragon of Graftal = {
  lincat
    N = {x : Str; y : Str} ;
    S = {s : Str} ;
  lin
    z = {x = ""; y = ""} ;
    s x = {x = x.x ++ R ++ x.y ++ F ++ R; y = L ++ F ++ x.x ++ L ++ x.y} ;
    c x = {s = "newpath 300 550 moveto" ++ F ++ x.x ++ "stroke showpage"} ;
  oper
    F : Str = "0 5 rlineto" ;
    L : Str = "+90 rotate" ;
    R : Str = "-90 rotate" ;
};
