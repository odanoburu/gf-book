abstract Song = {
  flags
    startcat = Command ;
  cat
    Command ; Action ; Subcommand ; Argument ; Object ;
  fun
    Call                : Subcommand -> Argument -> Command ;
    Act                 : Action     -> Command             ;
    This, Next, Prev    : Object     -> Argument            ;
    Stop, Pause         : Action                            ;
    Play, Remove        : Subcommand                        ;
    Song, Artist, Album : Object                            ;
}
