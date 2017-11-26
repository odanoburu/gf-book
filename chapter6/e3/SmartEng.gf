concrete SmartEng of Smart = {
  lincat
    Command = {s : Str} ;
    Kind    = {s : Str} ;
    Device  = {s : Str} ;
    Action  = {s : Str} ;
  lin
    Act _ act dev = {s = act.s ++ dev.s} ;
    The k         = {s = "the" ++ k.s}   ;
    Light         = {s = "light"}        ;
    Fan           = {s = "fan"}          ;
    Piano         = {s = "piano"}        ;
    Alarm         = {s = "alarm"}        ;
    Dim           = {s = "dim"}          ;
    Rotate        = {s = "rotate"}       ;
    Play          = {s = "play"}         ;
    Raise         = {s = "raise"}        ;
}
