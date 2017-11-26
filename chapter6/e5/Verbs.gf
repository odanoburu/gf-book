abstract Verbs = {
  cat
    VSub ; -- verb subcategorizations
    V VSub ;
    Comps VSub ; -- complement lists
    NP ;
    VP ;
  data
    V1 : VSub ;
    V2 : VSub ;
    V3 : VSub ;
    VS : VSub ;
  fun
    Complement : (vs : VSub) -> V vs -> Comps vs -> VP ;
    Empty      : Comps V1 ;
    EmptyS     : Comps VS ;
    John, Mary, Knife : NP ;
    mkCompsV2  : NP -> Comps V2 ;
    mkCompsV3  : NP -> NP -> Comps V3 ;
    mkV        : (v : VSub ) -> V v -> VP ;
    mkV2       : (v : VSub ) -> V v -> Comps v -> VP ;
    mkV3       : (v : VSub ) -> V v -> Comps v -> VP ;
    mkVS       : (v : VSub ) -> V v -> VP ;
    Play       : V V1 ;
    Love       : V V2 ;
    Kill       : V V3 ;
  def
    Complement V1 v _ = mkV V1 v ;
    Complement V2 v c = mkV2 V2 v c ;
    Complement V3 v c = mkV3 V3 v c ;
    Complement VS v _ = mkVS VS v ;
}
