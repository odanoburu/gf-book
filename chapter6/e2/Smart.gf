abstract Smart = {
  flags
    startcat = Command ;
  cat
    Command ; Kind ; Device Kind ; Action Kind ;
  fun
    Act : (k : Kind) -> Action k -> Device k -> Command ;
    The : (k : Kind) -> Device k ; -- the light
    Light, Fan : Kind ;
    Dim : Action Light ;
}
