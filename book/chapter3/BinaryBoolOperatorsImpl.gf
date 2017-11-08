concrete BinaryBoolOperatorsImpl of BinaryBoolOperators = {
    param
        Bool = False | True ;
    lincat
        Statement = Str;
        Operation = Str;
        BoolV = Bool;
    lin
      Say b1 b2 op = (bool2str b1) ++ op ++ (bool2str b2) ++ "=" ++ bool2str ((operation2Op op) b1 b2) ;
      Apply b1 b2 op = (operation2Op op) b1 b2 ;
      And = "and" ;
      Or = "or" ;
    oper
    --Conjunction, Disjunction : Bool -> Bool -> Bool;
        and : Bool -> Bool -> Bool =
            \b1,b2 -> table {True => table {b => b} ;
                             False => table {_ => False}} ! b1 ! b2;
        or : Bool -> Bool -> Bool =
           \b1,b2 -> table {True => table {_ => True} ;
                            False => table {b => b} } ! b1 ! b2;
        bool2str : Bool -> Str =
                 \b -> table {True => "True"; False => "False"} ! b;
        operation2Op : Str -> (Bool -> Bool -> Bool) =
                     \s -> table {"and" => and; "or" => or} ! s;
} ;
