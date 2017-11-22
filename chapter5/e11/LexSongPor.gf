--# -path=.:./../../../gf-pt:present
instance LexSongPor of LexSong = open SyntaxPor, ParadigmsPor in {
  oper
    stop_V     = mkV "parar"             ;
    pause_V    = mkV "pausar"            ;
    play_V2    = mkV2 "tocar"            ;
    remove_V2  = mkV2 "remover"          ;
    next_A     = mkA "próximo"           ;
    previous_A = mkA "anterior"          ;
    song_N     = mkN "música"            ;
    artist_N   = mkN "artista" masculine ;
    album_N    = mkN "álbum"             ;
}
