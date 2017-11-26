abstract Smart = {
  flags
    startcat = Command ;
  cat
    Command ;
    Device Kind ; Action Class ;
    Class ; Instance Class Kind ;
    Kind ;
  fun
    Act     : (k : Kind) -> Action k -> Device k -> Command ;
    The     : (k : Kind) -> Device k ; -- the light
    Toggle  : (k : Kind) -> Togglable k -> Action k ;
    Dim     : Action Light ;
    Rotate  : Action Fan ;
    Play    : Action Piano ;
    Raise   : Action Alarm ;
    t_light : Togglable Light ;
    t_fan   : Togglable Fan ;
    t_alarm : Togglable Alarm ;
    Light, Fan, Piano, Alarm : Kind ;
}
