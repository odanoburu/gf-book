interface LexSong = open Syntax in {
  oper
    stop_V     : V  ;
    pause_V    : V  ;
    play_V2    : V2 ;
    remove_V2  : V2 ;
    next_A     : A  ;
    previous_A : A  ;
    song_N     : N  ;
    artist_N   : N  ;
    album_N    : N  ;
}