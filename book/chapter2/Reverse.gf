abstract Reverse = {
  flags startcat = Sent ;
  cat Sent ; Token ;
  fun
    scons : Sent -> Token -> Sent ;
    mksent : Token -> Token -> Sent ;
    A, B, C, D, E, F, G, H, I: Token;
}

-- ps -chars "abcdefghi" | p -lang=Unr | l -lang=Rev | ps -unchars