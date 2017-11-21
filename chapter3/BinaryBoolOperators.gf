abstract BinaryBoolOperators = {
  flags
    startcat = Statement ;
  cat
    Statement ; BoolV ; Operation ;
  fun
    Say : BoolV -> BoolV -> Operation -> Statement ;
    Apply : BoolV -> BoolV -> Operation -> BoolV ;
    And : Operation ;
    Or : Operation ;
} ;
