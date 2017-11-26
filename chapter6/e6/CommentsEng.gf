--# -path=.:present

concrete CommentsEng of Comments = CommentsI with 
  (Syntax = SyntaxEng) ** open SyntaxEng, ParadigmsEng in {
  lin
    Italian   _ = mkAP (mkA "Italian") ;
    Expensive _ = mkAP (mkA "expensive") ;
    Elegant   _ = mkAP (mkA "elegant") ;
}
