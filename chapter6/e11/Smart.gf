abstract Smart = {
  flags
    startcat = Command ;
  cat
    Command ;
    Device Kind ; Action Class ;
    Class ; Instance Class Kind ;
    Kind ;
  fun
    Act                      : (k : Kind) -> (c : Class) -> Instance c k -> Action c -> Device k -> Command ;
    The                      : (k : Kind) -> Device k ; -- the light
    Toggle                   : Action Togglable ;
    Play                     : Action Playable ;
    Playable                 : Class ;
    Togglable                : Class ;
    PianoP                   : Instance Playable Piano ;
    LightT                   : Instance Togglable Light ;
    Light, Fan, Piano, Alarm : Kind ;
}
