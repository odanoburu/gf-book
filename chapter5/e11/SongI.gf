incomplete concrete SongI of Song = open Syntax, LexSong in {
  lincat
    Command    = Utt ;
    Action     = V   ;
    Subcommand = V2  ;
    Argument   = NP  ;
    Object     = N   ;
  lin
    Call scomm arg = mkUtt (mkImp scomm arg)            ;
    Act action     = mkUtt (mkImp action)               ;
    This obj       = mkNP this_Det obj                  ;
    Next obj       = mkNP the_Det (mkCN next_A obj)     ;
    Prev obj       = mkNP the_Det (mkCN previous_A obj) ;
    Stop           = stop_V                             ;
    Pause          = pause_V                            ;
    Play           = play_V2                            ;
    Remove         = remove_V2                          ;
    Song           = song_N                             ;
    Artist         = artist_N                           ;
    Album          = album_N                            ;
}
