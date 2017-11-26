abstract Smart = {
  flags
    startcat = Command ;
  cat
    Command ; Kind ; Device Kind ; Action Kind ;
  fun
    Act        : (k : Kind) -> Action k -> Device k -> Command ;
    The        : (k : Kind) -> Device k ; -- the light
    Light, Fan, Piano, Alarm : Kind ;
    Dim        : Action Light ;
    Rotate     : Action Fan ;
    Play       : Action Piano ;
    Raise      : Action Alarm ;
}
