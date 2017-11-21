-- Define some other inflection functions, e.g. for English nouns of
-- type fly - flies and Italian nouns of type vino - vini What are the
-- expected arguments of these functions?

oper
  yNoun : Str -> {s : Number => Str} =
        \word -> {s = table {Sg => word ; Pl => (init word) + "es"}} ;
  iNoun : Str -> {s : Number => Str} =
        \word -< {s = table {Sg => Word ; Pl => (init word) + "i"}};