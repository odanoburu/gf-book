concrete E5conc of E5 = {
  lincat
    Sent = {a,b,c : Str} ;
    FS = Str ;
  lin
    Empty = {a,b,c = []} ;
    Iter s = {a = "a" ++ s.a; b = "b" ++ s.b ; c = "c" ++ s.c} ;
    Print s = s.a ++ s.b ++ s.c ;
}
