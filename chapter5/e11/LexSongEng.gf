instance LexSongEng of LexSong = open SyntaxEng, ParadigmsEng in {
  oper
    stop_V     = mkV "stop"     ;
    pause_V    = mkV "pause"    ;
    play_V2    = mkV2 "play"    ;
    remove_V2  = mkV2 "remove"  ;
    next_A     = mkA "next"     ;
    previous_A = mkA "previous" ;
    song_N     = mkN "song"     ;
    artist_N   = mkN "artist"   ;
    album_N    = mkN "album"    ;
}