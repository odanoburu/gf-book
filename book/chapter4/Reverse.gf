abstract Reverse = Letters ** {
  flags
    startcat = Sent ;
  cat
    Sent ;
  fun
    scons : Sent -> L -> Sent ;
    mksent : L -> Sent ;
}

-- ps -chars "abcdefghi" | p -lang=Unr | l -lang=Rev | ps -unchars
