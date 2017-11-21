abstract Discont = {
  cat 
    S ; Cl ; NP ; VP ; AP ; V ;
    -- It uses the category Cl of clauses to represent sentences in
    -- abstraction from whether they are used declaratively or as
    -- questions.
  fun
    DeclCl  : Cl -> S ;
    QuestCl : Cl -> S ;
    PredVP  : NP -> VP -> Cl ;
    StdVP : NP -> V -> Cl ;
    CompAP  : AP -> VP ;
    John : NP ;
    Old : AP ;
    Laugh : V ;
}
