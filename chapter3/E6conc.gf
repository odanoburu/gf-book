concrete E6conc of E6 = {
  lincat
    Sent = {a,b,c,d : Str} ;
    FS = Str ;
  lin
    Empty = {a,b,c,d = []} ;
    IterM s = {a = "a" ++ s.a ; b = s.b ; c = "c" ++ s.c ; d = s.d} ;
    IterN s = {a = s.a ; b = "b" ++ s.b ; c = s.c ; d = "d" ++ s.d} ;
    Print s = s.a ++ s.b ++ s.c ++ s.d ;
}
